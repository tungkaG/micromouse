Code for Demo-mouse:

Current status: 
Main control loop in timer interrupt (streamSensorData function):
get next command (STOP, FORWARD, TURN_90_LEFT, TURN_90_RIGHT, TURN_180) using next_cmd(left_sensor_info, right_sensor_info, front_sensor_info)

If the current path is done (path_counter == path_len), based on the state (IDLE, EXPLORING, RETURN_TO_START, DRIVE_TO_GOAL) the new path is calculated:

EXPLORING: update grid matrix with sensor infos and find path (cell by cell) to nearest cell (manhattan distance) with at least one UNKNOWN wall.

RETURN_TO_START: find A*-path to cell {START_X, START_Y}

DRIVE_TO_GOAL: find A*-path to one of the goal cells

Then via next_move() check if the mouse should turn or if curr_heading = want_heading -> drive FORWARD

In general, grid is a matrix stored as grid[GRID_SIZE][GRID_SIZE][4], so for each cell, we store if UP, LEFT, DOWN and RIGHT (index 0 - 3) is WALL or is FREE. 

An example grid looks like this (note that y are the rows and x are the cols, so grid[curr_y][curr_x][UP] corresponds to the upper wall of the current cell:

' ' ' '
	UP

LEFT (x,y) RIGHT

' ' ' '
	DOWN

(0,0) (1,0)

(0,1)  ...


<img width="269" height="476" alt="image" src="https://github.com/user-attachments/assets/d1835ad7-4f1a-4774-8a05-743125d1fd61" />



