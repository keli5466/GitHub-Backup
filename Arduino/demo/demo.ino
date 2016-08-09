  
#include "pitches.h"
//Constants:
const int ledPin = 3;   
const int sensorPin = A0; //pin A0 to read analog input
const int sensorPin2= A1;
int melody[] = {
  NOTE_C4, NOTE_G3, NOTE_G3, NOTE_A3, NOTE_G3, 0, NOTE_B3, NOTE_C4
};
int noteDurations[] = {
  4, 8, 8, 4, 4, 4, 4, 4
};
//Variables:
float value;
float weight;
float value2;//save analog value


void setup(){
  
  pinMode(3, OUTPUT);  //Set pin 3 as 'output' 
//  Serial.begin(9600);  //Begin serial communication
  pinMode(4, OUTPUT); 
//  digitalWrite(3, HIGH);
//  digitalWrite(4, HIGH);

//Serial.begin(9600);





  
}

void loop(){
  value = map(value, 0, 1023, 0, 255);
 value2 = map(value2,0,1023, 0, 255);
  value = analogRead(sensorPin);       //Read and save analog value from potentiometer
   Serial.println(value); 
   value2 = analogRead(sensorPin2);       //Read and save analog value from potentiometer
//   Serial.println(value2); 
  //Print value 
  //Map value 0-1023 to 0-255 (PWM)
 //analogWrite(ledPin, value);
  //digitalWrite(3, HIGH);
   //noTone(8);
   Serial.println("Hello, world!");
//wait 100 milliseconds so we don't drive ourselves crazy
//delay(100);

  weight = value2-value;
// Serial.println(abs(weight));

  if (weight >= 700){
    
  }


  if( value2 >= 200){
     
    digitalWrite(3, HIGH);
    //noTone(8);
     tone(8, 23, 30);
   
  }
  else {
    digitalWrite(3, LOW);
    noTone(8);
   
  }
    if( value >= 200){
     
    digitalWrite(4, HIGH);
    tone(8, 23, 30);
  }
  else {
    digitalWrite(4, LOW);
    noTone(8);
  }
   
    //Send PWM value to led
  
/*
  if (value >=600  && value2>=600) {
    digitalWrite(4,LOW);
    digitalWrite(3,LOW);
  }
  */
}
//  delay(100);                          //Small delay
  



