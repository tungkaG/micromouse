Code for Demo-mouse:

Current status:
Main control loop in timer interrupt (streamSensorData function):
1. update curr_cell or curr_heading, depending on the command that just took place (STOP, FORWARD, TURN_90_LEFT, TURN_90_RIGHT, TURN_180)
2. get next command (STOP, FORWARD, TURN_90_LEFT, TURN_90_RIGHT, TURN_180) using nextCmd(left_sensor_info, right_sensor_info, front_sensor_info)

Every time the mouse stops, the grid (details see below) is sent via UART and can be received using print_maze_and_send_forward_speed.py and 
the FORWARD_SPEED can be changed anytime by sending e.g. "<6>" via UART to the demomouse (i.e. sets FORWARD_SPEED to 6 rad/s)

The following only concerns highLevelPlanning.c :

In nextCmd(...): If the next cell is reached (curr_cell==next_cell), based on the state (IDLE, EXPLORING_PATH_TO_GOAL, EXPLORING_TEMP_BEST_PATH, RETURN_TO_START, DRIVE_TO_GOAL) the new next_cell is calculated:

EXPLORING_PATH_TO_GOAL: update grid matrix with sensor infos and find best next cell on the way to the goals (middle region) using Flood Fill Algorithm.

EXPLORING_TEMP_BEST_PATH: update grid matrix with sensor infos and find next cell with UNKNOWN walls that is part of the temporarily best path from start to goals.

RETURN_TO_START: update grid matrix with sensor infos and find best next cell on the way to cell {START_X, START_Y}

DRIVE_TO_GOAL: find best next cell on the path to goal using Flood Fill Algorithm

Then via translate_next_cell_to_cmd() check if the mouse should turn or if curr_heading == want_heading -> drive FORWARD

In general, grid is a matrix stored as grid[GRID_SIZE][GRID_SIZE][4], so for each cell, we store if UP, LEFT, DOWN and RIGHT (index 0 - 3) is WALL or is FREE. 

An example grid looks like this (note that y are the rows and x are the cols, so grid[curr_cell.y][curr_cell.x][UP] corresponds to the upper wall of the current cell:

' ' ' '
	UP

LEFT (x,y) RIGHT

' ' ' '
	DOWN

(0,0) (1,0)

(0,1)  ...


<img width="269" height="476" alt="image" src="https://github.com/user-attachments/assets/d1835ad7-4f1a-4774-8a05-743125d1fd61" />



