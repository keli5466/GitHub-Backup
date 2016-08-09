int count = 6;
int val = 0;
 
void setup()
{
  Serial.begin(9600);
}
 
void loop()
{
  for (int i = 0;i<count;i++)
  {
    val = analogRead(i);
 
    Serial.print(val);
    Serial.print("\t");
  }
  Serial.println();
}
