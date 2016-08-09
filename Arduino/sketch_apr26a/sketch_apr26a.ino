const int numReadings =3;   // how many readings to average
int readings[numReadings];   // the readings from the analog input
int index = 0;               // the index of the current reading
int total = 0;               // the running total
int average = 0;             // the average

void setup(){
  for (int thisReading = 0; thisReading < numReadings; thisReading++)
    readings[thisReading] = 0;
}

void loop() {

  total= total - readings[index];     // subtracts the last reading      
  readings[index] = analogRead(inputPin);   // reads from the sensor
  total= total + readings[index];         // adds the reading to the total
  index = index + 1;                  // advance to the next position in the array  
  if (index >= numReadings)    // if we're at the end of the array
    index = 0;             //wrap around to the beginning               
  average = total / numReadings;    //Averages the readings
}

