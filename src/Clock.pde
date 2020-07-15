int moron = 0;
void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  translate(0, 500);
  rotate(radians(-90));
  int min = minute();
  int secs = second();
  int hrs = hour();
  float m = map(min, 0, 60, 0, 360);
  float s = map(secs, 0, 60, 0, 360);
  float h = map(hrs % 12, 0, 12, 0, 360);
  float lol = map(moron, 0, 50, 0, 360);
  
  stroke(255, 70, 55);
  strokeWeight(4);
  noFill();
  arc(250, 250, 280, 280, radians(0), radians(m));
  
  stroke(55, 70, 255);
  noFill();
  arc(250, 250, 300, 300, radians(0), radians(s));
  
  stroke(55, 255, 70);
  noFill();
  arc(250, 250, 260, 260, radians(0), radians(h));
  
  stroke(80, 20, 175);
  noFill();
  arc(250, 250, 320, 320, radians(0), radians(lol));
  
  if(moron == 60) {
    moron = 0;
  }
  
  moron++;
}
