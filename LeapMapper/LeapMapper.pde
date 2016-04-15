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
