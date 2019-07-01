#include "Arduino.h";
int val = 0;
int ledPin = 11;
int buzzerPin =12;
void setup() {
  pinMode(ledPin,OUTPUT);
  pinMode(buzzerPin,OUTPUT);
  Serial.begin(9600);
}
void loop () {
  val = Serial.read();

  if (val !=-1){
    if (val=='0'){
      digitalWrite(ledPin,HIGH);
      tone(buzzerPin,0);
      Serial.write("AKTİF");
    }
    else if (val=='1'){
      digitalWrite(ledPin,LOW);
      digitalWrite(buzzerPin, LOW);
      Serial.write("PASİF");
      }
}
}
