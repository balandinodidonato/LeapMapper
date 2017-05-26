PVector finger0mappedOSC = new PVector(0, 0, 0);
PVector finger0mappedMIDI = new PVector(0, 0, 0);
PVector finger1mappedOSC = new PVector(0, 0, 0);
PVector finger1mappedMIDI = new PVector(0, 0, 0);
PVector finger2mappedOSC = new PVector(0, 0, 0);
PVector finger2mappedMIDI = new PVector(0, 0, 0);
PVector finger3mappedOSC = new PVector(0, 0, 0);
PVector finger3mappedMIDI = new PVector(0, 0, 0);
PVector finger4mappedOSC = new PVector(0, 0, 0);
PVector finger4mappedMIDI = new PVector(0, 0, 0);

PVector handPositionOSC = new PVector(0, 0, 0);
PVector handPositionMIDI = new PVector(0, 0, 0);

float handGrabMIDI = 0;
float handPinchMIDI = 0;

void handIdMapping(){ 
 if(hand_is_left){ hand_id = hand_id - hand_id;    
 }
 else hand_id = (hand_id - hand_id) + 1;
}
  
void handMapping(){
      handPositionOSC.x = map(hand_position.x, -50, 420, 0, 1);
      handPositionOSC.y = map(hand_position.y, 450, 0, 0, 1);
      handPositionOSC.z = map(hand_position.z, 0, 90, 0, 1);

      handPositionOSC.x = constrain(handPositionOSC.x, 0, 1);
      handPositionOSC.y = constrain(handPositionOSC.y, 0, 1);
      handPositionOSC.z = constrain(handPositionOSC.z, 0, 1);
      
      handPositionMIDI.x = handPositionOSC.x*127;
      handPositionMIDI.y = handPositionOSC.y*127; 
      handPositionMIDI.z = handPositionOSC.z*127;
      
      handGrabMIDI = hand_grab*127;
      handPinchMIDI = hand_pinch*127;
 }    //<>//
   
 void finger0mapping(){
    finger0mappedOSC.x = map(f0.x, -100, 450, 0, 1);
    finger0mappedOSC.y = map(f0.y, 490, 100, 0, 1);
    finger0mappedOSC.z = map(f0.z, 25, 90, 0, 1);
    
    finger0mappedOSC.x = constrain(finger0mappedOSC.x, 0, 1);
    finger0mappedOSC.y = constrain(finger0mappedOSC.y, 0, 1);
    finger0mappedOSC.z = constrain(finger0mappedOSC.z, 0, 1);   
    
    finger0mappedMIDI.x =  finger0mappedOSC.x*127;
    finger0mappedMIDI.y =  finger0mappedOSC.y*127;
    finger0mappedMIDI.z =  finger0mappedOSC.z*127;
   }
   
  void finger1mapping(){
    finger1mappedOSC.x = map(f1.x, -100, 450, 0, 1);
    finger1mappedOSC.y = map(f1.y, 490, 100, 0, 1);
    finger1mappedOSC.z = map(f1.z, 25, 90, 0, 1);
    
    finger1mappedOSC.x = constrain(finger1mappedOSC.x, 0, 1);
    finger1mappedOSC.y = constrain(finger1mappedOSC.y, 0, 1);
    finger1mappedOSC.z = constrain(finger1mappedOSC.z, 0, 1);   
    
    finger1mappedMIDI.x =  finger1mappedOSC.x*127; // Yaw
    finger1mappedMIDI.y =  finger1mappedOSC.y*127; // pitch
    finger1mappedMIDI.z =  finger1mappedOSC.z*127; // roll
   }
 
  void finger2mapping(){
    finger2mappedOSC.x = map(f2.x, -100, 450, 0, 1);
    finger2mappedOSC.y = map(f2.y, 490, 100, 0, 1);
    finger2mappedOSC.z = map(f2.z, 25, 90, 0, 1);
    
    finger2mappedOSC.x = constrain(finger2mappedOSC.x, 0, 1);
    finger2mappedOSC.y = constrain(finger2mappedOSC.y, 0, 1);
    finger2mappedOSC.z = constrain(finger2mappedOSC.z, 0, 1);   
    
    finger1mappedMIDI.x =  finger1mappedOSC.x*127; // Yaw
    finger1mappedMIDI.y =  finger1mappedOSC.y*127; // pitch
    finger1mappedMIDI.z =  finger1mappedOSC.z*127; // roll
   } 
 
  void finger3mapping(){
    finger3mappedOSC.x = map(f3.x, -100, 450, 0, 1);
    finger3mappedOSC.y = map(f3.y, 490, 100, 0, 1);
    finger3mappedOSC.z = map(f3.z, 25, 90, 0, 1);
    
    finger3mappedOSC.x = constrain(finger3mappedOSC.x, 0, 1);
    finger3mappedOSC.y = constrain(finger3mappedOSC.y, 0, 1);
    finger3mappedOSC.z = constrain(finger3mappedOSC.z, 0, 1);   
    
    finger3mappedMIDI.x =  finger3mappedOSC.x*127; // Yaw
    finger3mappedMIDI.y =  finger3mappedOSC.y*127; // pitch
    finger3mappedMIDI.z =  finger3mappedOSC.z*127; // roll
   } 
   
  void finger4mapping(){
    finger4mappedOSC.x = map(f4.x, -100, 450, 0, 1);
    finger4mappedOSC.y = map(f4.y, 490, 100, 0, 1);
    finger4mappedOSC.z = map(f4.z, 25, 90, 0, 1);
    
    finger4mappedOSC.x = constrain(finger4mappedOSC.x, 0, 1);
    finger4mappedOSC.y = constrain(finger4mappedOSC.y, 0, 1);
    finger4mappedOSC.z = constrain(finger4mappedOSC.z, 0, 1);   
    
    finger4mappedMIDI.x =  finger4mappedOSC.x*127; // Yaw
    finger4mappedMIDI.y =  finger4mappedOSC.y*127; // pitch
    finger4mappedMIDI.z =  finger4mappedOSC.z*127; // roll
   } 