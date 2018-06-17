int state = 0;

void setup() {
  pinMode(2,INPUT);
  Serial.begin(115200);
}

void loop() {
  if(digitalRead(2) == HIGH && state == 0){
    delay(100);
    Serial.write("1");
    state = 1;
  }
  else if(digitalRead(2) == LOW && state == 1){
    delay(100);
    state = 0;
  }
}
