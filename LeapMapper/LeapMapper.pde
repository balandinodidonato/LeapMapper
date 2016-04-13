void setup(){
  setupLeap();
  size(int(displayWidth*0.5), int(displayHeight*0.5), OPENGL);

}

void draw(){
  
  background(255);
  leap();
  mapping();
}
