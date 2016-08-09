
import processing.serial.*;

int bgcolor;           // Background color
int fgcolor,acolor,bcolor,ccolor,dcolor,ecolor,fcolor;           // Fill color
Serial myPort;                       // The serial port
int[] serialInArray = new int[6];    // Where we'll put what we receive
int serialCount = 0;                 // A count of how many bytes we receive       // Starting position of the ball
boolean firstContact = false;        // Whether we've heard from the microcontroller

void setup() {
  size(600, 600);  // Stage size
  noStroke();      // No border on the next thing drawn

  // Set the starting position of the ball (middle of the stage)


  // Print a list of the serial ports for debugging purposes
  // if using Processing 2.1 or later, use Serial.printArray()
  println(Serial.list());

  // I know that the first port in the serial list on my mac
  // is always my  FTDI adaptor, so I open Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[4];
  myPort = new Serial(this, portName, 9600);
}

void draw() {
//  background(bgcolor);
  sensor1();
  sensor2();
  sensor3();
  sensor4();
  sensor5();
  sensor6();
  // Draw the shape
  //ellipse(xpos, ypos, 20, 20);
}
void sensor1(){
  fill(acolor);
  rect(0,0,width,100);
}
void sensor2(){
  fill(bcolor);
  rect(0,100, width,100);
}
void sensor3(){
  fill(ccolor);
  rect(0,200, width,100);
}
void sensor4(){
  fill(dcolor);
  rect(0,300, width,100);
}
void sensor5(){
  fill(ecolor);
  rect(0,400, width,100);
}
void sensor6(){
  fill(fcolor);
  rect(0,500, width,100);
}
void serialEvent(Serial myPort) {
  // read a byte from the serial port:
  int inByte = myPort.read();
  // if this is the first byte received, and it's an A,
  // clear the serial buffer and note that you've
  // had first contact from the microcontroller.
  // Otherwise, add the incoming byte to the array:
  if (firstContact == false) {
    if (inByte == 'A') {
      myPort.clear();          // clear the serial port buffer
      firstContact = true;     // you've had first contact from the microcontroller
      myPort.write('A');       // ask for more
    }
  }
  else {
    // Add the latest byte from the serial port to array:
    serialInArray[serialCount] = inByte;
    serialCount++;

    // If we have 3 bytes:
    if (serialCount > 5 ) {
      acolor = serialInArray[0];
      bcolor = serialInArray[1];
      ccolor = serialInArray[2];
      dcolor = serialInArray[3];
      ecolor = serialInArray[4];
      fcolor = serialInArray[5];


      // print the values (for debugging purposes only):
      println(acolor + "\t" + bcolor + "\t" + ccolor + "\t" + dcolor  + "\t" + ecolor  + "\t" + fcolor);

      // Send a capital A to request new sensor readings:
      myPort.write('A');
      // Reset serialCount:
      serialCount = 0;
    }
  }
}
