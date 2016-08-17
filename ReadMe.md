# ReadMe

## Scalability
To start off, I asked for tips and advice from some seniors and people with much more coding experience than I do. They all suggested the same thing, "Build it in such a way that it's scaleable", meaning that - when improvements or other implementations are required, you only need to change one small part of the code without really affecting the entire system. Hence, I am to build a system that expects change and will still function accordingly when the limitations are extended.

According to google:
Scalability is the capability of a system, network, or process to handle a growing amount of work, or its potential to be enlarged in order to accommodate that growth.

For example, although the challenge only require a 5 x 5 arena, the system should still work in the future when I am required to change it to a 10 x 10 arena. Similarly, the current required directions (face) are NORTH, EAST, SOUTH and WEST. And in the future, if required so, we can change the system to face 8 directions instead, (i.e. N, NE, E, SE, S, SW, W and NW).

In addition to that, I intend to break it down into several parts, forming an entire whole system in the end with a main.rb. That way, when I'm required to make an amendment, I just need to change one component of it without affecting the rest. Components may include turn.rb, positions.rb, rules.rb, movement.rb, and etc.

## Part 1 : turn.rb
So I've decided to start with the turn/directions module, simply because it's the easiest one in my opinion.

The turn component plays an important role in the movements of the robot. Apart from moving forward, the only way the robot to get anywhere is by turning left or right. To be more specific, ROTATE 90 degrees left or 90 degrees right. In other words, the robot will need to ROTATE RIGHT and MOVE FORWARD just to slide towards the right across the board.

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

|Unrecognized Extended Index| -12 | -11 | -10| -9 |
|Unrecognized Extended Index| -8 | -7 | -6| -5 |
|Recognized Actual Index| -4 | -3 | -2| -1 |
|Array Elements| "NORTH" | "EAST" | "SOUTH"| "WEST" |
|Recognized Actual Index| 0 | 1 | 2| 3 |
|Unrecognized Extended Index| 4 | 5 | 6 | 7 |
|Unrecognized Extended Index| 8 | 9 | 10 | 11 |
|Recognized Actual Index| 12 | 13 | 14| 15 |

Referring to the Array above, we know that Directions[0] and Directions[-4] result in the "NORTH" value in the array. Similarly, "SOUTH" can be obtained from Directions[-2] and "WEST" from Directions[3]. In an extreme case when more than 4 RIGHTs (6 RIGHTS) appear in the command line the robot should be able to rotate past the recognized array index.

I have written down a formula to achieve this.

IF index is bigger than the highest recognized actual index ( index > 3),
do this
ELSE IF index is smaller than the lowest recognized actual index ( index < -4),
do this
ELSE
do nothing

TO BE CONTINUED ...
