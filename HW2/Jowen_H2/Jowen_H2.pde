float xx;
float yy;
float xx2;
float yy2;
float xx3;
float yy3;
float xx4;
float yy4;
float transparency;
float choice_mode;
float front_limit;
float back_limit;
float choice_fill;
float choice_shape;

void setup() {
  size(800, 800);
  background(255);//background to be white
  frameRate(4);//set drawing limit per second
  choice_mode = int(random(0,4));//set drawing mode
  switch(int(choice_mode)){
    case 0://only draw triangle and quadrilateral
      front_limit = 0;
      back_limit = 1.2;
      break;
    case 1://only draw rectangle and square
      front_limit = 2;
      back_limit = 3.2;
      break;
    case 2://only draw ellipse and circle
      front_limit = 4;
      back_limit = 5.2;
      break;
    case 3://can draw all six different shapes
      front_limit = 0;
      back_limit = 5.2;
      break;
  }
}

void draw() {
  xx = mouseX;
  yy = mouseY;
  noStroke();
  transparency = random(0, 255);//random capacity of shape fill
  choice_fill = int(random(0, 3));
  choice_shape = int(random(front_limit, back_limit));//random 6 different shapes
  xx2 = random(0, 200);
  yy2 = random(0, 200);
  xx3 = random(0, 400);
  yy3 = random(0, 400);
  xx4 = random(0, 600);
  yy4 = random(0, 600);
  switch(int(choice_fill)) {
    case 0:
      fill(209,17,17, transparency);//red
      break;
    case 1:
      fill(17,51,118, transparency);//blue
      break;
    case 2:
      fill(255,243,0, transparency);//yellow
      break;
  }
  switch (int(choice_shape)){
    case 0:
      quad(xx, yy, xx+xx2, yy+yy2, xx+xx3, yy+yy3, xx+xx4, yy+yy4);
      break;
    case 1:
      triangle(xx, yy, xx+xx2, yy+yy2, xx+xx3, yy+yy3);
      break;
    case 2:
      rect(xx, yy, xx3, yy3);
      break;
    case 3:
      square(xx, yy, xx3);
      break;
    case 4:
      ellipse(xx, yy, xx3, yy3);
      break;
    case 5:
      circle(xx, yy, xx2);
      break;
  }
}
