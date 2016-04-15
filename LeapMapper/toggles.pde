import controlP5.*;

ControlP5 cp5;

boolean midi;
boolean toggleValue = false;

void setupToggle(){
  
    cp5 = new ControlP5(this);

    cp5.addToggle("MIDI")
     .setPosition(20,20)
     .setSize(50,20)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     ;
     
  cp5.addToggle("OSC")
     .setPosition(80,20)
     .setSize(50,20)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     ;
}

void MIDI(boolean theFlag){
  midi = !theFlag;
  }

void OSC(boolean theFlag){
  osc = !theFlag;
  }
