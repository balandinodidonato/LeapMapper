# Leap Mapper
Leap Mapper is an [open-source](https://opensource.org/) application to manage and send [Leap Motion](https://www.leapmotion.com/) data to any audio and visual software able to receive [OSC](http://opensoundcontrol.org/) and [MIDI](https://www.midi.org/) messages.
With Leap Mapper you can also send Leap Motion data to any hardware with embedded MIDI connection through a MIDI I/O interface.

Leap Mapper is developed by [Balandino Di Donato](http://www.balandinodidonato.com/) at [Integra Lab](http://www.integra.io).

## Requirements
- [Java](https://www.java.com/en/download/)

## Get started
- Install [Java](https://www.java.com/en/download/)
- Launch LeapMapper
- Switch the MIDI or OSC for sending messages 
- Open your MIDI or OSC receiver application. If you are sending data via OSC, the set your receiver's port at 5432.'

## MIDI and OSC

### MIDI Connection

The **MIDI port** can be changed through source code

To change **cc value** of the single Leap Motion value, you need to open the relative MIDI.pde file and edit the parameters of the functions which send MIDI data.

To change cc values of Leap Motion values you have to open the `MIDI.pde` file

`open <path>/<to>/LeapMapper/LeapMapper/MIDI.pde`

and then edit the function to send MIDI data.

    myBus.sendControllerChange(channel, cc, value);

### MIDI mapping

NB: **left hand** Leap Motion data are sent on **channel 1**, and **right hand** Leap Motion data are sent on **channel 2**.

| channel | cc value | Velocity | Leap Motion parameter |
| :---:   | :---:    | :---:    | :---:                 |
| 1/2       | 1        | 0-127    | Left/Right Yaw              |
| 1/2       | 2        | 0-127    | Left/Right Pitch            |
| 1/2       | 3        | 0-127    | Left/Right Roll             |
| 1/2       | 4        | 0-127    | Left/Right Grab             |
| 1/2       | 5        | 0-127    | Left/Right Pinch            |
| 1/2       | 6        | 0-127    | Left/Right Thumb X          |
| 1/2       | 7        | 0-127    | Left/Right Index Finger X   |
| 1/2       | 8        | 0-127    | Left/Right Middle Finger X  |
| 1/2       | 9        | 0-127    | Left/Right Ring Finger X    |
| 1/2       | 10       | 0-127    | Left/Right Pinky Finger X   |
| 1/2       | 11       | 0-127    | Left/Right Thumb Y          |
| 1/2       | 12       | 0-127    | Left/Right Index Finger Y   |
| 1/2       | 13       | 0-127    | Left/Right Middle Finger Y  |
| 1/2       | 14       | 0-127    | Left/Right Ring Finger Y    |
| 1/2       | 15       | 0-127    | Left/Right Pinky Finger Y   |
| 1/2       | 16       | 0-127    | Left/Right Thumb Z          |
| 1/2       | 17       | 0-127    | Left/Right Index Finger Z   |
| 1/2       | 18       | 0-127    | Left/Right Middle Finger Z  |
| 1/2       | 19       | 0-127    | Left/Right Ring Finger Z    |
| 1/2       | 20       | 0-127    | Left/Right Pinky Finger Z   |


### OSC Connection

Myo Mapper sends OSC messages at the **port 5432**. To change it you have to go through the following steps:

- Open the osc.pde file within the Myo Mapper folder

  `open <path>/<to>/LeapMApper/LeapMapper/osc.pde` (from terminal)

- Edit the host IP and port number at the 10th line of code:
 
                                      
                                  Host IP      Port
                                      |          |
                                      V          V
`myRemoteLocation = new NetAddress("127.0.0.1",5432); // IP address and Port`

- Save the osc.pde file
- Compile or Export application again.

### OSC mapping

*Legend*

- X = 1 left; 1 = right
- Y = finger number, 0, 1, 2, 3, 4

| Leap Motion parameter   | OSC tag                   | Value type                | Range values         |
| :---:                   | :---:                     | :---:                     | :---:                |
| Hands position          | `/handX/position`         | `float`, `float`, `float` | `0-1`, `0-1`, `0-1`  |
| Finfers position        | `/handX/fingerY/position` | `float`, `float`, `float` | `0-1`, `0-1`, `0-1`, |
| Pinch                   | `/handX/grab`             | `float`                   | `0-1`                |
| Grab                    | `/handX/grab`             | `float`                   | `0-1`                |


## Build

### Requirements
- [Processing](https://processing.org/)

### Dependecies
- Leap Motion for Processing
- ControlP5
- oscP5
- The MidiBus

## License

Copyright (c)  2016 - Balandino Di Donato

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
