<center>
## Dancebot - The Dancing Robot
__By Jason Huggins ([@hugs](https://twitter.com/hugs))__
</center>

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
1 | servo horn (round)
2 | servo horns (White, straight)
6 | servo horn mounting screws

#### Printed Parts

Quantity | Description
:---: | ---
1   |  Dancebot head
2   |  Bitbeam Arduino mounting plate
4   |  Bitbeam servo mounts
2   |  Bitbeam servo arms
11  | Bitbeam 9x1 beam
2   |  Bitbeam 11x2 plate

#### Nuts & Bolts

Quantity | Description
:---: | ---
22  | 10-32 nuts
8   | 6-32 nuts
2   | 4-40 nuts
8   | 3/4-inch 10-32 bolts
10  | 1-inch 10-32 bolts
4   | 1-1/4-inch 10-32 bolts
8   | 6-32 bolts
4   | 1/2 inch 4-40 bolts

#### Assembly Tools

Quantity | Description
:---: | ---
1x  | Phillips #1 screwdriver
1x  | 7/64 hex driver
1x  | 3/32 hex driver
1x  | 5/32 hex driver

### Assembly

Build instructions can be found [here](http://www.flickr.com/photos/68386867@N05/sets/72157642481371803/).

### Programming

#### Arduino

1. Download and install [the Arduino Client](http://arduino.cc/en/Guide/HomePage)
2. Follow the setup procedure, and use the "blink" test script to verify your Arduino is working
3. From the Arduino IDE upload the "Firmata" script: `File` -> `Open` -> `Examples` > `Firmata` > `StandardFirmata`

#### Node

1. [Install Node](http://nodejs.org/download/)
2. Install the dependencies: `npm install`
3. Start'er up: `node bot.js`
4. Start dancin': `dance()`
