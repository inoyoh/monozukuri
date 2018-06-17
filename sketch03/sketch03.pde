import processing.serial.*;
Serial ser;
int state = 0;
PrintWriter output;
int press = 0;

void setup() {
  ser = new Serial(this, "/dev/cu.usbmodem14311", 115200);
  output = createWriter("test.txt");

}

void draw() {
  if (state == 1) {

  } 
}

void serialEvent(Serial port) {
  //println(port.read());
  int s = second();
  int m = minute();
  int h = hour();
  output.println(h + ":" + m + ":" + s);
  output.flush();
  //output.close();

  if (state == 0) { 
    state = 1;
  } else {
    state = 0;
  }
}