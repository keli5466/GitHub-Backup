PImage img;
String freddy = "I love Freddy";
//import processing.video.*;
PFont f;
//import processing.sound.*;
//Movie myMovie;
//SoundFile song;
void setup(){
size(800,800,P3D);
img = loadImage("freddy.jpg");
printArray(PFont.list());
f = createFont("Arial", 50);
//myMovie = new Movie(this, "dolphin.mov");
//myMovie.loop();
//int maxImages = 3; // Total # of images
//int imageIndex = 0; // Initial image to be displayed is the first
// Declaring an array of images.
//PImage[] images = new PImage[maxImages]; 
//Letter[] letters;
Capture vid;
}
void draw(){
  
img.loadPixels();
//rotate(10);
image(img,0,0);
//cols = width/cellsize;
//rows = height/cellsize;
//tint(200,100,200,100);
//filter(BLUR,1);
//pix();
//tri();
textFont(f,50);
fill(0);
 translate(width/2, height/2); 
  
  // Rotate by angle
  rotate(angle);
textAlign(LEFT);  
text(freddy, 0,0);
angle += 0.005; 
}


void pix(){
  for (int x = 0; x < width; x++){
    for (int y = 0; y <height; y++) {
      int loc = x + y * width;
          
    }
   //  for (int i = 0; i < images.length; i ++ ) { //arary
   // images[i] = loadImage( "flatirons" + i + ".jpg" ); 
 // }
 // frameRate(1);
 /*
 void draw() {
  image(images[imageIndex],0,0); 
  // increment image index by one each cycle
  // use modulo " % "to return to 0 once the end of the array is reached
  imageIndex = (imageIndex + 1) % images.length;
}
*/
  }

updatePixels();
}


void tri(){
  for (int y = 0; y < img.height; y+=10 ) {
    // skip every 5 pixels along the x-axis
    for (int x = 0; x < img.width+5; x+=5) {
      // Calculate the 1D location from a 2D grid
      int loc = x + y*img.width;
      // Color according to the image
      stroke(img.pixels[loc]);
      fill(img.pixels[loc]);
      // Draw a triangle pointing up or pointing down
      if (x %10 == 0) {
        triangle(x-5, y, x, y+10, x+5, y);
      } else { 
        triangle(x-5, y+10, x, y, x+5, y+10);
      }
    }
  }
}
// Called every time a new frame is available to read
void movieEvent(Movie mov) {
   // Read frame
  mov.read();
}

/*
brightness with mouse
PImage img;

void setup() {
  size(700,466);
  img = loadImage("flatirons.jpg");
}

void draw() {
  loadPixels();
  // We must also call loadPixels() on the PImage since we are going to read its pixels.
  img.loadPixels();
  for (int y = 0; y < height; y++ ) {
    for (int x = 0; x < width; x++ ) {
      int loc = x + y*width;
      // The functions red(), green(), and blue() pull out the three color components from a pixel.
      float r = red(img.pixels [loc]); 
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);

      // image Processing based on mouseX position
      float adjustBrightness = ((float) mouseX / width) * 8.0; 
      r *= adjustBrightness;
      g *= adjustBrightness;
      b *= adjustBrightness;

      // Set the display pixel to the image pixel
      pixels[loc] = color(r,g,b);
    }
  }
  updatePixels();
}
// Adapted from Learning Processing Example 17-3

// array of strings
String[] headlines = {
  "TAM is awesome" ,
  "TAM classes are my favorites" , 
  "I wish I could take all TAM classes"
};

// declare PFont object
PFont f;

// horizontal location
float x; 

// array index
int index = 0;

void setup() {
  size(400,200);
  // load font
  f = createFont( "Georgia", 16);
  
  // initialize headline offscreen
  x = width;
}

void draw() {
  background(255);
  fill(0);
  
  // Display headline at x location
  textFont(f, 16);
  textAlign (LEFT);
  
  // A specific String from the array is displayed
  text(headlines[index], x, 180); 
  
  // Decrement x with the speed
  x = x - 2;
  float w = textWidth(headlines[index]); 
  if (x < -w) {
    // reset x to be offscreen for the next headline
    x = width;
    // index is incremented when the current String has left the screen in order to display a new String.
    index = (index + 1) % headlines.length; 
  }
}

*/
  
