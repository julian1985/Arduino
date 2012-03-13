#include <Servo.h>

Servo servo1;

int potpin = 0;  // analog pin used to connect the potentiometer
int val;    // variable to read the value from the analog pin 
void setup()
{
  pinMode(13,OUTPUT);
  servo1.attach(9);
  Serial.begin(9600);
}

void loop()
{
  val = analogRead(potpin);            // reads the value of the potentiometer (value between 0 and 1023) 
  val = map(val, 0, 1023, 0, 300);     // scale it to use it with the servo (value between 0 and 180) 
  servo1.write(val);
  Serial.println(val);
}

