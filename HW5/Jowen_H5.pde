int R = 255;
int G = 255;
int B = 255;
int bg_flag;

void setup() 
{
  size(1450,1025);
  PFont font;
  font = createFont("Century Gothic Bold",30);
  textFont(font,30);
  background(73,207,174);
  
  //drawboard
  fill(255);
  noStroke();
  rect(150,350,1150,650);
  
  //setting
  fill(187,249,232);//setting box
  rect(50,25,300,300,25);//background box
  rect(400,25,300,300,25);//line colour box
  rect(750,25,300,300,25);//stroke weight box
  rect(1100,25,300,300,25);//save box
  
  fill(140,140,120);//shading
  rect(1130,55,250,50,15);//eraser box
  rect(1130,155,250,50,15);//clear all box
  rect(1130,255,250,50,15);//save as pic box
  rect(80,55,250,50,15);//background text box
  rect(430,55,250,50,15);//line colour text box
  rect(780,55,250,50,15);//stroke weight text box
  
  fill(73,207,174);
  rect(1125,50,250,50,15);//eraser box
  rect(1125,150,250,50,15);//clear all box
  rect(1125,250,250,50,15);//save as pic box
  rect(75,50,250,50,15);//background text box
  rect(425,50,250,50,15);//line colour text box
  rect(775,50,250,50,15);//stroke weight text box
  
  fill(245);
  textSize(30);
  text("ERASER",1200,85);
  text("CLEAR ALL",1176,185);
  text("SAVE AS PIC",1164,285);
  
  fill(40);
  text("BACKGROUND",95,85);
  text("LINE COLOUR",455,85);
  text("STROKE WEIGHT",790,85);
  
  //setting choice
  
  //background
  fill(255);//white
  rect(100,150,50,50,15);
  fill(169,178,189);//gray
  rect(175,150,50,50,15);
  fill(0);//black
  rect(250,150,50,50,15);
  fill(249,243,204);//light yellow
  rect(100,225,50,50,15);
  fill(224,242,216);//light green
  rect(175,225,50,50,15);
  fill(223,224,239);//light blue
  rect(250,225,50,50,15);
  fill(229,22,0);
  circle(125,130,15);//bg white circle
  
  //line colour
  fill(255);//white
  rect(437.5,150,25,50,10);
  fill(169,178,189);//gray
  rect(487.5,150,25,50,10);
  fill(0);//black
  rect(537.5,150,25,50,10);
  fill(237,84,99);//red
  rect(587.5,150,25,50,10);
  fill(251,110,82);//orange
  rect(637.5,150,25,50,10);
  fill(255,206,84);//yellow
  rect(437.5,225,25,50,10);
  fill(161,212,105);//green
  rect(487.5,225,25,50,10);
  fill(79,193,233);//blue
  rect(537.5,225,25,50,10);
  fill(173,146,237);//purple
  rect(587.5,225,25,50,10);
  fill(237,135,192);//pink
  rect(637.5,225,25,50,10);
  fill(229,22,0);
  circle(450,130,15);//line white circle
  
  //stroke weight
  stroke(0);
  strokeWeight(4);
  line(800,160,800,279);
  strokeWeight(8);
  line(850,160,850,278);
  strokeWeight(12);
  line(900,160,900,277);
  strokeWeight(16);
  line(950,160,950,276);
  strokeWeight(20);
  line(1000,160,1000,275);
  noStroke();
  fill(229,22,0);
  circle(800,130,15);//stroke weight circle
  
  //default settings - background white
  bg_flag = 1;
  stroke(R,G,B);//line white
  strokeWeight(4);
}

void draw(){
  if (mousePressed){
    if ((mouseX>150) && (mouseX<1300) && (mouseY>350) && (mouseY<1000)){//drawboard limit
      line(mouseX,mouseY,pmouseX,pmouseY); stroke(R,G,B); 
    }
    if ((mouseX>1125) && (mouseX<1375) && (mouseY>250) && (mouseY<300)){//save2pic limit
      saveFrame("/paint/paint####.jpg");
    }
    if ((mouseX>100) && (mouseX<150) && (mouseY>150) && (mouseY<200)){//bg white
      fill(255); noStroke(); rect(150,350,1150,650); bg_flag = 1;
      fill(229,22,0); circle(125,130,15);
      fill(187,249,232); circle(200,130,15); circle(275,130,15); circle(125,295,15); circle(200,295,15); circle(275,295,15); 
    }
    if ((mouseX>175) && (mouseX<225) && (mouseY>150) && (mouseY<200)){//bg gray
      fill(169,178,189); noStroke(); rect(150,350,1150,650); bg_flag = 2;
      fill(229,22,0); circle(200,130,15);
      fill(187,249,232); circle(125,130,15); circle(275,130,15); circle(125,295,15); circle(200,295,15); circle(275,295,15);
    }
    if ((mouseX>250) && (mouseX<300) && (mouseY>150) && (mouseY<200)){//bg black
      fill(0); noStroke(); rect(150,350,1150,650); bg_flag = 3;
      fill(229,22,0); circle(275,130,15);
      fill(187,249,232); circle(125,130,15); circle(200,130,15); circle(125,295,15); circle(200,295,15); circle(275,295,15);
    }
    if ((mouseX>100) && (mouseX<150) && (mouseY>225) && (mouseY<275)){//bg light yellow
      fill(249,243,204); noStroke(); rect(150,350,1150,650); bg_flag = 4;
      fill(229,22,0); circle(125,295,15);
      fill(187,249,232); circle(125,130,15); circle(200,130,15); circle(275,130,15); circle(200,295,15); circle(275,295,15);
    }
    if ((mouseX>175) && (mouseX<225) && (mouseY>225) && (mouseY<275)){//bg light green
      fill(224,242,216); noStroke(); rect(150,350,1150,650); bg_flag = 5;
      fill(229,22,0); circle(200,295,15);
      fill(187,249,232); circle(125,130,15); circle(200,130,15); circle(275,130,15); circle(125,295,15); circle(275,295,15);
    }
    if ((mouseX>250) && (mouseX<300) && (mouseY>225) && (mouseY<275)){//bg light blue
      fill(223,224,239); noStroke(); rect(150,350,1150,650); bg_flag = 6;
      fill(229,22,0); circle(275,295,15);
      fill(187,249,232); circle(125,130,15); circle(200,130,15); circle(275,130,15); circle(125,295,15); circle(200,295,15); 
    }
    if ((mouseX>437.5) && (mouseX<462.5) && (mouseY>150) && (mouseY<200)){//line white
      R=255; G=255; B=255; noStroke(); fill(229,22,0); circle(450,130,15);
      fill(187,249,232); circle(500,130,15); circle(550,130,15); circle(600,130,15); circle(650,130,15); 
      circle(450,295,15); circle(500,295,15); circle(550,295,15); circle(600,295,15); circle(650,295,15);
    }
    if ((mouseX>487.5) && (mouseX<512.5) && (mouseY>150) && (mouseY<200)){//line gray
      R=169; G=178; B=189; noStroke(); fill(229,22,0); circle(500,130,15);
      fill(187,249,232); circle(450,130,15); circle(550,130,15); circle(600,130,15); circle(650,130,15); 
      circle(450,295,15); circle(500,295,15); circle(550,295,15); circle(600,295,15); circle(650,295,15); 
    }
    if ((mouseX>537.5) && (mouseX<562.5) && (mouseY>150) && (mouseY<200)){//line black
      R=0; G=0; B=0; noStroke(); fill(229,22,0); circle(550,130,15);
      fill(187,249,232); circle(500,130,15); circle(450,130,15); circle(600,130,15); circle(650,130,15); 
      circle(450,295,15); circle(500,295,15); circle(550,295,15); circle(600,295,15); circle(650,295,15);
    }
    if ((mouseX>587.5) && (mouseX<612.5) && (mouseY>150) && (mouseY<200)){//line red
      R=237; G=84; B=99; noStroke(); fill(229,22,0); circle(600,130,15);
      fill(187,249,232); circle(500,130,15); circle(550,130,15); circle(450,130,15); circle(650,130,15); 
      circle(450,295,15); circle(500,295,15); circle(550,295,15); circle(600,295,15); circle(650,295,15);
    }
    if ((mouseX>637.5) && (mouseX<662.5) && (mouseY>150) && (mouseY<200)){//line orange
      R=251; G=110; B=82; noStroke(); fill(229,22,0); circle(650,130,15);
      fill(187,249,232); circle(500,130,15); circle(550,130,15); circle(600,130,15); circle(450,130,15);  
      circle(450,295,15); circle(500,295,15); circle(550,295,15); circle(600,295,15); circle(650,295,15);
    }
    if ((mouseX>437.5) && (mouseX<462.5) && (mouseY>225) && (mouseY<275)){//line yellow
      R=255; G=206; B=84; noStroke(); fill(229,22,0); circle(450,295,15);
      fill(187,249,232); circle(500,130,15); circle(550,130,15); circle(600,130,15); circle(650,130,15); 
      circle(450,130,15); circle(500,295,15); circle(550,295,15); circle(600,295,15); circle(650,295,15);
    }
    if ((mouseX>487.5) && (mouseX<512.5) && (mouseY>225) && (mouseY<275)){//line green
      R=161; G=212; B=105; noStroke(); fill(229,22,0); circle(500,295,15);
      fill(187,249,232); circle(500,130,15); circle(550,130,15); circle(600,130,15); circle(650,130,15); 
      circle(450,295,15); circle(450,130,15); circle(550,295,15); circle(600,295,15); circle(650,295,15);
    }
    if ((mouseX>537.5) && (mouseX<562.5) && (mouseY>225) && (mouseY<275)){//line blue
      R=79; G=193; B=233; noStroke(); fill(229,22,0); circle(550,295,15);
      fill(187,249,232); circle(500,130,15); circle(550,130,15); circle(600,130,15); circle(650,130,15); 
      circle(450,295,15); circle(450,130,15); circle(500,295,15); circle(600,295,15); circle(650,295,15);
    }
    if ((mouseX>587.5) && (mouseX<612.5) && (mouseY>225) && (mouseY<275)){//line purple
      R=173; G=146; B=237; noStroke(); fill(229,22,0); circle(600,295,15);
      fill(187,249,232); circle(500,130,15); circle(550,130,15); circle(600,130,15); circle(650,130,15); 
      circle(450,295,15); circle(500,295,15); circle(550,295,15); circle(450,130,15); circle(650,295,15);
    }
    if ((mouseX>637.5) && (mouseX<662.5) && (mouseY>225) && (mouseY<275)){//line pink
      R=237; G=135; B=192; noStroke(); fill(229,22,0); circle(650,295,15);
      fill(187,249,232); circle(500,130,15); circle(550,130,15); circle(600,130,15); circle(650,130,15); 
      circle(450,295,15); circle(500,295,15); circle(550,295,15); circle(600,295,15); circle(450,130,15);
    }
    if ((mouseX>790) && (mouseX<810) && (mouseY>160) && (mouseY<280)){//weight 1
      strokeWeight(4); noStroke(); fill(229,22,0); circle(800,130,15); 
      fill(187,249,232); circle(850,130,15); circle(900,130,15); circle(950,130,15); circle(1000,130,15);
    }
    if ((mouseX>840) && (mouseX<860) && (mouseY>160) && (mouseY<280)){//weight 2
      strokeWeight(8); noStroke(); fill(229,22,0); circle(850,130,15); 
      fill(187,249,232); circle(800,130,15); circle(900,130,15); circle(950,130,15); circle(1000,130,15);
    }
    if ((mouseX>890) && (mouseX<910) && (mouseY>160) && (mouseY<280)){//weight 3
      strokeWeight(12); noStroke(); fill(229,22,0); circle(900,130,15); 
      fill(187,249,232); circle(800,130,15); circle(850,130,15); circle(950,130,15); circle(1000,130,15);
    }
    if ((mouseX>940) && (mouseX<960) && (mouseY>160) && (mouseY<280)){//weight 4
      strokeWeight(16); noStroke(); fill(229,22,0); circle(950,130,15); 
      fill(187,249,232); circle(850,130,15); circle(900,130,15); circle(800,130,15); circle(1000,130,15);
    }
    if ((mouseX>990) && (mouseX<1010) && (mouseY>160) && (mouseY<280)){//weight 5
      strokeWeight(20); noStroke(); fill(229,22,0); circle(1000,130,15); 
      fill(187,249,232); circle(850,130,15); circle(900,130,15); circle(950,130,15); circle(800,130,15); 
    }
    if ((mouseX>1130) && (mouseX<1380) && (mouseY>55) && (mouseY<105)){//eraser
      switch (bg_flag){
        case 1:
          R=255; G=255; B=255;//white
          break;
        case 2:
          R=169; G=178; B=189;//gray
          break;
        case 3:
          R=0; G=0; B=0;//black
          break;
        case 4:
          R=249; G=243; B=204;//yellow
          break;
        case 5:
          R=224; G=242; B=216;//green
          break;
        case 6:
          R=223; G=224; B=239;//blue
          break;
      }
    }
    if ((mouseX>1125) && (mouseX<1375) && (mouseY>150) && (mouseY<200)){//clear all
      switch (bg_flag){
        case 1:
          fill(255);//white
          break;
        case 2:
          fill(169,178,189);//gray
          break;
        case 3:
          fill(0);//black
          break;
        case 4:
          fill(249,243,204);//yellow
          break;
        case 5:
          fill(224,242,216);//green
          break;
        case 6:
          fill(223,224,239);//blue
          break;
      }
      noStroke(); 
      rect(150,350,1150,650);
    }
  }
}
