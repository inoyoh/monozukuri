import processing.serial.*;
Serial ser;
int state = 0;
PrintWriter output;
int pressTimes = 1;
String[] item = new String[pressTimes];

void setup() {
  ser = new Serial(this, "/dev/cu.usbmodem14311", 115200);
}

void draw() {
} 



void serialEvent(Serial port) {
  int s = second();
  int m = minute();
  int h = hour();

  int p = 0;
  item[p] = pressTimes + "1" + "2";
  //String[]  item = {str(s), "times "};
  
  saveStrings("test.csv", item );
  
  
  //println(port.read());  
  output = createWriter("test.txt");
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