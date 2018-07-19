# ArmController
This simple controller allows easy testing of a servo-based robotic arm.
There are sliders for the individual servos and 2D X/Y coordinates for inverse kinematics.

The control data is sent via serial port @ 38400 bps in the following format:

`<servo>,<angle><newline>`

Example: `0,90` sends a command to be parsed by an Arduino to set servo 0 to 90 degrees

**UPDATE** Now the processing can receive commands in the same format as above:
`<number>,<value>`

The data is parsed in the parseCommand() function

## Requirements
- Processing version: 3.3.7
- Libraries required: G4P (Gui for processing) install directly from the library manager
- Tools: G4P GUI Builder -- install directly in Tools --> Add tool



