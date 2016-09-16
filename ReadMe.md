# ReadMe

## Scalability
To start off, I asked for tips and advice from some seniors and people with much more coding experience than I do. They all suggested the same thing, "Build it in such a way that it's scaleable", meaning that - when improvements or other implementations are required, you only need to change one small part of the code without really affecting the entire system. Hence, I am to build a system that expects change and will still function accordingly when the limitations are extended.

According to google:
Scalability is the capability of a system, network, or process to handle a growing amount of work, or its potential to be enlarged in order to accommodate that growth.

For example, although the challenge only require a 5 x 5 arena, the system should still work in the future when I am required to change it to a 10 x 10 arena. Similarly, the current required directions (face) are NORTH, EAST, SOUTH and WEST. And in the future, if required so, we can change the system to face 8 directions instead, (i.e. N, NE, E, SE, S, SW, W and NW).

In addition to that, I intend to break it down into several parts, forming an entire whole system in the end with a bin/main.rb. That way, when I'm required to make amendments, I just need to change one component (i.e one of the classes in lib folder) without affecting the rest. Components may include report.rb, board.rb, rule.rb, movement.rb, and etc.

## Approach
located in the /lib folder,
# 1. Board
**Description:** Setting the arena / playing field
**Function:** set_dimensions
**Possible Future Plans/ Scalability:** bigger playing field

# 2. Direction
**Description:** Robot's universal compass
**Functions:**
* initialize - to obtain current direction
* rotate_90_degrees_left - --compass_index of Compass Array
* rotate_90_degrees_right - ++compass_index of Compass Array
* Private function to recognize extended index (scroll down for explanation)
**Possible Future Plans/ Scalability:**
* turns other than 90 degrees,
* North East/West & South East/West in Compass Array

# 3. Movement
**Description:** Robot's mobility
**Functions:**
* initialize - to obtain current location & direction
* forward - move forward based on direction face
**Possible Future Plans/ Scalability:**
* Move backwards, sideways
* Move diagonally +i+j , -i-j, +i-j, -i+j
* Unit Step(s)

# 4. Report
**Description:** spits strings - current location & direction
**Function:** print_string
**Future Plans/ Scalability:** Report other status - distance from certain x,y

# 5. Rule
**Description:** Game's Rule - Robot's Moral Values
**Functions:**
* check_robot_is_placed
* check_initial_command - must be place command
**Possible Future Plans/ Scalability:**
* Constrains/Specifications change its inevitable
* 2 robots cannot not be on the same spot at once

# 6. Robot
**Description:** The essence of life
**Functions:**
* move
* turn_left
* turn_right
* report
**Possible Future Plans/ Scalability:**
* Multiple robots - different names - initialize(name)

# Private Function in Direction
**Description:**







### Being Practical
Instead of building a LARGE if else statement containing what to do when what instructions given. Ive decided that a link list would be appropriate. I will put all the directions in an array and create a code that links one end to the other, resulting in an endless loop forward and back.

**Directions = ["NORTH","EAST","SOUTH","WEST"]**

When the robot is required to TURN right, all I need to do is increment an index count. Alternately, turning left decrements the index count. That way, the incrementing and decrementing of index allows us to move from one element to another in the Directions array. With the link, incrementing from WEST (array index position 4) should result in NORTH.

#### IF ELSE STATEMENTS

check for current position (N,E,S,or WEST)
  if command = RIGHT and current position == N,
  rotate right and current position = E
  if command = LEFT and current position == N,
  rotate left and current position = W
  ...
  ..
  .

There are 2 possible actions for 4 different directions (8 conditional statements). What happens in the future when we're required to have 8 directions instead of 4. What will we do next? Create all 16 conditional statements? The code will no longer be practical or D.R.Y.

### My Approach
**Directions = ["NORTH","EAST","SOUTH","WEST"]**

I know that in this case, it takes only 4 same rotations to get the robot back to facing the original direction. I'm presenting an extreme solution where turn index goes into a large digit. These large digits(extended key) can still represent any of the current 4 elements in the array(actual key). Assuming that multiple LEFTs or RIGHTs are keyed in at once,

|Array Elements| "NORTH" | "EAST" | "SOUTH"| "WEST" |
|---|---|---|---|---|
|Unrecognized Extended Index(UEX)| -12 | -11 | -10| -9 |
|Unrecognized Extended Index(UEX)| -8 | -7 | -6| -5 |
|Recognized Actual Index(RAX)| -4 | -3 | -2| -1 |
|Recognized Actual Index(RAX)| 0 | 1 | 2| 3 |
|Unrecognized Extended Index(UEX)| 4 | 5 | 6 | 7 |
|Unrecognized Extended Index(UEX)| 8 | 9 | 10 | 11 |
|Unrecognized Extended Index(UEX)| 12 | 13 | 14| 15 |

Referring to the Array above, we know that Directions[0] and Directions[-4] result in the "NORTH" value in the array. Similarly, "SOUTH" can be obtained from Directions[-2] and "WEST" from Directions[3]. In an extreme case when more than 4 RIGHTs (6 RIGHTS) appear in the command line the robot should be able to rotate past the recognized array index.

I have written down a formula to achieve this.

IF index is bigger than the highest recognized actual index ( index > 3),

do this

ELSE IF index is smaller than the lowest recognized actual index ( index < -4),

do this

ELSE
do nothing

TO BE CONTINUED ... -->
