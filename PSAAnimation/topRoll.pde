class topRoll {
  float xPos, yPos, diameter, radius, lineX, lineY;
  color str;
  
  topRoll(color tempStroke, float tempX, float tempY, float tempD, float tempLx, float tempLy) {
    str = tempStroke;
    xPos = tempX;
    yPos = tempY;
    diameter = tempD;
    lineX = tempLx;
    lineY = tempLy;
    radius = diameter / 2;
}

void display(float angle) {
  fill(142);
  stroke(str);
  ellipse(xPos, yPos, diameter, diameter);
  fill(50);
  ellipse(xPos, yPos, diameter / 5, diameter / 5);
  float x = xPos + cos(angle)*radius;
  float y = yPos + sin(angle)*radius;
  float xP = xPos - cos(angle)*radius;
  float yP = yPos - sin(angle)*radius;
  line(x, y, xP, yP);
}


}