int firstSensor = 2;    // lightsensor
int secondSensor = 3; //potentiometer
int test1=0; 
int test2=0;

void setup()
{
Serial.begin(9600);
}

void loop()
{
 test1=analogRead(firstSensor);
 delay(10);
 test2=analogRead(secondSensor);
 delay(10);
  
 Serial.print("A"); //potentiometer REading
 delay(10);
 Serial.print(test2, DEC);
 Serial.print(0, byte);
 
 Serial.print("B");//lightSensor REading
 delay(10);
 Serial.print(test1, DEC);
 Serial.print(0, BYTE);
 delay (50);
}

