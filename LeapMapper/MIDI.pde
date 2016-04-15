import themidibus.*;

MidiBus myBus; // The MidiBus

void setUpMIDI(){
  myBus.list();
  myBus = new MidiBus(this, 2, 1);
}

void MIDImessages(){
  for(int i=0; i<2; i++){
    for(int z=0; z<nDati; z++){    
     myBus.sendControllerChange(i+1, z+1, leapMIDI[i][z]);
      }
    }
}

