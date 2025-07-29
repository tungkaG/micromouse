/*
 *         _
 *   /\/\ (_) ___ _ __ ___  _ __ ___   ___  _   _ ___  ___
 *  /    \| |/ __| '__/ _ \| '_ ` _ \ / _ \| | | / __|/ _ \
 * / /\/\ \ | (__| | | (_) | | | | | | (_) | |_| \__ \  __/
 * \/    \/_|\___|_|  \___/|_| |_| |_|\___/ \__,_|___/\___|
 *
 * Example program to showcase the Micromouse API for the demo mouse.
 *
 * File:   main.c
 *
 */

#include "UART.h"
#include "boot.h"
#include "configBits.h"
#include "encoders.h"
#include "globalTimer.h"
#include "leds.h"
#include "motors.h"
#include "sensors.h"
#include "switches.h"
#include "timers.h"


#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <stdbool.h>
#include <limits.h>

typedef enum { STOP, FORWARD, TURN_LEFT_90, TURN_RIGHT_90, TURN_180 } command_t;

typedef enum { FREE, WALL, UNKNOWN } wall_t;

typedef enum { UP, LEFT, DOWN, RIGHT } heading_t;

typedef enum { IDLE, EXPLORING_PATH_TO_GOAL, EXPLORING_TEMP_BEST_PATH, RETURN_TO_START, DRIVE_TO_GOAL } state_t;

#define FORWARD_SPEED 10.0
#define TURNING_SPEED 10.0
#define GRID_SIZE 6
#define START_X 0
#define START_Y 0
#define START_HEADING DOWN

typedef struct {
    float Kp;
    float Ki;
    float integral;
    float output_min;
    float output_max;
} PIController;

typedef struct {
    uint8_t x, y;
} Cell;


// offsets for surrounding cells (UP, LEFT, DOWN, RIGHT)
static const int dx[4] = { 0, -1, 0, 1 };
static const int dy[4] = { -1, 0, 1, 0 };
static int opposite[4] = { 2,  3, 0, 1 }; 

volatile float setpoint = 0.0f;  // target speed (rad/s)

PIController motorPI_left;
PIController motorPI_right;
volatile long startAngleLeft = 0;
volatile long startAngleRight = 0;


volatile int action_enabled = 0;
command_t curr_cmd = STOP;
state_t state = IDLE;

wall_t grid[GRID_SIZE][GRID_SIZE][4];
int dist[GRID_SIZE][GRID_SIZE];

Cell curr_cell = {START_X, START_Y}; // current grid positions (0 to GRID_SIZE-1)
Cell next_cell = {START_X, START_Y}; // Next cell to move to (0 to GRID_SIZE-1)
volatile heading_t curr_heading=START_HEADING;   // current heading (UP, LEFT, DOWN, RIGHT)


void resetGrid() {
    curr_cell = (Cell){START_X, START_Y};
    next_cell = (Cell){START_X, START_Y};
    curr_heading = START_HEADING;
    
    // init grid by setting all walls to unknown
    for (int i = 0; i < GRID_SIZE; i++) {
        for (int j = 0; j < GRID_SIZE; j++) {
            for (int k = 0; k < 4; k++) {
                grid[i][j][k] = UNKNOWN;
            }
        }
    }
    
    // set borders of maze to WALL
    for(int i=0;i<GRID_SIZE;i++){
        grid[0][i][UP] = WALL;
        grid[GRID_SIZE-1][i][DOWN] = WALL;
        grid[i][0][LEFT] = WALL;
        grid[i][GRID_SIZE-1][RIGHT] = WALL;
    }
    
    // set back of start cell (opposite of heading) to WALL
    grid[curr_cell.y][curr_cell.x][opposite[curr_heading]] = WALL;
}

void PI_Init(PIController *pi, float Kp, float Ki, float output_min, float output_max) {
    pi->Kp = Kp;
    pi->Ki = Ki;
    pi->integral = 0.0f;
    pi->output_min = output_min;
    pi->output_max = output_max;
}

float PI_Update(PIController *pi, float setpoint, float measurement) {
    float error = setpoint - measurement;

    // Proportional term
    float P = pi->Kp * error;

    // Integral term for fixed 10ms period
    pi->integral += pi->Ki * error * 0.01f;

    // Anti-windup: Clamp integral
    if (pi->integral > pi->output_max) pi->integral = pi->output_max;
    else if (pi->integral < pi->output_min) pi->integral = pi->output_min;

    float output = P + pi->integral;

    // Clamp final output
    if (output > pi->output_max) output = pi->output_max;
    else if (output < pi->output_min) output = pi->output_min;

    return output;
}
/*
void apply_motor_output(float new_percentage) {
    // Clamp and extract direction
    if (new_percentage > 100.0f) new_percentage = 100.0f;
    if (new_percentage < -100.0f) new_percentage = -100.0f;

    int direction = (new_percentage >= 0) ? 1 : -1;
    float pwm_duty = fabsf(new_percentage);
    
    if (direction >= 0) {
        LED4 = 1; // IN1 -> high
        LED7 = 0; // IN2 -> low -> clockwise (CW) rotation
        P1DC1 = (int) (pwm_duty*BATTERY_RATIO*MYPWM_MAX);
    } else {
        LED7 = 1; // IN2 -> high 
        LED4 = 0; // IN1 -> low -> counterclockwise (CCW) rotation
        P1DC1 = (int) (pwm_duty*BATTERY_RATIO*MYPWM_MAX);
    }
}
*/

/**
 * Routine to toggle LED1 using a timer. This functions signature matches the TimerCallback typedef from the timers.h file.
 * @return 1 to keep the timer running, if 0 is returned the timer will stop
 */
int toggle_led1(void)
{
    LED1 = !LED1;
    return 1; // return 1 to keep the timer running
}

/**
 * Routine to toggle LED2 using the button SW1. This functions signature matches the SwitchCallback typedef from the switches.h file.
 * Returns nothing.
 */
void toggle_led2(void)
{
    LED2 = !LED2;
}

/**
 * Routine to toggle LED3 using the UART RX interrupt. This functions signature matches the UARTCallback typedef from the UART.h file.
 */
void toggle_led3(unsigned int registerContent)
{
    LED3 = !LED3;
}

/**
 * Routine to toggle LED4 using the UART TX interrupt. This functions signature matches the UARTCallback typedef from the UART.h file.
 */
void toggle_led4(unsigned int registerContent)
{
    LED4 = !LED4;
}

// TODO: not working (?)
void uartReceiver(unsigned int rxData) {
    
    static char input[10];
    static int readInput = -1;
    static int decimalOccured = 0;
    // read data from UART like "<70.352>"
    if (rxData == '<' && readInput == -1) {	
        // clear current input and start reading;
        input[0] = '\0';
        readInput = 0;
        decimalOccured = 0;
    } else if ((rxData == '>' && readInput >= 0) || readInput >= 9) {
        // if we hit '>' or the input buffer is full,
        input[readInput] = '\0'; // null-terminate the string

        float value = atof(input); // convert string to float
        value = value / 100; // convert to percentage

        if (value < -1.0f || value > 1.0f) {
            // printf("Error: Value out of range (0.0 to 1.0)\n");
            char *errorMsg = "Error: PWM out of range.\n";
            UART_TXString(errorMsg); // send error message to UART
        } else {
            // P1DC1 = (int) (value*0.81*MYPWM_MAX);
            
            // Store to shared variable
            // value = value * 100;
            setpoint = value;
            
            char *msg = "SP to: ";
            
            char valueStr[10];
            sprintf(valueStr, "%6.4f", value); // format the float to 4 decimal places
            
            // putsUART1(msg); // send the message to UART
            // putsUART1(valueStr); // send the message to UART
            UART_TXFloat(value);

        }

        readInput = -1; // reset readInput for the next input

    } else if (readInput >= 0 && readInput < 9) {
        if ((rxData < '0' || rxData > '9') && (rxData != '.' || decimalOccured)) {
            char *errorMsg = "E: PWM input invalid.\n";
            UART_TXString(errorMsg); // send error message to UART
            readInput = -1;
            
            // Flush remaining characters until '>' or buffer empty
            while (U1STAbits.URXDA) {
                rxData = U1RXREG;
                if (rxData == '>') break; // flush until end of message
            }
        } else {
            if (rxData == '.') {
                decimalOccured = 1;
            }
            // store the character in the input buffer
            input[readInput++] = (char)rxData;
        }
    }
}

// checks if cell (x,y) has at least one UNKNOWN
bool has_unknown(uint8_t x, uint8_t y) {
    for (int d = 0; d < 4; d++) {
        if (grid[y][x][d] == UNKNOWN) {
            return true;
        }
    }
    return false;
}

// Precondition: next_cell is a direct neighbour of curr_cell
// Determines if mouse should turn or go forward to get (in the direction of) next cell
command_t translate_next_cell_to_cmd()
{
    heading_t want_h;
    int dx = next_cell.x - curr_cell.x;
    int dy = next_cell.y - curr_cell.y;
    if      (dx ==  0 && dy == -1) want_h = UP;
    else if (dx == -1 && dy ==  0) want_h = LEFT;
    else if (dx ==  1 && dy ==  0) want_h = RIGHT;
    else if (dx ==  0 && dy ==  1) want_h = DOWN;
    else {
        // invalid step
        return STOP;
    }

    if (want_h == curr_heading) {
        return FORWARD;
    }
    
    if ((curr_heading+1)%4 == want_h) {
        return TURN_LEFT_90;
    }
    
    // workaround for (curr_heading-1)%4
    if ((curr_heading+3)%4 == want_h) {
        return TURN_RIGHT_90;
    }
    
    return TURN_180;
}

// update grid at curr_cell with new sensor information
void update_cell(int d, wall_t w) {
    // mark this cell
    grid[curr_cell.y][curr_cell.x][d] = w;
    // mark neighbour too, if in bounds
    int nx = curr_cell.x + dx[d], ny = curr_cell.y + dy[d];
    if (nx >= 0 && nx < GRID_SIZE && ny >= 0 && ny < GRID_SIZE) {
        grid[ny][nx][opposite[d]] = w;
    }
}

// build a distance field around goals
void build_distance_field(Cell goals[4], int num_goals) {
    // initialize all distances to infinite
    for (int y=0; y<GRID_SIZE; y++)
        for (int x=0; x<GRID_SIZE; x++)
            dist[y][x] = INT_MAX;

    // BFS queue
    Cell queue[GRID_SIZE*GRID_SIZE];
    // queue_pointer keeps track of current queue element, queue_counter keeps track of total number of added cells
    int queue_pointer = 0, queue_counter = 0;
    
    // set goals to distance 0
    for (int i=0; i<num_goals; i++) {
        Cell g = goals[i];
        dist[g.y][g.x] = 0;
        queue[queue_counter] = g;
        queue_counter++;
    }

    // BFS
    while (queue_pointer < queue_counter) {
        Cell c = queue[queue_pointer];
        queue_pointer++;
        int cd = dist[c.y][c.x];
        for (int d=0; d<4; d++) {
            int nx = c.x + dx[d], ny = c.y + dy[d];
            // check if new cell is in bounds and not a wall
            if (nx<0 || nx>=GRID_SIZE || ny<0 || ny>=GRID_SIZE || grid[c.y][c.x][d] == WALL) continue;
            if (dist[ny][nx] > cd + 1) {
                dist[ny][nx] = cd + 1;
                queue[queue_counter] = (Cell){nx,ny};
                queue_counter++;
            }
        }
    }
}

// test if curr_cell is one of the goal cells
bool goal_reached(Cell *goals, int num_goals) {
    for (int i=0; i<num_goals; i++) {
        if (curr_cell.x == goals[i].x && curr_cell.y == goals[i].y) {
            return true;
        }
    }
    return false;
}

// in provisional_path[] we store the current best path from middle (goals) to start (provisional_path[0] is goal cell)
int calculate_path_to_goal(Cell *provisional_path) {
    int provisional_path_len = 0;

    // go from START_X, START_Y the fastest way to the first goal cell
    Cell curr_provisional = {START_X, START_Y};
    // inital heading when starting to goal will be facing a wall -> choose opposite of start heading
    heading_t provisional_heading = opposite[START_HEADING];
    
    while (dist[curr_provisional.y][curr_provisional.x] != 0) {
        // find next cell with distance one less
        int best_d = INT_MAX;
        heading_t best_dir = -1;
        Cell next_provisional = {0xFF, 0xFF}; // invalid cell
        for (int d=0; d<4; d++) {
            // start with current (provisional) heading + 1, such that current (provisional) heading is chosen as next cell (if multiple options have the same distance)
            int n_heading = (provisional_heading + 1 + d) % 4;
            int nx = curr_provisional.x + dx[n_heading], ny = curr_provisional.y + dy[n_heading];

            // check if new cell is in bounds and not a wall
            if (nx<0 || nx>=GRID_SIZE || ny<0 || ny>=GRID_SIZE || grid[curr_provisional.y][curr_provisional.x][n_heading] == WALL) continue;

            int cd = dist[ny][nx];
            // if current distance is better or equal than best_d (=giving priority to the last tested heading, which is our current (most desired) heading),
            // then we have a new best direction
            if (cd <= best_d) {
                best_d = cd;
                next_provisional = (Cell){nx, ny};
                best_dir = n_heading;
            }
        }
        if (next_provisional.x == 0xFF) {
            // no next cell found -> no path to goals found
            return 0;
        }
        
        provisional_path[provisional_path_len] = next_provisional;
        provisional_path_len++;
        curr_provisional = next_provisional;
        provisional_heading = best_dir; // update provisional heading to next cell's heading
    }

    // reverse provisional path to have path from goal to start
    for (int i=0; i<provisional_path_len/2; i++) {
        Cell tmp = provisional_path[i];
        provisional_path[i] = provisional_path[provisional_path_len-1-i];
        provisional_path[provisional_path_len-1-i] = tmp;
    }
    return provisional_path_len;
}

Cell find_unknown_in_provisional_path() {
    // new target is end of path that is temporarily planned from start to goal
    Cell *goals = (Cell[]){{2,2},{2,3},{3,2},{3,3}};
    int num_goals = 4;
    build_distance_field(goals, num_goals);

    Cell provisional_path[GRID_SIZE * GRID_SIZE];
    int provisional_path_len = calculate_path_to_goal(provisional_path);
    int provisional_path_counter = 0;

    // now in path[] we have the path from middle (goals) to start (provisional_path[0] is goal cell) -> find the last cell that has UNKNOWN walls
    for (; provisional_path_counter < provisional_path_len; provisional_path_counter++) {
        if (has_unknown(provisional_path[provisional_path_counter].x, provisional_path[provisional_path_counter].y)) {
            // provisional_path[provisional_path_counter] has UNKNOWN walls -> go to this cell next
            return provisional_path[provisional_path_counter];
        }
    }

    // no cell found with UNKNOWN walls -> next goal cell is start cell
    return (Cell){START_X, START_Y};
}

void get_new_best_direction(int *best_dir) {
    int best_d = INT_MAX;
    
    for (int d = 0; d < 4; d++) {
        // start with current heading + 1, such that current heading is chosen as next cell (if multiple options have the same distance)
        int n_heading = (curr_heading + 1 + d) % 4;
        int nx = curr_cell.x + dx[n_heading], ny = curr_cell.y + dy[n_heading];
        // check if new cell is in bounds and not a wall
        if (nx<0 || nx>=GRID_SIZE || ny<0 || ny>=GRID_SIZE || grid[curr_cell.y][curr_cell.x][n_heading] == WALL) continue;

        int cd = dist[ny][nx];
        // if current distance is better than best_d, or if it is equal and 
        // the cell has at least one UNKNOWN (in Explore or Return state)
        // or has no unknown walls (in Drive_to_Goal) to take paths that are already explored if possible
        // then we have a new best direction
        if (cd < best_d || (cd == best_d && (state == DRIVE_TO_GOAL ? !has_unknown(nx, ny) : has_unknown(nx, ny)))) {
            best_d = cd;
            *best_dir = n_heading;
        }
    }
    
    // no neighbor is reachable -> error
    if (best_d == INT_MAX) {
        *best_dir = -1;
    }
}

command_t nextCmd(wall_t left_wall, wall_t right_wall, wall_t front_wall) {
    if (curr_cell.x == next_cell.x && curr_cell.y == next_cell.y) {
        // reached next cell
        
        int best_dir = -1;
        Cell *goals;
        int num_goals = 0;
        switch (state) {
            case IDLE:
                toggle_led2();
                action_enabled = 0;
                return STOP;
                
                break;
            case EXPLORING_PATH_TO_GOAL:
                update_cell(curr_heading, front_wall);
                update_cell((curr_heading+1)%4, left_wall);
                update_cell((curr_heading+3)%4, right_wall);

                goals = (Cell[]){{2,2},{2,3},{3,2},{3,3}};
                num_goals = 4;

                if (goal_reached(goals, num_goals)) {
                    // new state is EXPLORING_TEMP_BEST_PATH
                    state = EXPLORING_TEMP_BEST_PATH;

                    goals = (Cell[]){find_unknown_in_provisional_path()};
                    // goals is either START_X/Y cell or the last cell in provisional_path with UNKNOWN walls
                    num_goals = 1;

                    if (goals[0].x == START_X && goals[0].y == START_Y) {
                        // no cell with UNKNOWN walls found -> new state is RETURN_TO_START
                        state = RETURN_TO_START;
                        // build distance field to START_X/Y
                    }
                    // else: build distance field to last cell in provisional_path with UNKNOWN walls
                }             
                break;
            case EXPLORING_TEMP_BEST_PATH:
                update_cell(curr_heading, front_wall);
                update_cell((curr_heading+1)%4, left_wall);
                update_cell((curr_heading+3)%4, right_wall);

                goals = (Cell[]){find_unknown_in_provisional_path()};
                // goals is either START_X/Y cell or the last cell in provisional_path with UNKNOWN walls
                num_goals = 1;

                if (goals[0].x == START_X && goals[0].y == START_Y) {
                    // no cell with UNKNOWN walls found -> new state is RETURN_TO_START
                    state = RETURN_TO_START;
                    toggle_led2();
                    // build distance field to START_X/Y
                }
                // else: build distance field to last cell in provisional_path with UNKNOWN walls
                break;
            case RETURN_TO_START:
                update_cell(curr_heading, front_wall);
                update_cell((curr_heading+1)%4, left_wall);
                update_cell((curr_heading+3)%4, right_wall);
                

                goals = (Cell[]){{START_X,START_Y}};
                num_goals = 1;

                if (goal_reached(goals, num_goals)) {
                    // returned to start, new state is DRIVE_TO_GOAL
                    toggle_led2();
                    state = DRIVE_TO_GOAL;
                    // build distance field to goals 
                    goals = (Cell[]){{2,2},{2,3},{3,2},{3,3}};
                    num_goals = 4;
                }                
                break;
            case DRIVE_TO_GOAL:
                // do this just in case we get stuck, but actually we should be able to not update path
                update_cell(curr_heading, front_wall);
                update_cell((curr_heading+1)%4, left_wall);
                update_cell((curr_heading+3)%4, right_wall);
                
                goals = (Cell[]){{2,2},{2,3},{3,2},{3,3}};
                num_goals = 4;

                if (goal_reached(goals, num_goals)) {
                    // driven to goal -> go back to IDLE state
                    state = IDLE;
                    toggle_led2();
                    action_enabled = 0;
                    // reset grid
                    resetGrid();
                    return STOP;
                }                
                break;
            default:
                toggle_led2();
                action_enabled = 0;                
        }
        // create distance fields with distances to specified goals
        build_distance_field(goals, num_goals);
        
        // stores the new best_dir (UP, LEFT, DOWN, RIGHT) in best_dir
        get_new_best_direction(&best_dir);

        // no neighbor is reachable -> error
        if (best_dir < 0) {
            toggle_led2();
            state = IDLE;
            action_enabled = 0;
            return STOP;
        }

        // update next_cell
        next_cell = (Cell){curr_cell.x + dx[best_dir], curr_cell.y + dy[best_dir]};
    }

    // translate_next_cell_to_cmd generates next command to get from curr_cell to next_cell    
    return translate_next_cell_to_cmd();
}

int stream_sensor_data(void)
{
    LED1 = !LED1;
    static long t_left_old = 0;
    static long t_right_old = 0;
    static long t_left_initial = 0;
    static long t_right_initial = 0;
    
    static long initial_counter = 0;
    static int last_forward = -1;
    

    // calculate current velocity of left wheel in rad/s
    long t_left = encoders_getTicksLeft();
    float curr_rad_left = 3.141592 *2* ((t_left-t_left_old)*100) / (33*4*16);
    t_left_old = t_left;
    
    // calculate current velocity of right wheel in rad/s
    long t_right = encoders_getTicksRight();
    float curr_rad_right = 3.141592 *2* ((t_right-t_right_old)*100) / (33*4*16);
    t_right_old = t_right;
    
    // read distances
    float left_dist = sensors_readLeft();
    float right_dist = sensors_readRight();
    float front_dist = sensors_readFront();
    
    // read angles of left and right wheel
    long curr_angle_left_deg = encoders_getAngleLeftDegrees();
    long curr_angle_right_deg = encoders_getAngleRightDegrees();
    
    // new setpoints for left and right wheel
    float current_setpoint_left = 0.0;
    float current_setpoint_right = 0.0;

    // stop the mouse unless we pressed the switch to start it
    if (!action_enabled) {
        curr_cmd = STOP;
        initial_counter = 0;
        last_forward = -1;
    }
    
    wall_t front_wall = front_dist > 130 ? FREE : WALL;
    wall_t left_wall = left_dist > 130 ? FREE : WALL;
    wall_t right_wall = right_dist > 130 ? FREE : WALL;

    
    switch (curr_cmd) {
        case STOP:
            if (action_enabled) {
                if (initial_counter < 50) {
                    // stop motors (and wait for 500ms)
                    initial_counter++;
                    current_setpoint_left = 0.0;
                    current_setpoint_right = 0.0;
                } else {
                    // next action possible:
                    curr_cmd = nextCmd(left_wall, right_wall, front_wall);
                    setpoint = FORWARD_SPEED;
                    startAngleLeft = curr_angle_left_deg;
                    startAngleRight = curr_angle_right_deg;
                    t_left_initial = t_left;
                    t_right_initial = t_right;
                    last_forward = -1;
                    // reset initial_counter
                    initial_counter = 0;
                }
            }
            break;
        case FORWARD:
            // stop if wall is reached or 18cm are covered
            if (front_dist < 40 || (t_left-t_left_initial) > 2000) {
                if (last_forward == 0) {
                    // continue driving forward -> reset t_left_initial and t_right_initial
                    setpoint = FORWARD_SPEED;
                    t_left_initial = t_left;
                    t_right_initial = t_right;
                    // if we are to close to the wall, brake opposite wheel and if we are to far away from a wall, brake this wheel
                    current_setpoint_left = (left_dist > 50 && left_dist < 100) || right_dist < 35 ? setpoint*0.85 : setpoint;
                    current_setpoint_right = (right_dist > 50 && right_dist < 100) || left_dist < 35 ? setpoint*0.85 : setpoint;
                } else {
                    // this was last forward -> go to STOP case
                    curr_cmd = STOP;
                    initial_counter = 0;
                }
                // reset last_forward 
                last_forward = -1;
            } else if ((t_left-t_left_initial) > 1616 && last_forward != 0) {
                // start braking early (from 1616 to 2016 ticks) if this is last forward cmd for smooth stopping
                if (last_forward == -1) {
                    // not yet checked if current forward movement is the last forward before a direction change
                    
                    // update curr position
                    curr_cell = next_cell;
                    
                    if (nextCmd(left_wall, right_wall, front_wall) == FORWARD) {
                        // continue driving forward (skip this if branch in next timer interrupt)
                        toggle_led4(1);
                        last_forward = 0;
                    } else {
                        // this is the last_forward, start braking
                        toggle_led3(1);
                        last_forward = 1;
                    }
                }
                
                // if we are to close to the wall, brake opposite wheel and if we are to far away from a wall, brake this wheel
                current_setpoint_left = (left_dist > 50 && left_dist < 100) || right_dist < 35 ? setpoint*0.85 : setpoint;
                current_setpoint_right = (right_dist > 50 && right_dist < 100) || left_dist < 35 ? setpoint*0.85 : setpoint;
  
                if (last_forward == 1) {
                    // between 400 (=weak breaking) and 16 (=strong breaking)
                    float deceleration_factor = 2016.0 - (t_left-t_left_initial); 
                    current_setpoint_left = 0.0025 * deceleration_factor * current_setpoint_left;
                        current_setpoint_right = 0.0025 * deceleration_factor * current_setpoint_right;
                }
            
            } else {
                // if we are to close to the wall, brake opposite wheel and if we are to far away from a wall, brake this wheel
                current_setpoint_left = (left_dist > 50 && left_dist < 100) || right_dist < 35 ? setpoint*0.85 : setpoint;
                current_setpoint_right = (right_dist > 50 && right_dist < 100) || left_dist < 35 ? setpoint*0.85 : setpoint;
                if (initial_counter < 50) {
                    // only apply a fraction ((initial_counter/50) * setpoint) of the speed in first 500ms
                    current_setpoint_left = 0.02 * current_setpoint_left * initial_counter;
                    current_setpoint_right = 0.02 * current_setpoint_right * initial_counter;
                    initial_counter++;
                } else if (front_dist < 78) {
                    // start braking early (from 78mm to 38mm to the wall) for smooth stopping
                    current_setpoint_left = 0.025 * current_setpoint_left * (front_dist-38);
                    current_setpoint_right = 0.025 * current_setpoint_right * (front_dist-38);
                }
            }
            break;
        case TURN_LEFT_90:
            // left wheel spinning backward: startAngle - 135 = endAngle
            if (curr_angle_left_deg <= startAngleLeft - 135 && curr_angle_right_deg >= startAngleRight + 135) {
                // 90° to left finished
                curr_cmd = STOP;
                curr_heading = (curr_heading + 1)%4;
            } else {
                current_setpoint_left = -TURNING_SPEED;
                current_setpoint_right = TURNING_SPEED;
            }
            break;
        case TURN_RIGHT_90:
            // left wheel spinning forward: startAngle + 135 = endAngle
            if (curr_angle_left_deg >= startAngleLeft + 135 && curr_angle_right_deg <= startAngleRight - 135) {
                // 90° to right finished
                curr_cmd = STOP;
                // same as curr_heading - 1
                curr_heading = (curr_heading + 3)%4;
            } else {
                current_setpoint_left = TURNING_SPEED;
                current_setpoint_right = -TURNING_SPEED;
            }
            break;
        case TURN_180:
            // left wheel spinning backward: startAngle - 270 = endAngle
            if (curr_angle_left_deg <= startAngleLeft - 270) {
                // 180° finished
                curr_cmd = STOP;
                curr_heading = (curr_heading+2)%4;
            } else {
                current_setpoint_left = -TURNING_SPEED;
                current_setpoint_right = TURNING_SPEED;
            }
            break;
        default:
            curr_cmd = STOP;
    }
    

    float new_percentage_left = PI_Update(&motorPI_left, current_setpoint_left, curr_rad_left);
    motors_setMotorLeft(new_percentage_left);
    // apply_motor_output(new_percentage_left / 100.0);   // TODO: Drive H-bridge with signed % output
    
    float new_percentage_right = PI_Update(&motorPI_right, current_setpoint_right, curr_rad_right);
    motors_setMotorRight(new_percentage_right);
    // apply_motor_output(new_percentage_right / 100.0);   // TODO: Drive H-bridge with signed % output
    
    unsigned int a = 10;
    int8_t b = 5;
    long c = 20;
    
    UART_TXint8(FRAME_MARKER); // start of visualizer frame
    UART_TXint8(b);
    UART_TXint8(b);
    UART_TXint8(curr_cmd);
    UART_TXUInt(a);
    UART_TXUInt(a);
    UART_TXUInt(a);
    UART_TXLong(c);
    UART_TXLong(c);
    UART_TXFloat(left_dist);
    UART_TXFloat(right_dist);
    UART_TXFloat(new_percentage_left*100);
    UART_TXFloat(new_percentage_right*100);
    UART_TXFloat(curr_rad_left);
    UART_TXFloat(curr_rad_right);
    UART_TXLong(t_left);
    UART_TXLong(t_right);
    UART_TXint8(~FRAME_MARKER); // end of visualizer frame (one's complement of start marker)
/*
    UART_TXint8(FRAME_MARKER); // start of visualizer frame
    UART_TXint8(sensors_readFront());
    UART_TXint8(sensors_readLeft());
    UART_TXint8(sensors_readRight());
    UART_TXUInt(sensors_readFrontRaw());
    UART_TXUInt(sensors_readLeftRaw());
    UART_TXUInt(sensors_readRightRaw());
    UART_TXLong(encoders_getAngleLeftDegrees());
    UART_TXLong(encoders_getAngleRightDegrees());
    UART_TXFloat(encoders_getAngleLeftRadians());
    UART_TXFloat(encoders_getAngleRightRadians());
    UART_TXFloat(encoders_getRPMLeft());
    UART_TXFloat(new_percentage*100);
    UART_TXFloat(curr_rad);
    UART_TXFloat(encoders_getRadPerSecRight());
    UART_TXLong(encoders_getTicksLeft());
    UART_TXLong(encoders_getTicksRight());
    UART_TXint8(~FRAME_MARKER); // end of visualizer frame (one's complement of start marker)
    */
    
    return 1;                   // return 1 to keep the timer running
}

/* Prints the current time since boot in ms to UART, formatted in ASCII */
int transmit_time(void)
{
    char timestring[20];
    sprintf(timestring, "Time: %lu\n", globalTimer_getTimeInUS() / 1000); // devide by 1000 to convert to ms
    UART_TXString(timestring);
    return 1;   // return 1 for timer to continue, return 0 for timer to stop
}

/**
 * Routine to toggle the motors using the button SW1. This functions signature matches the SwitchCallback typedef from the switches.h file.
 */
void toggle_motors(void)
{
    state = action_enabled ? IDLE : EXPLORING_PATH_TO_GOAL;
    action_enabled = action_enabled ? 0 : 1;
    
}

/* MAIN FUNCTION */

int main()
{
    LED1 = LEDOFF;
    LED2 = LEDOFF;
    LED3 = LEDOFF;
    LED4 = LEDOFF;

    // initializes the peripherals, must be called first
    boot_setup();

    // initializes the UART1 module with a baud rate of 115200
    UART_setup(115200);
    
    PI_Init(&motorPI_left, 0.09f, 2.7f, -1.0f, 1.0f);
    PI_Init(&motorPI_right, 0.09f, 2.7f, -1.0f, 1.0f);
    
    resetGrid();
    
    // Example timer usage, 419ms is max value
    timers_initTimerInMS(1, 10);
    timers_registerTimerCallback(1, &stream_sensor_data);
    timers_startTimer(1);

    // test switches
    switches_registerSW1Callback(&toggle_motors);

    // test UART callbacks
    UART_registerRX1Callback(&toggle_led3);
    UART_registerTX1Callback(&uartReceiver);


    // infinite loop
    while (1) {}
    return 0;
}