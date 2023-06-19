void setup() {
  pinMode(13, OUTPUT);  // Set pin 13 as output
}

void loop() {
  digitalWrite(13, HIGH);  // Turn on the LED
  delay(500);             // Wait for 1 second
  digitalWrite(13, LOW);   // Turn off the LED
  delay(500);             // Wait for 1 second
}
