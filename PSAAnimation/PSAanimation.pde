PSAroll psa;
topRoll tR;
//table tbl;
float angle;

void setup() {
  size(1000, 500);
  psa = new PSAroll(0, 300, 100, 50, 300, 50);
  //tbl = new table(50, 0, 300, 400, 100, 10);
  tR = new topRoll(0, 200, 250, 50, 200, 125);
  angle = TWO_PI;
}

void draw() {
  background(255); 
  psa.display(angle);
  //tbl.display();
  //tR.display(angle);
  angle = angle - PI/64;
  if (angle < 0) {
    angle = TWO_PI;
  }
  delay(100);
}