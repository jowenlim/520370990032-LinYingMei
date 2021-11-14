Box[] grayBoxs1;
Box[] grayBoxs2;
Box[] grayBoxs3;
Box[] grayBoxs4;
Box[] grayBoxs5;
Box[] grayBoxs6;
Box[] grayBoxs7;
int totalNumBoxs = 20;
float widthLimit;

void setup() {
  size(800, 800);
  background(255);
  frameRate(4);
  initiateData();
}

void initiateData() {
  grayBoxs1 = new Box[totalNumBoxs];
  grayBoxs2 = new Box[totalNumBoxs];
  grayBoxs3 = new Box[totalNumBoxs];
  grayBoxs4 = new Box[totalNumBoxs];
  grayBoxs5 = new Box[totalNumBoxs];
  grayBoxs6 = new Box[totalNumBoxs];
  grayBoxs7 = new Box[totalNumBoxs];
  float boxWidth; 
  float boxHeight1 = random(50, 400);//height random but consistent for each row
  float boxHeight2 = random(50, 400);
  float boxHeight3 = random(50, 400);
  float boxHeight4 = random(50, 400);
  float boxHeight5 = random(50, 400);
  float boxHeight6 = random(50, 400);
  float boxHeight7 = random(50, 400);
  for (int i=0; i<grayBoxs1.length; i++) {
    boxWidth = random(50, 500);
    if (i==0) {
      grayBoxs1[i] = new Box(0, 0, boxWidth, boxHeight1);
    } else {
      grayBoxs1[i] = new Box(grayBoxs1[i-1].bX+grayBoxs1[i-1].bW, 0, boxWidth, boxHeight1);
    }
  }
  for (int i=0; i<grayBoxs2.length; i++) {
    boxWidth = random(50, 500);
    if (i==0) {
      grayBoxs2[i] = new Box(0, boxHeight1, boxWidth, boxHeight2);
    } else {
      grayBoxs2[i] = new Box(grayBoxs2[i-1].bX+grayBoxs2[i-1].bW, boxHeight1, boxWidth, boxHeight2);
    }
  }
  for (int i=0; i<grayBoxs3.length; i++) {
    boxWidth = random(50, 500);
    if (i==0) {
      grayBoxs3[i] = new Box(0, boxHeight1+boxHeight2, boxWidth, boxHeight3);
    } else {
      grayBoxs3[i] = new Box(grayBoxs3[i-1].bX+grayBoxs3[i-1].bW, boxHeight1+boxHeight2, boxWidth, boxHeight3);
    }
  }
  for (int i=0; i<grayBoxs4.length; i++) {
    boxWidth = random(50, 500);
    if (i==0) {
      grayBoxs4[i] = new Box(0, boxHeight1+boxHeight2+boxHeight3, boxWidth, boxHeight4);
    } else {
      grayBoxs4[i] = new Box(grayBoxs4[i-1].bX+grayBoxs4[i-1].bW, boxHeight1+boxHeight2+boxHeight3, boxWidth, boxHeight4);
    }
  }
  for (int i=0; i<grayBoxs5.length; i++) {
    boxWidth = random(50, 500);
    if (i==0) {
      grayBoxs5[i] = new Box(0, boxHeight1+boxHeight2+boxHeight3+boxHeight4, boxWidth, boxHeight5);
    } else {
      grayBoxs5[i] = new Box(grayBoxs5[i-1].bX+grayBoxs5[i-1].bW, boxHeight1+boxHeight2+boxHeight3+boxHeight4, boxWidth, boxHeight5);
    }
  }
  for (int i=0; i<grayBoxs6.length; i++) {
    boxWidth = random(50, 500);
    if (i==0) {
      grayBoxs6[i] = new Box(0, boxHeight1+boxHeight2+boxHeight3+boxHeight4+boxHeight5, boxWidth, boxHeight6);
    } else {
      grayBoxs6[i] = new Box(grayBoxs6[i-1].bX+grayBoxs6[i-1].bW, boxHeight1+boxHeight2+boxHeight3+boxHeight4+boxHeight5, boxWidth, boxHeight6);
    }
  }
  for (int i=0; i<grayBoxs7.length; i++) {
    boxWidth = random(50, 500);
    if (i==0) {
      grayBoxs7[i] = new Box(0, boxHeight1+boxHeight2+boxHeight3+boxHeight4+boxHeight5+boxHeight6, boxWidth, boxHeight7);
    } else {
      grayBoxs7[i] = new Box(grayBoxs7[i-1].bX+grayBoxs7[i-1].bW, boxHeight1+boxHeight2+boxHeight3+boxHeight4+boxHeight5+boxHeight6, boxWidth, boxHeight7);
    }
  }
}

void draw() {
  background(255);
  for (int i=0; i < 20; i++) {
    grayBoxs1[i].drawBox();  
    grayBoxs2[i].drawBox(); 
    grayBoxs3[i].drawBox(); 
    grayBoxs4[i].drawBox();  
    grayBoxs5[i].drawBox(); 
    grayBoxs6[i].drawBox(); 
    grayBoxs7[i].drawBox();
  }
}

void keyPressed() {
  if (key == ENTER) {
    initiateData();
  }
}

class Box {
  float bX, bY, bW, bH;
  //bX = x-coordinate
  //bY = y-coordinate
  //bw = width - random
  //bH = height - set by initial setup
  //bT = tranparency
  Box(float bX_, float bY_, float bW_, float bH_) {
    bX = bX_;
    bY = bY_;
    bW = bW_;
    bH = bH_;
  }

  void drawBox() {
    stroke(0);
    strokeWeight(8);
    int transparency = floor(random(0, 5));
    switch(transparency) {
    case 0:
      fill(255);
      break;
    case 1:
      fill(50);
      break;
    case 2:
      fill(150);
      break;
    case 3:
      fill(100);
      break;
    case 4:
      fill(200);
      break;
    }
    rect(bX, bY, bW, bH);
  }
}
