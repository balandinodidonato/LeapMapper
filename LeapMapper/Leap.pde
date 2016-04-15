import de.voidplus.leapmotion.*;
LeapMotion leap;

int     hand_id = 2;
int finger_id;
PVector hand_position, finger_stabilized;
float hand_grab, hand_pinch;
boolean hand_is_left, hand_is_right;

void setupLeap() {
  leap = new LeapMotion(this);
}

void leap() {
  int fps = leap.getFrameRate();

  // ========= HANDS =========

  for (Hand hand : leap.getHands ()) {

    // ----- BASICS -----
    
    hand_id        = hand.getId();
    hand_is_left     = hand.isLeft(); 
    hand_is_right    = hand.isRight();
    handIdMapping();
    
    hand_position    = hand.getPosition();
    hand_grab        = hand.getGrabStrength();
    hand_pinch       = hand.getPinchStrength();
    handMapping();
    
    // ----- SPECIFIC FINGER -----

    Finger  finger_thumb     = hand.getThumb();
    Finger  finger_index     = hand.getIndexFinger();
    Finger  finger_middle    = hand.getMiddleFinger();
    Finger  finger_ring      = hand.getRingFinger();
    Finger  finger_pink      = hand.getPinkyFinger();       

    // ========= FINGERS =========

    for (Finger finger : hand.getFingers()) {
      // hand.getOutstrechtedFingers();
      // hand.getOutstrechtedFingersByAngle();
      
      finger_id         = finger.getId();
      finger_stabilized   =  finger.getStabilizedPosition();
      fingerMapping();
    }
 
  // ----- DRAWING -----
  hand.draw();
  midiValues();
  if(midi)MIDI();
  if(osc)OSC();
  
  // ========= DEVICES =========

  for (Device device : leap.getDevices ()) {
    float device_horizontal_view_angle = device.getHorizontalViewAngle();
    float device_verical_view_angle = device.getVerticalViewAngle();
    float device_range = device.getRange();
    }
  }
}