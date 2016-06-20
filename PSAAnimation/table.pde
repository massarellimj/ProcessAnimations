class table {
  float xPos, yPos, rWidth, rHeight;
  color f, s;
  
  table(color tempF, color tempS, float tempX, float tempY, float tempW, float tempH) {
    s = tempS;
    f = tempF;
    xPos = tempX;
    yPos = tempY;
    rWidth = tempW;
    rHeight = tempH;
  }
  
 void display() {
   fill(f);
   stroke(s);
   rect(xPos, yPos, rWidth, rHeight); 
  }
}