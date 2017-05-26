import themidibus.*;

MidiBus myBus; // The MidiBus

int nDati = 20;
int[][] leapMIDI = new int[2][20];

void setUpMIDI(){
  myBus.list();
  myBus = new MidiBus(this, 1, 1);
}

void MIDImessages(){
  
    leapMIDI[hand_id][0] = int(handPositionMIDI.x);
    leapMIDI[hand_id][1] = int(handPositionMIDI.y);
    leapMIDI[hand_id][2] = int(handPositionMIDI.z);
    leapMIDI[hand_id][3] = int(handGrabMIDI);
    leapMIDI[hand_id][4] = int(handPinchMIDI);
  
    leapMIDI[hand_id][5] =  int(finger0mappedMIDI.x);
    leapMIDI[hand_id][6] =  int(finger1mappedMIDI.x);
    leapMIDI[hand_id][7] =  int(finger2mappedMIDI.x);
    leapMIDI[hand_id][8] =  int(finger3mappedMIDI.x);
    leapMIDI[hand_id][9] =  int(finger4mappedMIDI.x);
    
    leapMIDI[hand_id][10] =  int(finger0mappedMIDI.y);
    leapMIDI[hand_id][11] =  int(finger1mappedMIDI.y);
    leapMIDI[hand_id][12] =  int(finger2mappedMIDI.y);
    leapMIDI[hand_id][13] =  int(finger3mappedMIDI.y);
    leapMIDI[hand_id][14] =  int(finger4mappedMIDI.y);

    leapMIDI[hand_id][15] =  int(finger0mappedMIDI.z);
    leapMIDI[hand_id][16] =  int(finger1mappedMIDI.z);
    leapMIDI[hand_id][17] =  int(finger2mappedMIDI.z);
    leapMIDI[hand_id][18] =  int(finger3mappedMIDI.z);
    leapMIDI[hand_id][19] =  int(finger4mappedMIDI.z);
 
  for(int i=0; i<2; i++){
    for(int z=0; z<nDati; z++){    
     myBus.sendControllerChange(i, z+1, leapMIDI[i][z]);
      }
    }
}