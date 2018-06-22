# ArmController
This simple controller allows easy testing of a servo-based robotic arm.
There are sliders for the individual servos and 2D X/Y coordinates for inverse kinematics.

The control data is sent via serial port @ 38400 bps in the following format:

`<servo>,<angle><newline>`

Example: `0,90\n` sends a command to be parsed by an Arduino to set servo 0 to 90 degrees 

## Requirements
- Processing version: 3.3.7
- Libraries required: G4P (Gui for processing) install directly from the library manager
- Tools: G4P GUI Builder -- install directly in Tools --> Add tool



