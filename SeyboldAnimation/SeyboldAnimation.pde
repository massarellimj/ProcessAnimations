PShape material, blade, strip, gap, pile;
float xLeft, xRight, xSide, yTop, yBottom, xCut, yStrip;
boolean start, firstCut, cut, firstMove, move, advance;


void setup() {
  size(1200, 700);
  xLeft = 100;
  xRight = 300;
  yTop = 200;
  yBottom = 250;
  xCut = xRight;
  yStrip = yTop;
  start = true;
}


void draw() {
  background(255);
  set();
  cut();
  move();
  advance();
  delay(50);
}

void set() {
  if(start) {
    material = createShape(RECT, xLeft, yBottom, xRight - xLeft, height - yBottom);
    material.setFill(color(120,120,120));
    strip = createShape(RECT, xLeft, yTop, xRight - xLeft, yBottom - yTop);
    strip.setFill(color(120,120,120));
    blade = createShape(TRIANGLE, xRight, yBottom, xRight + 8, yBottom + 2, xRight + 8, yBottom - 2);
    blade.setFill(color(200, 0, 0));
    blade.setStroke(color(200, 0, 0));
    shape(strip);
    shape(material);
    shape(blade);
    start = false;
    firstCut = true;
  }
}

void cut() {
  if (firstCut) {
    if (xCut > xLeft - 8) {
      blade = createShape(TRIANGLE, xCut, yBottom, xCut + 8, yBottom + 2, xCut + 8, yBottom - 2);
      blade.setFill(color(200, 0, 0));
      blade.setStroke(color(200, 0, 0));
      gap = createShape(TRIANGLE, xCut, yBottom, xRight, yBottom, xRight, yBottom - 2);
      gap.setFill(color(255,255,255));
      gap.setStroke(false);
      shape(material);
      shape(strip);
      shape(gap);
      shape(blade);
      xCut = xCut - 4;
    } else {
      firstCut = false;
      xCut = xRight;
      firstMove = true;
    }
  } else if (cut) {
    if (xCut > xLeft - 8) {
      blade = createShape(TRIANGLE, xCut, yBottom, xCut + 8, yBottom + 2, xCut + 8, yBottom - 2);
      blade.setFill(color(200, 0, 0));
      blade.setStroke(color(200, 0, 0));
      gap = createShape(TRIANGLE, xCut, yBottom, xRight, yBottom, xRight, yBottom - 2);
      gap.setFill(color(255,255,255));
      gap.setStroke(false);
      shape(material);
      shape(strip);
      shape(pile);
      shape(gap);
      shape(blade);
      xCut = xCut - 4;
    } else {
      cut = false;
      xCut = xRight;
      move = true;
    }
  }
}

void move() {
  if (firstMove) {
    if (yStrip > 100) {
      strip = createShape(RECT, xLeft, yStrip, xRight - xLeft, yBottom - 2 - yTop);
      strip.setFill(color(120,120,120));
      shape(strip);
      shape(material);
      shape(blade);
      yStrip = yStrip - 2;
    } else {
      firstMove = false;
      yStrip = 200;
      advance = true;
    }
  } else if (move) {
    if (yStrip > 100) {
      strip = createShape(RECT, xLeft, yStrip, xRight - xLeft, yBottom - 2 - yTop);
      strip.setFill(color(120,120,120));
      shape(strip);
      shape(pile);
      shape(material);
      shape(blade);
      yStrip = yStrip - 2;
    } else {
      move = false;
      yStrip = 200;
      advance = true;
    }
  }
}

void advance() {
  if (advance) {
    if (yBottom > yTop) {
      material = createShape(RECT, xLeft, yBottom, xRight - xLeft, height - yTop);
      material.setFill(color(120,120,120));
      pile = createShape(RECT, xLeft, 100, xRight - xLeft, 50);
      pile.setFill(color(120,120,120));
      shape(material);
      shape(pile);
      shape(blade);
      yBottom = yBottom - 2;
    } else {
      advance = false;
      yBottom = 250;
      strip = createShape(RECT, xLeft, yTop, xRight - xLeft, yBottom - yTop);
      strip.setFill(color(120,120,120));
      cut = true;
    }
  }
}

    