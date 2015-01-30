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

- 1x Arduino UNO
- 1x Arduino Sensor Shield V4
- 3x HiTec HS-311 servos
- 1x servo horn (round)
- 2x servo horns (White, straight)
- 6x servo horn mounting screws

#### Printed Parts
- 1x  Dancebot head
- 2x  Bitbeam Arduino mounting plate
- 4x  Bitbeam servo mounts
- 2x  Bitbeam servo arms
- 11x Bitbeam 9x1 beam
- 2x  Bitbeam 11x2 plate

#### Nuts & Bolts

- 22x 10-32 nuts
- 8x 6-32 nuts
- 2x 4-40 nuts
- 8x 3/4-inch 10-32 bolts
- 10x 1-inch 10-32 bolts
- 4x 1-1/4-inch 10-32 bolts
- 8x 6-32 bolts
- 4x 1/2 inch 4-40 bolts

#### Assembly Tools

- 1x 7/32 hex driver</li>
- 1x 3/32 hex driver</li>
- 1x 5/32 hex driver</li>        
- 1x Phillips #1 screwdriver</li>

### Assembly

[Build instructions](http://www.flickr.com/photos/68386867@N05/sets/72157642481371803/)

### Programming

#### Arduino

1. Download and install the Arduino Client: [http://arduino.cc/en/Guide/HomePage](http://arduino.cc/en/Guide/HomePage)
2. Follow the setup procedure, and use the "blink" test script to verify your Arduino is working.
3. From the Arduino IDE upload the "Firmata" script: File -> Open -> Examples > Firmata > StandardFirmata

#### Node

1. [Install Node](http://nodejs.org/download/)
2. Install the dependencies: `npm install`
3. Start'er up: `node bot.js`
4. Start dancing: `dance()`
