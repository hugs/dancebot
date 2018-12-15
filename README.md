

  ## Dancebot - The Dancing Robot
__By Jason Huggins ([@hugs](https://twitter.com/hugs))__



### Overview

In this workshop, you'll assemble a small, humanoid robot designed to dance. The moving parts of the robot are called "Bitbeam". Bitbeam is LEGO Technic-compatible, but made with a 3D printer. 3D printing is a beginner-friendly, low-cost, open-source alternative for creating mechanical robot parts.

Dancebot will have the following features:

- Swivel head side to side
- Rotate each arm up and down
- Bust a move.

<img src="img/dancing-nodebot.png" width="500px"/>

### Parts List

#### Electronics:

Quantity | Description
:---: | ---
1 | Arduino UNO
1 | Arduino Sensor Shield V4
3 | HiTec HS-311 servos
1 | Servo horn (red, cross)
2 | Servo horns (white, straight)
6 | Servo horn mounting screws

#### Printed Parts

Quantity | Description
:---: | ---
1   |  Dancebot head
2   |  Bitbeam Arduino mounting plates
4   |  Bitbeam servo mounts
2   |  Bitbeam servo arms
11  |  Bitbeam 9x1 beams
2   |  Bitbeam 11x2 plates

#### Nuts & Bolts

Quantity | Type | Size
:---: | --- | ---
22  | nuts  | 10-32
8   | bolts | 10-32 3/4" 
10  | bolts | 10-32 1" 
4   | bolts | 10-32 1-1/4" 
8   | nuts  | 6-32
8   | bolts | 6-32 3/4" 
2   | nuts  | 4-40
4   | bolts | 4-40 1/2"

#### Assembly Tools

Quantity | Description
:---: | ---
1x  | Phillips #1 screwdriver
1x  | 7/64 hex driver
1x  | 3/32 hex driver
1x  | 5/32 hex driver

### Assembly

Build instructions can be found [here](https://github.com/hugs/dancebot/blob/master/instructions.pdf).

### Programming

#### Arduino

1. Download and install [the Arduino Client](http://arduino.cc/en/Guide/HomePage)
2. Follow the setup procedure, and use the "blink" test script to verify your Arduino is working
3. From the Arduino IDE upload the Dancebot sketch: https://gist.github.com/hugs/32ff6dcc2191a9f14d95
