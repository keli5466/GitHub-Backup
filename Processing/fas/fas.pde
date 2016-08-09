//initialise score variable
int score;
int ballSize = 20;
PImage weed;
PImage pill;
  boolean fire = false;
   
  //Initialise gameOver variable
 int gameOver = 0;
  
 //int startGame;
  int getRandomX()
   
   
 // int score;
  {
    return int(random(600));
  }
   /*
  int[] ballx = { getRandomX(), getRandomX(), getRandomX(), getRandomX(), getRandomX() };
  int[] ballz = { getRandomX(), getRandomX(), getRandomX(), getRandomX(), getRandomX() };
  int[] bally = { 0, 0, 0, 0, 0 };
   */
  void setup()
  {
     
    //Size
    size (900, 500);
    smooth ();
      gameover = loadImage("weed.png");
  invader1 = loadImage("pill.png");

     
  }
   
  void draw()
  {
 
   //Game Style
    
   background (0);
    fill(255);
    stroke (255);
    triangle(mouseX-8, 480, mouseX+8, 480, mouseX, 565);
    // display score
    fill(255);
    text(score, 20,20);
    if(fire)
    {
      cannon(mouseX);
      fire = false;
    }
   
     ballFalling();
     gameFinish(); 
  }
  
  //Play the game
   
  
  void mousePressed()
  {
    fire = true;
  }
   
  void ballFalling()
  { 
    stroke(39, 0, 240);
    fill (39, 154, 0);
     
    for (int i=0; i<5; i++)
    {
      ellipse(ballx[i], bally[i]++, ballSize, ballSize);
      fill (0, 154, 200);
       ellipse(ballz[i], bally[i]++, ballSize, ballSize);
    }
  }
   
  void cannon(int shotX)
  {
    boolean strike = false;
    for (int i = 0; i < 5; i++)
    {
      if((shotX >= (ballx[i]-ballSize/2)) && (shotX <= (ballx[i]+ballSize/2))) {
        strike = true;
        line(mouseX, 565, mouseX, bally[i]);
        ellipse(ballx[i], bally[i],
                ballSize+25, ballSize+25);
        ballx[i] = getRandomX();
        bally[i] = 0;
 
 
// update score
        score++;
      }   
 
        {
      if((shotX >= (ballz[i]-ballSize/2)) && (shotX <= (ballz[i]+ballSize/2))) {
        strike = true;
        line(mouseX, 565, mouseX, bally[i]);
        gameFinish();
      }   
    }
   
    if(strike == false)
    {
      line(mouseX, 565, mouseX, 0);
    } 
   
    }
  }
   
  //GameOver
   
  void gameFinish()
  {
    for (int i=0; i< 5; i++)
    {
      if(bally[i]==300)
      {
 
     
        fill(color(255,0,0));
     fill(255, 0, 0);
    textAlign(CENTER);
    text("GAME OVER", width/2, height/2);
    text("Well done! Your score was : "+ score, width/2, height/2 + 50);
       
     noLoop();
 
   
       }
      }
    }

