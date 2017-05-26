import de.voidplus.leapmotion.*;
LeapMotion leap;
int fps;
float framerate;
int hand_id;
int finger_id;
PVector hand_position, finger_stabilized;
float hand_grab, hand_pinch;
boolean hand_is_left, hand_is_right;
PVector f0, f1, f2, f3, f4 = new PVector(0, 0, 0);

void setupLeap() {
  leap = new LeapMotion(this);
}

void leap() {

  for (Hand hand : leap.getHands ()) {
    
    hand_id        = hand.getId();
    hand_is_left     = hand.isLeft(); 
    hand_is_right    = hand.isRight(); 
    hand_position    = hand.getPosition();
    hand_grab        = hand.getGrabStrength();
    hand_pinch       = hand.getPinchStrength();
    
     handIdMapping();
     handMapping();

    Finger  finger_thumb     = hand.getThumb();
    Finger  finger_index     = hand.getIndexFinger();
    Finger  finger_middle    = hand.getMiddleFinger();
    Finger  finger_ring      = hand.getRingFinger();
    Finger  finger_pink      = hand.getPinkyFinger();       

    for (Finger finger : hand.getFingers()) {
      
      // or              hand.getOutstretchedFingers();
      // or              hand.getOutstretchedFingersByAngle();

      int     fingerId         = finger.getId();
      PVector fingerPosition   = finger.getPosition();
      PVector fingerStabilized = finger.getStabilizedPosition();
      PVector fingerVelocity   = finger.getVelocity();
      PVector fingerDirection  = finger.getDirection();
      float   fingerTime       = finger.getTimeVisible();
     
      finger_id         = finger.getId();
      finger_stabilized   =  finger.getStabilizedPosition();
      // ------------------------------------------------
      // Drawing

      // Drawing:
      // finger.draw();  // Executes drawBones() and drawJoints()
      // finger.drawBones();
      // finger.drawJoints();

      // ------------------------------------------------
      // Selection

      switch(finger.getType()) {
      case 0:
         f0 = finger.getStabilizedPosition();
         finger0mapping();
        break;
      case 1:
         f1 = finger.getStabilizedPosition();
         finger1mapping();
        break;
      case 2:
        f2 = finger.getStabilizedPosition();
        finger2mapping();
        break;
      case 3:
        f3 = finger.getStabilizedPosition();
        finger3mapping();
        break;
      case 4:
        f4 = finger.getStabilizedPosition();
        finger4mapping();
        break;
      }
}
  
  if(osc){
    OSCsend(); 
  }
  if(midi)MIDImessages();
        
  hand.draw();
  
  
  // ========= DEVICES =========

  for (Device device : leap.getDevices ()) {
    float device_horizontal_view_angle = device.getHorizontalViewAngle();
    float device_verical_view_angle = device.getVerticalViewAngle();
    float device_range = device.getRange();
    }
  }
}