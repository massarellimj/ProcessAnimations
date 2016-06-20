float xLeft, yUp, yDown, xCenter, xRight, pY;
PShape front, bed, outer, rod1, rod2, brace, material, 
  part1, part2, part3; 
boolean left, center, right, upL, upC, upR, downL, downC, downR, 
  upL2, upC2, upR2, downL2, downC2, downR2, advance, 
  shift1, shift2, shift3, shift4, restart;

void setup() {
  size(1200, 700);
  xLeft = 200;
  xCenter = 300;
  xRight = 400;
  yDown = 300;
  yUp = 250;
  pY = 200;
  downL = true;
}


void draw() {
  background(255);
  frame();
  firstLower();
  firstRaise();
  shift1();
  secondLower();
  secondRaise();
  shift2();
  thirdLower();
  thirdRaise();
  advance();
  shift3();
  shift4();
  delay(10);
}

void frame() {
  bed = createShape(RECT, 180, 325, 340, 25);
  bed.setFill(color(150, 150, 150));
  outer = createShape(RECT, 180, 180, 340, 145);
  outer.setFill(false);
  outer.setStroke(color(0, 0, 0));
  rod1 = createShape(RECT, 180, 185, 340, 10);
  rod1.setFill(color(0, 0, 0));
  material = createShape(RECT, 600, 180, 300, 200);
  material.setFill(color(150, 100, 50));
  shape(rod1);
  shape(bed);
  shape(outer);
  shape(material);
}

void firstLower() {
  if (downL) {
    if (yUp < 300) {
      front = createShape(RECT, xLeft, yUp, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xLeft + 40, 195, 20, yUp - 195);
      rod2.setFill(color(150, 150, 150));
      shape(front);
      shape(rod2);
      yUp++;
    } else {
      downL = false;
      upL = true;
      yUp = 200;
    }
  } else if (downL2) {
    if (yUp < 300) {
      front = createShape(RECT, xLeft, yUp, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xLeft + 40, 195, 20, yUp - 195);
      rod2.setFill(color(150, 150, 150));
      shape(front);
      shape(rod2);
      shape(part2);
      shape(part3);
      yUp++;
    } else {
      downL2 = false;
      upL2 = true;
      yUp = 250;
    }
  }
}

void firstRaise() {
  if (upL) {
    if (yDown > 250) {
      part1 = createShape(RECT, 620, 200, 50, 50);
      part1.setFill(color(255, 255, 255));
      part1.setStroke(false);
      front = createShape(RECT, xLeft, yDown, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xLeft + 40, 195, 20, yDown - 195);
      rod2.setFill(color(150, 150, 150));
      shape(rod2);
      shape(front);
      shape(part1);
      yDown--;
    } else {
      upL = false;
      shift1 = true;
      yDown = 300;
      yUp = 250;
    }
  } else if (upL2) {
    if (yDown > 250) {
      part1 = createShape(RECT, 620, 200, 50, 50);
      part1.setFill(color(255, 255, 255));
      part1.setStroke(false);
      front = createShape(RECT, xLeft, yDown, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xLeft + 40, 195, 20, yDown - 195);
      rod2.setFill(color(150, 150, 150));
      shape(rod2);
      shape(front);
      shape(part1);
      shape(part2);
      shape(part3);
      yDown--;
    } else {
      upL2 = false;
      advance = true;
      restart = true;
      yDown = 300;
      yUp = 250;
    }
  }
}

void shift1() {
  if (shift1) {
    if (xLeft < 300) {
      front = createShape(RECT, xLeft, yUp, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xLeft + 40, 195, 20, 55);
      rod2.setFill(color(150, 150, 150));
      shape(rod2);
      shape(front);
      shape(part1);
      xLeft++;
    } else {
      shift1 = false;
      downC = true;
      xLeft = 200;
    }
  }
}

void secondLower() {
  if (downC) {
    if (yUp < 300) {
      front = createShape(RECT, xCenter, yUp, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xCenter + 40, 195, 20, yUp - 195);
      rod2.setFill(color(150, 150, 150));
      shape(rod2);
      shape(front);
      shape(part1);
      yUp++;
    } else {
      downC = false;
      upC = true;
      yUp = 250;
    }
  } else if (downC2) {
    if (yUp < 300) {
      front = createShape(RECT, xCenter, yUp, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xCenter + 40, 195, 20, yUp - 195);
      rod2.setFill(color(150, 150, 150));
      shape(rod2);
      shape(front);
      shape(part1);
      shape(part2);
      shape(part3);
      yUp++;
    } else {
      downC2 = false;
      upC2 = true;
      yUp = 250;
    }
  }
}

void secondRaise() {
  if (upC) {
    if (yDown > 250) {
      part2 = createShape(RECT, 720, 200, 50, 50);
      part2.setFill(color(255, 255, 255));
      part2.setStroke(false);
      front = createShape(RECT, xCenter, yDown, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xCenter + 40, 195, 20, yDown - 195);
      rod2.setFill(color(150, 150, 150));
      shape(rod2);
      shape(front);
      shape(part1);
      shape(part2);
      yDown--;
    } else {
      upC = false;
      shift2 = true;
      yDown = 300;
    }
  } else if (upC2) {
    if (yDown > 250) {
      part2 = createShape(RECT, 720, 200, 50, 50);
      part2.setFill(color(255, 255, 255));
      part2.setStroke(false);
      front = createShape(RECT, xCenter, yDown, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xCenter + 40, 195, 20, yDown - 195);
      rod2.setFill(color(150, 150, 150));
      shape(rod2);
      shape(front);
      shape(part2);
      shape(part3);
      yDown--;
    } else {
      upC2 = false;
      shift4 = true;
      yDown = 300;
    }
  }
}

void shift2() {
  if (shift2) {
    if (xCenter < 400) {
      front = createShape(RECT, xCenter, yUp, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xCenter + 40, 195, 20, 55);
      rod2.setFill(color(150, 150, 150));
      shape(rod2);
      shape(front);
      shape(part1);
      shape(part2);
      xCenter++;
    } else {
      shift2 = false;
      downR = true;
      xCenter = 300;
    }
  }
}

void thirdLower() {
  if (downR) {
    if (yUp < 300) {
      front = createShape(RECT, xRight, yUp, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xRight + 40, 195, 20, yUp - 195);
      rod2.setFill(color(150, 150, 150));
      shape(rod2);
      shape(front);
      shape(part1);
      shape(part2);
      yUp++;
    } else {
      downR = false;
      upR = true;
      yUp = 250;
    }
  } else if (downR2) {
    if (yUp < 300) {
      front = createShape(RECT, xRight, yUp, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xRight + 40, 195, 20, yUp - 195);
      rod2.setFill(color(150, 150, 150));
      shape(rod2);
      shape(front);
      shape(part3);
      yUp++;
    } else {
      downR2 = false;
      upR2 = true;
      yUp = 250;
    }
  }
}

void thirdRaise() {
  if (upR) {
    if (yDown > 250) {
      part3 = createShape(RECT, 820, 200, 50, 50);
      part3.setFill(color(255, 255, 255));
      part3.setStroke(false);
      front = createShape(RECT, xRight, yDown, 100, 25);
      front.setFill(color(100, 0, 0));
      rod2 = createShape(RECT, xRight + 40, 195, 20, yDown - 195);
      rod2.setFill(color(150, 150, 150));
      shape(rod2);
      shape(front);
      shape(part1);
      shape(part2);
      shape(part3);
      yDown--;
    } else {
      yDown = 300;
      upR = false;
      advance = true;
    }
  } else if (upR2) {
      if (yDown > 250) {
        part3 = createShape(RECT, 820, 200, 50, 50);
        part3.setFill(color(255, 255, 255));
        part3.setStroke(false);
        front = createShape(RECT, xRight, yDown, 100, 25);
        front.setFill(color(100, 0, 0));
        rod2 = createShape(RECT, xRight + 40, 195, 20, yDown - 195);
        rod2.setFill(color(150, 150, 150));
        shape(rod2);
        shape(front);
        shape(part3);
        yDown--;
      } else {
        yDown = 300;
        upR2 = false;
        shift3 = true;
      }
  }
 }

  void advance() {
    if (advance) {
      if (pY > 128) {
        part1 = createShape(RECT, 620, pY, 50, 50);
        part2 = createShape(RECT, 720, pY, 50, 50);
        part3 = createShape(RECT, 820, pY, 50, 50);
        part1.setFill(color(255, 255, 255));
        part2.setFill(color(255, 255, 255));
        part3.setFill(color(255, 255, 255));
        part1.setStroke(false);
        part2.setStroke(false);
        part3.setStroke(false);
        shape(part1);
        shape(part2);
        shape(part3);
        shape(outer);
        shape(rod1);
        shape(rod2);
        shape(bed);
        shape(front);
        pY--;
      } else {
        if (restart) {
          downL = true;
          restart = false;
        } else {
          downR2 = true;
        }
        advance = false;
        pY = 200;
      }
    }
  }

  void shift3() {
    if (shift3) {
      if (xRight > 300) {
        front = createShape(RECT, xRight, yUp, 100, 25);
        front.setFill(color(100, 0, 0));
        rod2 = createShape(RECT, xRight + 40, 195, 20, yUp - 195);
        rod2.setFill(color(150, 150, 150));
        shape(front);
        shape(rod2);
        shape(outer);
        shape(rod1);
        shape(part3);
        xRight--;
      } else {
        shift3 = false;
        xRight = 400;
        downC2 = true;
      }
    }
  }
  
   void shift4() {
    if (shift4) {
      if (xCenter > 200) {
        front = createShape(RECT, xCenter, yUp, 100, 25);
        front.setFill(color(100, 0, 0));
        rod2 = createShape(RECT, xCenter + 40, 195, 20, yUp - 195);
        rod2.setFill(color(150, 150, 150));
        shape(front);
        shape(rod2);
        shape(outer);
        shape(rod1);
        shape(part2);
        shape(part3);
        xCenter--;
      } else {
        shift4 = false;
        xCenter = 300;
        downL2 = true;
      }
    }
  }