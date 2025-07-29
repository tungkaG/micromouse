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

#include "highLevelPlanning.h"

#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#define TURNING_SPEED 10.0
// #define FORWARD_SPEED 10.0
volatile int FORWARD_SPEED = 10.0;  // to make it editable via the UART Receive

typedef struct {
    float Kp;
    float Ki;
    float integral;
    float output_min;
    float output_max;
} PIController;

volatile float setpoint = 0.0f;  // target speed (rad/s)
PIController motorPI_left;
PIController motorPI_right;
volatile long startAngleLeft = 0;
volatile long startAngleRight = 0;

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

void uartReceiver(unsigned int rxData) {
        
    static char input[10];
    static int readInput = -1;
    static int decimalOccured = 0;
    // read data from UART like "<15.352>"
    if (rxData == '<' && readInput == -1) {	
        // clear current input and start reading;
        input[0] = '\0';
        readInput = 0;
        decimalOccured = 0;
    } else if ((rxData == '>' && readInput >= 0) || readInput >= 9) {
        // if we hit '>' or the input buffer is full,
        input[readInput] = '\0'; // null-terminate the string

        float value = atof(input); // convert string to float
        
        // to set setpoint in % between -1.0 and 1.0
        /*
        value = value / 100; // convert to percentage

        if (value < -1.0f || value > 1.0f) {
            // printf("Error: Value out of range (0.0 to 1.0)\n");
            char *errorMsg = "Error: PWM out of range.\n";
            // UART_TXString(errorMsg); // send error message to UART
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
            // UART_TXFloat(value);

        }
         * */
        
        if (value >= 0.1f && value <= 18.0f) {
            // update FORWARD_SPEED (in rad/s)
            FORWARD_SPEED = value;
        }

        readInput = -1; // reset readInput for the next input

    } else if (readInput >= 0 && readInput < 9) {
        if ((rxData < '0' || rxData > '9') && (rxData != '.' || decimalOccured)) {
            // invalid input (no digit or decimal point)
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

// send curr_cell and grid (down and right walls of each cell) over UART
void uart_print_grid(void) {
    char line[32];
    
    // send curr_cell
    int n = snprintf(line, sizeof(line), "POS %u %u %u\nNEXT %u %u\n", curr_cell.x, curr_cell.y, curr_heading, next_cell.x, next_cell.y);
    if (n > 0) UART_TXString(line);

    // for each row:
    for (int y = 0; y < GRID_SIZE; y++) {
        // first send all DOWNS of row y, then all RIGHTS of row y
        for (int d = DOWN; d <= RIGHT; d++) {
            int idx = 0;
            for (int x = 0; x < GRID_SIZE; x++) {
                wall_t w = grid[y][x][d];
                line[idx++] = (w == WALL   ? '#'
                              : w == FREE   ? '.'
                                            : '?');
            }
            // append new line + null
            line[idx++] = '\n';
            line[idx]   = '\0';
            UART_TXString(line);
        }

        // blank separator
        UART_TXString("\n");
    }
    // final extra blank line
    UART_TXString("\n");
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
                    
                    // print grid while we are waiting (but make sure that setpoint is already 0 -> initial_counter == 0 and not 1)
                    if (initial_counter == 1) uart_print_grid();
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
    UART_registerRX1Callback(&uartReceiver);

    // infinite loop
    while (1) {}
    return 0;
}