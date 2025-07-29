import serial
import time

GRID_SIZE = 6

# serial port (could also by /dev/ttyUSB0 etc.)
ser = serial.Serial("COM4", 115200, timeout=1)

def clear_screen():
    # ANSI escape code to clear terminal
    print("\033[2J\033[H", end='')

def read_pos():
    while True:
        line = ser.readline().decode('ascii',errors='ignore').rstrip('\n')
        if not line:
            continue
        if line.startswith("POS"):
            # POS X Y
            _, x, y, h = line.split()
            curr_x, curr_y, curr_heading = int(x), int(y), int(h)
            break
    while True:
        line = ser.readline().decode('ascii',errors='ignore').rstrip('\n')
        if not line:
            continue
        if line.startswith("NEXT"):
            # POS X Y
            _, xs, ys = line.split()
            next_x, next_y = int(xs), int(ys)
            break
    return curr_x, curr_y, curr_heading, next_x, next_y

def read_full_grid():
    rows = []
    # for each row y: downs[y], rights[y], blank, 
    # and after 6 rows one extra blank
    rights  = []
    downs   = []
    # read until we have 6 downs and 6 rights
    while len(rights) < GRID_SIZE:
        line = ser.readline().decode('ascii',errors='ignore').rstrip('\n')
        print(line)
        if len(line)==0:
            # blank separator, skip
            continue
        
        # new row started
        if len(downs) == len(rights):
            downs.append(line)
        else:
            rights.append(line)

    # now build rows
    for y in range(GRID_SIZE):
        rows.append({
            'right': rights[y],
            'down':  downs[y],
        })
    return rows

def get_interior_symbol(x, y, curr_x, curr_y, curr_heading, next_x, next_y):
    if curr_x == x and curr_y == y:
        match curr_heading:
            case 0:
                return "^"
            case 1:
                return "<"
            case 2:
                return "v"
            case 3:
                return ">"
    elif next_x == x and next_y == y:
        return "N"
    return " "

def print_maze(grid_rows, curr_x, curr_y, curr_heading, next_x, next_y):
    """
    Renders the maze in terminal:
      +-+-+
      | | |
      + +-+
      ...
    """
    clear_screen()

    # top border
    top = "+"
    for x in range(GRID_SIZE):
        top += "-+"
    print(top)

    for y in range(GRID_SIZE):
        # print initial left wall and then each right wall of row y
        line = "|"
        for x in range(GRID_SIZE):
            line += get_interior_symbol(x, y, curr_x, curr_y, curr_heading, next_x, next_y)
            line += "|" if grid_rows[y]['right'][x]=='#' else " "
        print(line)

        # print each down wall of row y
        sep = "+"
        for x in range(GRID_SIZE):
            sep += "-" if grid_rows[y]['down'][x]=='#' else " "
            sep += "+"
        print(sep)

if __name__=="__main__":
    time.sleep(1)

    # for alternating messages
    last_send = time.time()
    send_toggle = False  # False: send "<5>", True: send "<10>"
    while True:
        # print whenever we are stopping (corresponding with Microcontroller code)
        curr_x, curr_y, curr_heading, next_x, next_y = read_pos()
        grid = read_full_grid()
        print_maze(grid, curr_x, curr_y, curr_heading, next_x, next_y)
        
        '''
        # uncomment to update FORWARD_SPEED every 10 seconds
        now = time.time()
        if now - last_send >= 10.0:
            msg = "<10>" if send_toggle else "<5>"
            ser.write(msg.encode('ascii'))
            send_toggle = not send_toggle
            last_send = now
        '''

        time.sleep(0.5)
        
        