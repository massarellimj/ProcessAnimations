
void setup() {
  size(1200, 700);
  
}

void draw() {
  background(255);
  bed();
  material();
  part();
  die();
     
}

void material() {
  fill(70);
  noStroke();
  quad(width/6 + 50, height, 5*width/6 - 50, height, width * 0.6, height / 1.5 - 83.33, width / 2.5, height / 1.5 - 83.33);
}

void part() {
  fill(255);
  noStroke();
  quad(width/3 + 100, height/1.5, width*0.67 - 100, height/1.5, width*0.67 - 130, height/1.5 - 35, width/3 + 130, height/1.5 - 35);
  quad(width/3 + 150, height/1.5 - 55, width*0.67 - 150, height/1.5 - 55, width/2 + 40, height/1.5 - 75, width/2 - 35, height/1.5 - 75);
}


void bed() {
  fill(180);
  quad(width/4, height/4, width*0.375, height/4, width*0.375, height*0.583, width/4, height - 100);
  quad(width*0.75, height/4, width*0.625, height/4, width*0.625, height*0.583, width*0.75, height-100);
  fill(200);
  quad(width*0.375, height*0.583, width/4, height - 100, width*0.75, height - 100, width*0.625, height*0.583);
  fill(255);
  quad(width / 4 + 50, height/1.35, width * 0.75 - 50, height / 1.35, width / 1.56, height / 1.5 - 50, width / 2.76, height / 1.5 - 50);
  rect(width / 4 + 50, height/1.35, (width * 0.75 - 50) - (width / 4 + 50), 20);
  noFill();
  rect(width/4, height / 4, width / 2, height*0.75-100);
  rect(width*0.375, height / 4, width / 4, height / 3);
}

void die() {
  fill(color(100,0,0));
  quad(width / 2.5 - 50, height/1.5 - 100, width * 0.6 + 50, height / 1.5 - 100, width - width / 2.5, height / 1.5 - 150, width / 2.5, height / 1.5 - 150);
  rect(width / 2.5 - 50, height/1.5 - 100, 340, 20);
  fill(130);
  noStroke();
  rect(width / 2.5 - 30, height/4, 20, height/1.5 - 105 - height/4);
  rect(width * 0.6 + 10, height/4, 20, height/1.5 - 105 - height/4);
  stroke(80);
  arc(width / 2.5 - 20, height/1.5 - 106, 20, 3, 0, PI);
  arc(width * 0.6 + 20, height/1.5 - 106, 20, 3, 0, PI);
  fill(100);
  noStroke();
  rect(width / 2.5 + 10, height/4, 20, height/1.5 - 145 - height/4);
  rect(width * 0.6 - 30, height/4, 20, height/1.5 - 145 - height/4);
  stroke(50);
  arc(width / 2.5 + 20, height/1.5 - 146, 20, 3, 0, PI);
  arc(width * 0.6 - 20, height/1.5 - 146, 20, 3, 0, PI);
}