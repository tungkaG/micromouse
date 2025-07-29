/**
 * @file highLevelPlanning.h
 * @brief This file contains the functions for the highLevelPlanning
*/
#ifndef HIGH_LEVEL_PLANNING_H
#define HIGH_LEVEL_PLANNING_H

#include <stddef.h>
#include <xc.h> // include processor files - each processor file is guarded.

typedef enum { STOP, FORWARD, TURN_LEFT_90, TURN_RIGHT_90, TURN_180 } command_t;

typedef enum { FREE, WALL, UNKNOWN } wall_t;

typedef enum { UP, LEFT, DOWN, RIGHT } heading_t;

typedef enum { IDLE, EXPLORING_PATH_TO_GOAL, EXPLORING_TEMP_BEST_PATH, RETURN_TO_START, DRIVE_TO_GOAL } state_t;

#define GRID_SIZE 6
#define START_X 0
#define START_Y 0
#define START_HEADING DOWN

typedef struct {
    uint8_t x, y;
} Cell;

extern int action_enabled;
extern command_t curr_cmd;
extern state_t state;
extern Cell curr_cell;
extern Cell next_cell;
extern heading_t curr_heading;
extern wall_t grid[GRID_SIZE][GRID_SIZE][4];


void resetGrid();

command_t nextCmd(wall_t left_wall, wall_t right_wall, wall_t front_wall);

#endif	/* HIGH_LEVEL_PLANNING_H */

