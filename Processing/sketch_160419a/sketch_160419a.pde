import processing.serial.*;

Serial myPort;    // The serial port
String inString;  // Input string from serial port
int lf = 10;      // ASCII linefeed
String val;

void setup() {
  size(400,200);
  // List all the available serial ports:
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[4], 9600);
  myPort.bufferUntil('\n');
}

void draw() {
  background(0);
  text("received: " + inString, 10,50);
}

void serialEvent(Serial myport) {
  val = myPort.readStringUntil('\n');
  if ( val != null) {
    val = trim(val);
    println(val);
  //inString = (myPort.readString());
  if (inString.contains("Good")) {
    // trigger your action
  }
}
}

