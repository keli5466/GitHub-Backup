PImage img;
PFont f;
String feddy = " hello";

void setup(){
  size(900,900);
  img = loadImage("freddy.jpg");
  createFont("Arial",50);
}
void draw(){
  loadPixels();
  image(img,0,0);
  fill(0);
  text(feddy,100,100);
}
