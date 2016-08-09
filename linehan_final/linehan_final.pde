float angle;
float e_angle;
float e2_angle;
float b2_angle;
float r_angle;
PFont myFont; 
PImage img;
void setup(){
  size(800,400,P3D);
  img = loadImage("heart.png");
}

void draw(){
  head();
  head2();
  robo(0);
  robo(200);
  robo(400);
  head3();
  font();

}
void font(){
   myFont = createFont("Arial",30);
  textFont(myFont);
  translate(400,400);
  rotate(r_angle);
  r_angle += .02;
  text("greetings", 0, 0); 
  }

  
void robo(int x){
  fill(0);
  //noStroke();
   float e = 0.0;
  for ( int i =0; i < 100; i ++){
  e = e + .1;
  float n = noise(e) * height;
  line(0, n, width,n);
}
  rect(200+x,200,100,100);
  line(200+x,200,300+x,100);//arms
  line(200+x,200,100+x,100);
  line(180+x,200,180+x,300);//legs
  line(220+x,200,220+x,300);
}
void head(){
    pushMatrix();
  translate(200,100);
  rotate(angle);
  //noStroke();
  background(200);
  angle += 0.02;
  rectMode(CENTER);
  rect(0,0,80,80);
  popMatrix();
}
void head2(){
  rectMode(CENTER);
  rect(400,100,80,80);
 
    pushMatrix();

  rectMode(CENTER);
  fill(250);
  translate(380,100);
  rotate(e_angle);
  e_angle += 0.02;
  rect(0,0,20,20);
  popMatrix();
  pushMatrix();
  translate(420,100);
  rotate(e2_angle);
  e2_angle -= 0.06;
  rect(0,0,20,20);
  popMatrix();
  
  
}

void head3(){
  fill(0);
  rectMode(CENTER);
  rect(600,100,80,80);
  pushMatrix();
  translate(600,200);
  rotate(b2_angle);
  b2_angle -= 0.06;
  imageMode(CENTER);
  rect(0,0,100,100);
  image(img,0,0);
  popMatrix();
}

void eyes(){
  fill(200);
  rectMode(CENTER);
    rect(600,100,20,20);
    rect(60,100,20,20);
}

