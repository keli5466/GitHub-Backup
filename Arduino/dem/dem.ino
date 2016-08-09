int aIn = 0;    // Sensor center taps are connected to analog pins 0 - 5
int bIn = 1;    // 5V to each sensor and a common ground
int cIn = 2;  
int dIn = 3;
int eIn = 4;
int fIn = 5;

// Values
int aVal = 0;   // Variables to store the input from the sensors
int bVal = 0;  
int cVal = 0;  
int dVal = 0;
int eVal = 0;
int fVal = 0;

void setup()
{
 Serial.begin(9600);     // Open serial communication
}

void loop()
{
 aVal = analogRead(aIn);  // read input pins
 bVal = analogRead(bIn); 
 cVal = analogRead(cIn);  
 dVal = analogRead(dIn);
 eVal = analogRead(eIn);
 fVal = analogRead(fIn);

 Serial.print("A: ");     // ...then print the values.
 Serial.print(aVal);         
 Serial.print("\t"); 
 Serial.print("B: ");        
 Serial.print(bVal);
 Serial.print("\t");
 Serial.print("C: ");                
 Serial.print(cVal);
 Serial.print("\t");
 Serial.print("D: ");                
 Serial.print(dVal);
 Serial.print("\t");
 Serial.print("E: ");                
 Serial.print(eVal);
 Serial.print("\t");
 Serial.print("F: ");                
 Serial.println(fVal);
}
