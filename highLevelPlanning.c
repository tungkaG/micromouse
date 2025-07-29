/*
 * File:   highLevelControl.c
 * Author: daniel
 *
 * Created on July 10, 2025, 6:00 PM
 */


#include "highLevelPlanning.h"
#include "xc.h"
#include "leds.h"
#include <stdbool.h>
#include <limits.h>

// offsets for surrounding cells (UP, LEFT, DOWN, RIGHT)
static const int dx[4] = { 0, -1, 0, 1 };
static const int dy[4] = { -1, 0, 1, 0 };
static int opposite[4] = { 2,  3, 0, 1 }; 

int action_enabled = 0;
command_t curr_cmd = STOP;
state_t state = IDLE;

wall_t grid[GRID_SIZE][GRID_SIZE][4];
int dist[GRID_SIZE][GRID_SIZE];

Cell curr_cell = {START_X, START_Y}; // current grid positions (0 to GRID_SIZE-1)
Cell next_cell = {START_X, START_Y}; // Next cell to move to (0 to GRID_SIZE-1)
heading_t curr_heading=START_HEADING;   // current heading (UP, LEFT, DOWN, RIGHT)


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
                LED2 = !LED2;
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
                    LED2 = !LED2;
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
                    LED2 = !LED2;
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
                    LED2 = !LED2;
                    action_enabled = 0;
                    // reset grid
                    resetGrid();
                    return STOP;
                }                
                break;
            default:
                LED2 = !LED2;
                action_enabled = 0;                
        }
        // create distance fields with distances to specified goals
        build_distance_field(goals, num_goals);
        
        // stores the new best_dir (UP, LEFT, DOWN, RIGHT) in best_dir
        get_new_best_direction(&best_dir);

        // no neighbor is reachable -> error
        if (best_dir < 0) {
            LED2 = !LED2;
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