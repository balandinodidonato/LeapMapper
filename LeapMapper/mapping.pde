int nDati = 20;
int[][] leapMIDI = new int[2][nDati];

void handIdMapping(){ 
 if(hand_is_left){ hand_id = hand_id - hand_id;
    
    

 }
 else hand_id = (hand_id - hand_id) + 1;
    
}
  
void handMapping(){
     leapMIDI[hand_id][0] = int(map(hand_position.x, 0, 770, 0, 127)); // Yaw
     leapMIDI[hand_id][1] = int(map(hand_position.y, 58, 450, 127, 0)); // Pitch
     leapMIDI[hand_id][2] = int(map(hand_position.z, 40, 60, 0, 127));// Roll
     leapMIDI[hand_id][3] = int(hand_grab*127); // Grab
     leapMIDI[hand_id][4] = int(hand_pinch*127); // Pinch
   }   
   
void fingerMapping(){
     finger_id = finger_id % 5;
     leapMIDI[hand_id][finger_id+5] =  int(map(finger_stabilized.x, 0, 770, 0, 127)); // Yaw
     leapMIDI[hand_id][finger_id+10] = int(map(finger_stabilized.y, 58, 450, 127, 0)); // Pitch
     leapMIDI[hand_id][finger_id+15] = int(map(finger_stabilized.z, 40, 68, 0, 127));// Roll
   }



