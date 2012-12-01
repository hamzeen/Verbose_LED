/**
 * A simple arduino sketch to control the default 
 * light emitting diode (LED) found on an ARDUINO UNO board 
 * using keyboard input.
 * 
 * @author Hamzeen. H.
 * @created 12-01-2012
 */

int pin = 13; //use the inbuilt LED

void setup() {
  Serial.begin(9600);
  pinMode(pin, OUTPUT);
}

void loop() {
  while(Serial.available() == 0);
  int val = Serial.read() - '0';
  if(val == 1){
    Serial.println("LED is On");
    digitalWrite(pin, HIGH);
  } else if(val == 0){
    Serial.println("LED is Off");
    digitalWrite(pin, LOW);
  } else{
    Serial.println("Invalid Input");
  }
  Serial.flush();
}
