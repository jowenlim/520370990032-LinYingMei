void setup() {
  size(800,800);
  noStroke();
  background(255);
  frameRate(8);
}

void blue_bubble(){
  //1st round
  fill(69,169,218,60); circle(400,400,800);
  //2nd round
  fill(69,169,218,60); circle(200,400,400); circle(600,400,400); circle(400,200,400); circle(400,600,400);
  //3rd round
  fill(69,169,218,90); circle(100,400,200); circle(300,400,200); circle(500,400,200); circle(700,400,200);
  circle(200,300,200); circle(400,300,200); circle(600,300,200); circle(200,500,200); circle(400,500,200); circle(600,500,200);
  circle(300,200,200); circle(500,200,200); circle(300,600,200); circle(500,600,200); circle(100,400,200); circle(700,400,200);
  //4th round
  fill(69,169,218,120); 
  circle(50,400,100);
  circle(100,350,100); circle(100,450,100);
  circle(150,300,100); circle(150,400,100); circle(150,500,100);
  circle(200,250,100); circle(200,350,100); circle(200,450,100); circle(200,550,100); 
  circle(250,200,100); circle(250,300,100); circle(250,400,100); circle(250,500,100); circle(250,600,100);
  circle(300,150,100); circle(300,250,100); circle(300,350,100); circle(300,450,100); circle(300,550,100); circle(300,650,100);
  circle(350,100,100); circle(350,200,100); circle(350,300,100); circle(350,400,100); circle(350,500,100); circle(350,600,100); circle(350,700,100);
  circle(400,50,100); circle(400,150,100); circle(400,250,100); circle(400,350,100); circle(400,450,100); circle(400,550,100); circle(400,650,100); circle(400,750,100);
  circle(450,100,100); circle(450,200,100); circle(450,300,100); circle(450,400,100); circle(450,500,100); circle(450,600,100); circle(450,700,100);
  circle(500,150,100); circle(500,250,100); circle(500,350,100); circle(500,450,100); circle(500,550,100); circle(500,650,100);
  circle(550,200,100); circle(550,300,100); circle(550,400,100); circle(550,500,100); circle(550,600,100);
  circle(600,250,100); circle(600,350,100); circle(600,450,100); circle(600,550,100); 
  circle(650,300,100); circle(650,400,100); circle(650,500,100);
  circle(700,350,100); circle(700,450,100);
  circle(750,400,100);
}

void white_bubble(){
  //1st round
  fill(255,60); circle(400,400,800);
  //2nd round
  fill(255,60); circle(200,400,400); circle(600,400,400); circle(400,200,400); circle(400,600,400);
  //3rd round
  fill(255,90); circle(100,400,200); circle(300,400,200); circle(500,400,200); circle(700,400,200);
  circle(200,300,200); circle(400,300,200); circle(600,300,200); circle(200,500,200); circle(400,500,200); circle(600,500,200);
  circle(300,200,200); circle(500,200,200); circle(300,600,200); circle(500,600,200); circle(100,400,200); circle(700,400,200);
  //4th round
  fill(255,120); 
  circle(50,400,100);
  circle(100,350,100); circle(100,450,100);
  circle(150,300,100); circle(150,400,100); circle(150,500,100);
  circle(200,250,100); circle(200,350,100); circle(200,450,100); circle(200,550,100); 
  circle(250,200,100); circle(250,300,100); circle(250,400,100); circle(250,500,100); circle(250,600,100);
  circle(300,150,100); circle(300,250,100); circle(300,350,100); circle(300,450,100); circle(300,550,100); circle(300,650,100);
  circle(350,100,100); circle(350,200,100); circle(350,300,100); circle(350,400,100); circle(350,500,100); circle(350,600,100); circle(350,700,100);
  circle(400,50,100); circle(400,150,100); circle(400,250,100); circle(400,350,100); circle(400,450,100); circle(400,550,100); circle(400,650,100); circle(400,750,100);
  circle(450,100,100); circle(450,200,100); circle(450,300,100); circle(450,400,100); circle(450,500,100); circle(450,600,100); circle(450,700,100);
  circle(500,150,100); circle(500,250,100); circle(500,350,100); circle(500,450,100); circle(500,550,100); circle(500,650,100);
  circle(550,200,100); circle(550,300,100); circle(550,400,100); circle(550,500,100); circle(550,600,100);
  circle(600,250,100); circle(600,350,100); circle(600,450,100); circle(600,550,100); 
  circle(650,300,100); circle(650,400,100); circle(650,500,100);
  circle(700,350,100); circle(700,450,100);
  circle(750,400,100);
}

void draw() {
  if (keyPressed == true) {
    white_bubble();
  } else {
    blue_bubble();
  }
}
