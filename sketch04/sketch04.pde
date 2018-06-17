import processing.serial.*;
Serial ser;
int state = 0;
PrintWriter output;
int pressTimes = 1;

void setup() {
  ser = new Serial(this, "/dev/cu.usbmodem14311", 115200);
}

void draw() {
  if (state == 1) {

  } 
}

void serialEvent(Serial port) {
  //println(port.read());
  output = createWriter("test.txt");
  int s = second();
  int m = minute();
  int h = hour();
  output.println(pressTimes + "times " + h + ":" + m + ":" + s);
  output.flush();
  output.close();

  pressTimes ++;
  if (state == 0) { 
    state = 1;
  } else {
    state = 0;
  }
}