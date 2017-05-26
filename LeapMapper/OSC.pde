import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress myRemoteLocation;

boolean osc;

void oscSetup(){
  oscP5 = new OscP5(this,12000); // OSC Port
  myRemoteLocation = new NetAddress("127.0.0.1",5432); // IP address and Port
}

void OSCsend(){
    OscMessage handPosition = new OscMessage("/hand"+hand_id+"/position");
    handPosition.add(handPositionOSC.x);
    handPosition.add(handPositionOSC.y);
    handPosition.add(handPositionOSC.z);
    oscP5.send(handPosition, myRemoteLocation);

   OscMessage fingerPositionf0 = new OscMessage("/hand"+hand_id+"/finger0/position");
   fingerPositionf0.add(finger0mappedOSC.x);
   fingerPositionf0.add(finger0mappedOSC.y);
   fingerPositionf0.add(finger0mappedOSC.z);
   oscP5.send(fingerPositionf0, myRemoteLocation);
    
   OscMessage fingerPositionf1 = new OscMessage("/hand"+hand_id+"/finger1/position");
   fingerPositionf1.add(finger1mappedOSC.x);
   fingerPositionf1.add(finger1mappedOSC.y);
   fingerPositionf1.add(finger1mappedOSC.z);
   oscP5.send(fingerPositionf1, myRemoteLocation);
    //<>//
   OscMessage fingerPositionf2 = new OscMessage("/hand"+hand_id+"/finger2/position");
   fingerPositionf2.add(finger2mappedOSC.x);
   fingerPositionf2.add(finger2mappedOSC.y);
   fingerPositionf2.add(finger2mappedOSC.z);
   oscP5.send(fingerPositionf2, myRemoteLocation);

   OscMessage fingerPositionf3 = new OscMessage("/hand"+hand_id+"/finger3/position");
   fingerPositionf3.add(finger3mappedOSC.x);
   fingerPositionf3.add(finger3mappedOSC.y);
   fingerPositionf3.add(finger3mappedOSC.z);
   oscP5.send(fingerPositionf3, myRemoteLocation);  

   OscMessage fingerPositionf4 = new OscMessage("/hand"+hand_id+"/finger4/position");
   fingerPositionf4.add(finger4mappedOSC.x);
   fingerPositionf4.add(finger4mappedOSC.y);
   fingerPositionf4.add(finger4mappedOSC.z);
   oscP5.send(fingerPositionf4, myRemoteLocation); 

    OscMessage pinch = new OscMessage("/hand"+hand_id+"/pinch");
    pinch.add(hand_pinch);
    oscP5.send(pinch, myRemoteLocation);

    OscMessage grab = new OscMessage("/hand"+hand_id+"/grab");
    grab.add(hand_grab);
    oscP5.send(grab, myRemoteLocation);
  }