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

typedef enum { STOP, FORWARD, TURN_LEFT_90, TURN_RIGHT_90, TURN_180 } command_t;

typedef enum { FREE, WALL, UNKNOWN } wall_t;

typedef enum { UP, LEFT, DOWN, RIGHT } heading_t;

typedef enum { IDLE, EXPLORING, RETURN_TO_START, DRIVE_TO_GOAL } state_t;

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

// A* node
typedef struct {
    Cell    c;
    int     g, h, f;
    int     parent_idx;   // index into open[] of parent
} Node;


// offsets for surrounding cells (UP, LEFT, DOWN, RIGHT)
static const int dx[4] = { 0, -1, 0, 1 };
static const int dy[4] = { -1, 0, 1, 0 };
static int opposite[4] = { 2,  3, 0, 1 }; 

volatile float setpoint = 0.0f;  // target speed (rad/s)
PIController motorPI_left;
PIController motorPI_right;
command_t curr_cmd = STOP;
volatile long startAngleLeft = 0;
volatile long startAngleRight = 0;
volatile int action_enabled = 0;

wall_t grid[GRID_SIZE][GRID_SIZE][4];
volatile int forward_counter = 0;
volatile int forward_counts = 0;

volatile uint8_t curr_x=START_X, curr_y=START_Y; // current grid positions (0 to GRID_SIZE-1)
volatile heading_t curr_heading=START_HEADING;   // current heading (UP, LEFT, DOWN, RIGHT)
state_t state = IDLE;

volatile int path_len = 0;
volatile int path_counter = 0;
Cell path[GRID_SIZE * GRID_SIZE];

void resetGrid() {
    path_len = 0;
    path_counter = 0;
    curr_x = START_X;
    curr_y = START_Y;
    curr_heading = START_HEADING;
    
    // init grid
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
    grid[curr_y][curr_x][opposite[curr_heading]] = WALL;
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

bool find_nearest_unknown(Cell *out_path) {
    bool visited[GRID_SIZE][GRID_SIZE] = {{ false }};
    Cell queue[GRID_SIZE * GRID_SIZE];
    // queue_pointer keeps track of current queue element, queue_counter keeps track of total number of added cells
    int queue_pointer = 0, queue_counter = 0;
    
    // store from which cell we reached this cell
    Cell parent[GRID_SIZE][GRID_SIZE];  

    // add curr cell to queue
    queue[queue_counter] = (Cell){ curr_x, curr_y };
    queue_counter++;
    visited[curr_y][curr_x] = true;
    parent[curr_y][curr_x] = (Cell){ 0xFF, 0xFF }; // mark start position

    // BFS
    while (queue_pointer < queue_counter) {
        Cell c = queue[queue_pointer];
        queue_pointer++;
        
        // check if cell c has UNKNOWN walls
        if (has_unknown(c.x, c.y)) {
            int len = 0;
            Cell curr = c;
            
            // step back trough parents until start pos (but dont add start pos to out_path)
            while (parent[curr.y][curr.x].x != 0xFF) {
                out_path[len] = curr;
                len++;
                curr = parent[curr.y][curr.x];
            }
            
            
            // revert array to have path from curr cell to target cell
            for (int i = 0; i < len/2; ++i) {
                Cell tmp = out_path[i];
                out_path[i] = out_path[len-1-i];
                out_path[len-1-i] = tmp;
            }
            path_len = len;
            
            return true;
        }
        // else: add all neighbours to the queue
        for (int d = 0; d < 4; ++d) {
            // explore neighbours starting with cell in curr_heading direction
            int new_heading = (curr_heading+d)%4;
            int nx = c.x + dx[new_heading];
            int ny = c.y + dy[new_heading];
            // check if new cell is in bounds and not visited and has no wall 
            if (nx >= 0 && nx < GRID_SIZE && ny >= 0 && ny < GRID_SIZE && !visited[ny][nx] && grid[c.y][c.x][new_heading] != WALL) {
                visited[ny][nx] = true;
                queue[queue_counter] = (Cell){ (uint8_t)nx, (uint8_t)ny };
                queue_counter++;
                parent[ny][nx] = c;
            }
        }
    }
    // no cell found
    path_len = 0;
    return false;
}


// x_next and y_next should be direct neighbours of curr_x and curr_y
// next_move determines if mouse should turn or go forward to get (in the direction of) next cell
command_t next_move(int x_next, int y_next)
{
    heading_t want_h;
    int dx = x_next - curr_x;
    int dy = y_next - curr_y;
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

void updateCell(int d, wall_t w) {
    // mark this cell
    grid[curr_y][curr_x][d] = w;
    // mark neighbour, if in bounds
    int nx = curr_x + dx[d], ny = curr_y + dy[d];
    if (nx >= 0 && nx < GRID_SIZE && ny >= 0 && ny < GRID_SIZE) {
        grid[ny][nx][opposite[d]] = w;
    }
}

// Min?heap of indices into open[]
static int  heap[GRID_SIZE*GRID_SIZE];
static int  heap_size = 0;

// open and closed lists
static Node open_list[GRID_SIZE*GRID_SIZE];
static bool closed[GRID_SIZE][GRID_SIZE];

// helpers for heap
static void heap_push(int idx) {
    int h = heap_size++;
    heap[h] = idx;
    while (h > 0) {
        int p = (h-1)/2;
        if (open_list[heap[p]].f <= open_list[heap[h]].f) break;
        int tmp = heap[p]; heap[p] = heap[h]; heap[h] = tmp;
        h = p;
    }
}
static int heap_pop(void) {
    int ret = heap[0];
    heap[0] = heap[--heap_size];
    int h = 0;
    while (1) {
        int l = 2*h+1, r = 2*h+2, best = h;
        if (l < heap_size &&
            open_list[heap[l]].f < open_list[heap[best]].f) best = l;
        if (r < heap_size &&
            open_list[heap[r]].f < open_list[heap[best]].f) best = r;
        if (best==h) break;
        int tmp = heap[h]; heap[h] = heap[best]; heap[best] = tmp;
        h = best;
    }
    return ret;
}

// Manhattan heuristic
static int manh(Cell a, Cell b) {
    return abs(a.x - b.x) + abs(a.y - b.y);
}

/**
 * Runs A* on the global grid from curr cell to goal cell by filling out_path[0..out_len-1].
 * If no path found, returns false.
 */
bool astar_path(Cell goal, Cell *out_path, int *out_len) {
    // clear
    heap_size = 0;
    for(int y=0;y<GRID_SIZE;y++) for(int x=0;x<GRID_SIZE;x++) closed[y][x]=false;
    int open_count = 0;
    
    Cell start = {curr_x, curr_y};

    // push start
    open_list[open_count] = (Node){ .c=start,
                                     .g=0,
                                     .h=manh(start,goal),
                                     .f=manh(start,goal),
                                     .parent_idx = -1 };
    heap_push(open_count++);
    
    while (heap_size>0) {
        int idx = heap_pop();
        Node  cur = open_list[idx];
        if (closed[cur.c.y][cur.c.x]) continue;
        closed[cur.c.y][cur.c.x] = true;
        
        // reached goal?
        if (cur.c.x==goal.x && cur.c.y==goal.y) {
            // reconstruct
            int len = 0;
            for (int i=idx; i!=-1; i = open_list[i].parent_idx) {
                out_path[len++] = open_list[i].c;
            }
            // discard start cell
            len--;
            
            // reverse
            for (int i=0; i<len/2; i++) {
                Cell tmp = out_path[i];
                out_path[i] = out_path[len-1-i];
                out_path[len-1-i] = tmp;
            }
            *out_len = len;
            return true;
        }
        
        // expand neighbors
        for (int d=0; d<4; d++) {
            int nx = cur.c.x + dx[d];
            int ny = cur.c.y + dy[d];
            if (nx<0||nx>=GRID_SIZE||ny<0||ny>=GRID_SIZE) continue;
            // blocked?
            if (grid[cur.c.y][cur.c.x][d] == WALL) continue;
            if (closed[ny][nx]) continue;
            
            int g2 = cur.g + 1;
            int h2 = manh((Cell){nx,ny}, goal);
            int f2 = g2 + h2;
            
            // add to open
            open_list[open_count] = (Node){
                .c = {nx,ny},
                .g = g2,
                .h = h2,
                .f = f2,
                .parent_idx = idx
            };
            heap_push(open_count++);
        }
    }
    *out_len = GRID_SIZE*GRID_SIZE;
    return false;
}

command_t nextCmd(wall_t left_wall, wall_t right_wall, wall_t front_wall) {

    if (path_counter == path_len) {
        // reached target cell
        switch (state) {
            case IDLE:
                toggle_led2();
                action_enabled = 0;
                break;
            case EXPLORING:
                updateCell(curr_heading, front_wall);
                updateCell((curr_heading+1)%4, left_wall);
                updateCell((curr_heading+3)%4, right_wall);

                // find path to nearest cell with at least one unknown wall
                bool found_cell = find_nearest_unknown(path);
                path_counter = 0;

                if (found_cell) {
                    // drive to cell
                    toggle_led3(1);
                } else {
                   // finished exploring
                    toggle_led2();
                    
                    // calc path to start position
                    Cell goal = {START_X,START_Y};
                    int path_len_to_goal = 0;
                    bool found_path = astar_path(goal, path, &path_len_to_goal);
                    path_len = path_len_to_goal;
                    if (found_path) {
                        // drive to start cell
                        toggle_led3(1);
                    } else {
                       // error for path planning
                        toggle_led2();
                    }
                    state = RETURN_TO_START;
                }
                break;
            case RETURN_TO_START: {
                // successfully returned to start
                Cell path0[GRID_SIZE*GRID_SIZE];
                int  path_len0 = 0;
                Cell goal0 = {3,3};
                Cell path1[GRID_SIZE*GRID_SIZE];
                int  path_len1 = 0;
                Cell goal1 = {2,2};
                Cell path2[GRID_SIZE*GRID_SIZE];
                int  path_len2 = 0;
                Cell goal2 = {2,3};
                Cell path3[GRID_SIZE*GRID_SIZE];
                int  path_len3 = 0;
                Cell goal3 = {3,2};
                // calculate Astar paths to each possible goal
                bool found_path0 = astar_path(goal0, path0, &path_len0);
                bool found_path1 = astar_path(goal1, path1, &path_len1);
                bool found_path2 = astar_path(goal2, path2, &path_len2);
                bool found_path3 = astar_path(goal3, path3, &path_len3);
                
                Cell *paths[4]     = { path0,   path1,   path2,   path3   };
                // Array of their lengths
                int   lengths[4]      = { path_len0, path_len1, path_len2, path_len3 };
                bool   paths_success[4]      = { found_path0, found_path1, found_path2, found_path3 };
                int   best_len = -1;
                int   best_i   = -1;

                // find index of shortest successfully found path
                for (int i = 0; i < 4; i++) {
                    if (paths_success[i] && lengths[i] > 0 && (best_len < 0 || lengths[i] < best_len)) {
                        best_len = lengths[i];
                        best_i   = i;
                    }
                }

                if (best_i < 0) {
                    // error for path planning to goal
                    toggle_led2();
                    path_len = 0;
                } else {
                    // copy it to path
                    for (int j = 0; j < best_len; j++) {
                        path[j] = paths[best_i][j];
                    }
                    path_len = lengths[best_i];
                }
                
                path_counter = 0;
                state = DRIVE_TO_GOAL;
                break;
            }
            case DRIVE_TO_GOAL:
                // driven to goal -> go back to IDLE state
                state = IDLE;
                toggle_led2();
                action_enabled = 0;
                // reset grid
                resetGrid();
                break;
            default:
                toggle_led2();
                action_enabled = 0;                
        } 
    }

    // next_move generates next command to get from curr_x/y to next path cell
    command_t cmd = next_move(path[path_counter].x, path[path_counter].y);
    
    return cmd;
}

int stream_sensor_data(void)
{
    LED1 = !LED1;
    static long t_left_old = 0;
    static long t_right_old = 0;
    static long t_left_initial = 0;
    static long t_right_initial = 0;
    
    static long initial_counter = 0;
    

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
    }
    
    wall_t front_wall = front_dist > 100 ? FREE : WALL;
    wall_t left_wall = left_dist > 100 ? FREE : WALL;
    wall_t right_wall = right_dist > 100 ? FREE : WALL;

    
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
                    /*
                    // random exploration
                    if (front_dist > 100) {
                        // front is available
                        setpoint = FORWARD_SPEED;
                        curr_cmd = FORWARD;
                    } else if (left_dist > 100) {
                        // left is available
                        curr_cmd = TURN_LEFT_90;
                        startAngleLeft = curr_angle_left_deg;
                        startAngleRight = curr_angle_right_deg;
                    } else if (right_dist > 100) {
                        // right is available
                        curr_cmd = TURN_RIGHT_90;
                        startAngleLeft = curr_angle_left_deg;
                        startAngleRight = curr_angle_right_deg;
                    } else {
                        // no path available -> turn 180°
                        curr_cmd = TURN_180;
                        startAngleLeft = curr_angle_left_deg;
                        startAngleRight = curr_angle_right_deg;
                    }
                     * */
                    // reset initial_counter
                    initial_counter = 0;
                }
            }
            break;
        case FORWARD:
            // stop if wall is reached or 18cm are covered
            if (front_dist < 40 || (t_left-t_left_initial) > 2000) {
                curr_x = path[path_counter].x;
                curr_y = path[path_counter].y;
                path_counter++;
                curr_cmd = nextCmd(left_wall, right_wall, front_wall);
                if (curr_cmd == FORWARD) {
                    // continue driving forward
                    setpoint = FORWARD_SPEED;
                    t_left_initial = t_left;
                    t_right_initial = t_right;
                    // if we are to close to the wall, brake opposite wheel and if we are to far away from a wall, brake this wheel
                    current_setpoint_left = (left_dist > 50 && left_dist < 100) || right_dist < 35 ? setpoint*0.85 : setpoint;
                    current_setpoint_right = (right_dist > 50 && right_dist < 100) || left_dist < 35 ? setpoint*0.85 : setpoint;
                } else {
                    // stop mouse and let curr_cmd be calculated again in STOP case
                    curr_cmd = STOP;
                    initial_counter = 0;
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
    UART_TXint8(path_len);
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
    // static int running = 0;
    /*
    // switch curr mode with button click
    running = (running + 1) % 5;
    switch (running) {
        case 0:
            curr_cmd = STOP;
            break;
        case 1:
            curr_cmd = FORWARD;
            setpoint = 10.0;
            break;
        case 2:
            curr_cmd = TURN_LEFT_90;
            startAngleLeft = encoders_getAngleLeftDegrees();
            break;
        case 3:
            curr_cmd = TURN_RIGHT_90;
            startAngleLeft = encoders_getAngleLeftDegrees();
            break;
        case 4:
            curr_cmd = TURN_180;
            startAngleLeft = encoders_getAngleLeftDegrees();
            break;
    }
     * */
    state = action_enabled ? IDLE : EXPLORING;
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