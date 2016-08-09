
int score;
int ballSize = 20;
PImage weed;
PImage person;
PImage pill;
PImage sky;
boolean fire = false;
import processing.sound.*;
int soundIndex = 0;
int SoundIndex = 0;
int MaxSounds = 7; 
int maxSounds = 7; 

SoundFile[] sound = new SoundFile[maxSounds];
SoundFile[] Sound = new SoundFile[MaxSounds];
   
 int gameOver = 0;

  float[] ballx = { random(500), random(500), random(500), random(500), random(500)};
  float[] ballz = { random(500), random(500), random(500), random(500),random(500) };
  int[] bally = { 0, -20, -5, -10, 0 };
  int[] ballyx = { 0, -10, 0, -24, 10 };

  void setup(){
    size (333, 500);
    smooth ();
  weed = loadImage("weed.png");
  pill = loadImage("pill.png");
  person = loadImage("person.png");
  sky = loadImage("sky.jpg");
    for (int i = 0; i < sound.length; i ++ ) {
  sound[i] = new SoundFile(this, (i+1) + ".mp3");
   }
    for (int i = 0; i < Sound.length; i ++ ) {
  Sound[i] = new SoundFile(this, "s"+(i+1) + ".mp3");
   }
  }
  
  void draw()
  {
     background(sky);
    image(person, mouseX-35, 430, 70, 70);
    stroke(0);
    fill(0);
    line(mouseX, 500, mouseX, 0);

    text(score, 20,20);
    if(fire)
    {
      cannon(mouseX);
      cannons(mouseX);
      fire = false;
    }
     ballFalling();
     gameFinish(); 
     ballFallings();
  }
   
  void mousePressed()
  {
    fire = true;
  }
   
  void ballFalling()
  { 
    for (int i=0; i<5; i++)
    {
      image(weed, ballx[i], bally[i]++, ballSize,20);
    }
  }
    void ballFallings()
  { 
    for (int i=0; i<5; i++)
    {
      image(pill, ballz[i], ballyx[i]++, ballSize,20);
    }
  }
  void cannon(int shotX)
  {
    boolean strike = false;
    for (int i = 0; i < 5; i++)
    {
      if((shotX >= (ballx[i]-ballSize)) && (shotX <= (ballx[i]+ballSize))) {
        strike = true;
        stroke(0);
        line(mouseX, 565, mouseX, bally[i]);
        sound[soundIndex].stop();
        soundIndex = int(random(sound.length));
        sound[soundIndex].play();
        ballx[i] = random(500);
        bally[i] = 0;
        score++;
      }
          if(strike == false)
    {
      line(mouseX, 500, mouseX, 0);
    } 
    }
  }
  void cannons(int shotX)
  {
    boolean strike = false;
    for (int i = 0; i < 5; i++)
    {  
      if((shotX >= (ballz[i]-ballSize)) && (shotX <= (ballz[i]+ballSize))) {
        strike = true;
        stroke(0);
        line(mouseX, 565, mouseX, bally[i]);
         SoundIndex = int(random(Sound.length));    
         Sound[SoundIndex].play();
        fin();
         
      }   
    if(strike == false)
    {
      stroke(0);
      line(mouseX, 500, mouseX, 0);
    } 
    }
  }
  
  void fin(){
  
         //ellipse(ballz[i], bally[i],ballSize+25, ballSize+25);
       
        fill(#EBFF12);
    // fill(255, 0, 0);
    textAlign(CENTER);
    text("GAME OVER", width/2, height/2);
    text("Your score was : "+ score, width/2, 300);
     noLoop();
   }
  void gameFinish()
  {
    for (int i=0; i< 5; i++)
    {
      if(bally[i]==height)
      {   Sound[SoundIndex].stop();
         SoundIndex = int(random(Sound.length));
         Sound[SoundIndex].play();
        fin();
        noLoop();
        
      }
      if(ballyx[i]==height)
      {
        ballz[i] = random(500);
        ballyx[i] = 0;
        
    }
    }
  }
      