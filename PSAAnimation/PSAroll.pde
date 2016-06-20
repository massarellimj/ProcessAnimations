class PSAroll {
  float xPos, yPos, diameter, radius, lineX, lineY;
  color str;
  


  PSAroll(color tempStroke, float tempX, float tempY, float tempD, float tempLx, float tempLy) {
    str = tempStroke;
    xPos = tempX;
    yPos = tempY;
    diameter = tempD;
    lineX = tempLx;
    lineY = tempLy;
    radius = diameter / 2;
}

void display(float angle) {
  fill(255,82,82);
  stroke(str);
  rollWidth();
  topRollerWidth();
  ellipse(xPos, yPos, diameter, diameter);
  fill(50);
  ellipse(xPos, yPos, diameter / 5, diameter / 5);
  float x = xPos + cos(angle)*radius;
  float y = yPos + sin(angle)*radius;
  float xP = xPos - cos(angle)*radius;
  float yP = yPos - sin(angle)*radius;
  line(x, y, xP, yP);
  //released();
  topRoller(angle);
  
}
  
void rollWidth() {
  fill(255,82,82);
  stroke(str);
  float x1 = xPos + cos(radians(60))*radius;
  float y1 = yPos - sin(radians(60))*radius;
  float x2 = xPos + cos(radians(240))*radius;
  float y2 = yPos - sin(radians(240))*radius;
  float x3 = xPos - cos(radians(10))*(diameter*2);
  float y3 = yPos - sin(radians(10))*(diameter*2);
  float x4 = x3 + cos(radians(60))*diameter;
  float y4 = y3 - sin(radians(60))*diameter;
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
  arc(x3+cos(radians(60))*(radius+2), y3 - sin(radians(60))*(radius-1),diameter,diameter,radians(118),radians(302));
}

void released() {
  fill(255, 82, 82);
  noStroke();
  float xa = xPos - cos(radians(30))*radius;
  float ya = yPos - sin(radians(30))*radius;
  float xb = xPos - cos(radians(30))*(5*(radius-1));
  float yb = yPos - sin(radians(30))*(5*(radius-3));
  quad(xa, ya, xb, yb, xb - 100, yb + 150, xa - 100, ya + 150);
  stroke(str);
  line(xa, ya, xa - 100, ya + 150);
  line(xb, yb, xb - 100, yb + 150);

}

void topRoller(float angle) {
  fill(150);
  ellipse(xPos - 100, yPos + 150, diameter, diameter);
  fill(50);
  ellipse(xPos - 100, yPos + 150, diameter / 5, diameter / 5);
  float w = xPos - 100 + cos(angle)*radius;
  float v = yPos + 150 + sin(angle)*radius;
  float wP = xPos - 100 - cos(angle)*radius;
  float vP = yPos + 150 - sin(angle)*radius;
  line(w, v, wP, vP);
}
void topRollerWidth() {
  fill(150);
  stroke(str);
  float w1 = xPos - 100 + cos(radians(60))*radius;
  float v1 = yPos + 150 - sin(radians(60))*radius;
  float w2 = xPos - 100;
  float v2 = yPos + 150;
  float w3 = xPos - 100 - cos(radians(30))*(5*(radius-1));
  float v3 = yPos + 150 - sin(radians(30))*(5*(radius-3));
  float w4 = w3 + cos(radians(60))*diameter;
  float v4 = v3 - sin(radians(60))*diameter;
  float w5 = xPos - 100 - cos(radians(10))*(diameter*2);
  float v5 = yPos + 150 - sin(radians(10))*(diameter*2);
  quad(w1, v1, w2, v2, w3, v3, w4, v4);
  arc(w5+cos(radians(60))*(radius+2), v5 - sin(radians(60))*(radius-1),diameter,diameter,radians(118),radians(302));
}
}