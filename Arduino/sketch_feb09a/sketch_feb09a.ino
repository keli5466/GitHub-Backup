

//Constants:
const int ledPin = 3;   
const int sensorPin = A0; //pin A0 to read analog input

//Variables:
int value; //save analog value


void setup(){
  
  pinMode(ledPin, OUTPUT);  //Set pin 3 as 'output' 
  Serial.begin(9600);       //Begin serial communication
pinMode(3, OUTPUT);


  
}

void loop(){
   value = map(value, 0, 1023, 0, 255);
  value = analogRead(sensorPin);       //Read and save analog value from potentiometer
  Serial.println(value);               //Print value
  //Map value 0-1023 to 0-255 (PWM)
 //analogWrite(ledPin, value);
  if( value >= 600){
     
    digitalWrite(3, HIGH);
  }
  else {
    digitalWrite(3, LOW);
  }
    //Send PWM value to led
  }
 // delay(100);                          //Small delay
  



