// Leap Mapper is a open source software whcih tracks Leap Motion basic data
// and send them to thirth party applications able to receive MIDI and/or OSC messages.
// Leap Mapper is developped by Balandino Di Donato at Integra Lab using Leap Motion For Processing library.
// For more info about it please visit balandinodidonato.com/LeapMapper or integra.io.
// © Balandino Di Donato 2016

void setup(){
  setupLeap();
  setupToggle();
  setUpMIDI();
  oscSetup();
  size(int(displayWidth*0.5), int(displayHeight*0.5), OPENGL);
}

void draw(){
  background(175);
  leap(); 
}
