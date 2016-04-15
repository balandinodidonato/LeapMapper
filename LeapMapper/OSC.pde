import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress myRemoteLocation;

boolean osc;

void oscSetup(){
  oscP5 = new OscP5(this,12000); // OSC Port
  myRemoteLocation = new NetAddress("127.0.0.1",5432); // IP address and Port
}

void OSCmessages(){
 
    OscMessage handPosition = new OscMessage("/handPosition");
    OscMessage fingerPosition = new OscMessage("/fingerPosition");
    OscMessage pinch = new OscMessage("/pinch");
    OscMessage grab = new OscMessage("/grab");

    handPosition.add(hand_id);
    handPosition.add(hand_position.x);
    handPosition.add(hand_position.y);
    handPosition.add(hand_position.z);
    fingerPosition.add(hand_id);
    fingerPosition.add(finger_id);
    fingerPosition.add(hand_position.x);
    fingerPosition.add(hand_position.y);
    fingerPosition.add(hand_position.z);
    pinch.add(hand_pinch);
    grab.add(hand_grab);
    
    oscP5.send(handPosition, myRemoteLocation);
    oscP5.send(fingerPosition, myRemoteLocation);
    oscP5.send(pinch, myRemoteLocation);
    oscP5.send(grab, myRemoteLocation);
  }
