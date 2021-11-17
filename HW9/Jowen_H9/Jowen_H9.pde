int R=255;
int G=0;
int B=0;
int grid_flag;
String typed = "";
String target;

void setup(){
  size(1920,1080);
  background(96);
  PFont font;
  font = createFont("Century Gothic Bold",30);
  textFont(font);
  noStroke();
  //drawing board
  fill(255);
  rect(880,40,960,960);
  //option box
  fill(75);
  rect(80,960,120,40,15,0,0,15);//filename
  rect(80,200,120,40,15);//grid
  rect(80,320,120,40,15,0,0,15);//color
  //save as pic
  fill(0);
  rect(640,960,160,40,15);
  //word
  fill(255);
  textSize(22);
  text("FILENAME",90,988);
  text("G R I D",105,228);
  text("C O L O R",89,348);
  text("SAVE AS PIC",655,988);
  //choice
  rect(200,960,400,40,0,15,15,0);//filename column
  rect(200,320,400,40,0,15,15,0);//color rgb column
  rect(240,200,80,80,15);//16
  rect(360,200,80,80,15);//32
  rect(480,200,80,80,15);//64
  rect(600,200,80,80,15);//128
  //clear all box
  fill(0);
  rect(720,200,80,80,15);
  //pixel box
  fill(255);
  rect(80,40,720,120,25);
  //grid size text
  fill(0);
  textSize(32);
  text("16",263,250);
  text("32",382,250);
  text("64",502,250);
  text("128",613,250);
  fill(255);
  textSize(22);
  text("CLEAR",727,235);
  text("ALL",743,260);
  //color option
  fill(71,0,44);rect(80,400,72,40);fill(117,0,73);rect(152,400,72,40);fill(164,0,102);rect(224,400,72,40);fill(211,0,133);rect(296,400,72,40);fill(255,0,162);rect(368,400,72,40);fill(255,33,179);rect(440,400,72,40);fill(255,88,196);rect(512,400,72,40);fill(255,136,213);rect(584,400,72,40);fill(255,184,230);rect(656,400,72,40);fill(255,232,246);rect(728,400,72,40);
  fill(42,0,71);rect(80,440,72,40);fill(70,0,118);rect(152,440,72,40);fill(99,0,165);rect(224,440,72,40);fill(127,0,212);rect(296,440,72,40);fill(155,0,255);rect(368,440,72,40);fill(173,21,255);rect(440,440,72,40);fill(191,85,255);rect(512,440,72,40);fill(210,135,255);rect(584,440,72,40);fill(228,183,255);rect(656,440,72,40);fill(246,231,255);rect(728,440,72,40);
  fill(0,3,71);rect(80,480,72,40);fill(0,2,118);rect(152,480,72,40);fill(0,0,165);rect(224,480,72,40);fill(0,0,213);rect(296,480,72,40);fill(0,0,255);rect(368,480,72,40);fill(42,55,255);rect(440,480,72,40);fill(91,104,255);rect(512,480,72,40);fill(138,148,255);rect(584,480,72,40);fill(185,191,255);rect(656,480,72,40);fill(232,234,255);rect(728,480,72,40);
  fill(0,36,71);rect(80,520,72,40);fill(0,60,118);rect(152,520,72,40);fill(0,85,164);rect(224,520,72,40);fill(0,108,212);rect(296,520,72,40);fill(0,133,255);rect(368,520,72,40);fill(35,156,255);rect(440,520,72,40);fill(88,177,255);rect(512,520,72,40);fill(136,200,255);rect(584,520,72,40);fill(184,222,255);rect(656,520,72,40);fill(232,244,255);rect(728,520,72,40);
  fill(0,57,71);rect(80,560,72,40);fill(0,95,117);rect(152,560,72,40);fill(0,132,164);rect(224,560,72,40);fill(0,169,211);rect(296,560,72,40);fill(0,207,255);rect(368,560,72,40);fill(23,217,255);rect(440,560,72,40);fill(85,225,255);rect(512,560,72,40);fill(135,234,255);rect(584,560,72,40);fill(183,242,255);rect(656,560,72,40);fill(231,251,255);rect(728,560,72,40);
  fill(1,71,0);rect(80,600,72,40);fill(0,117,0);rect(152,600,72,40);fill(0,164,0);rect(224,600,72,40);fill(0,211,0);rect(296,600,72,40);fill(0,255,0);rect(368,600,72,40);fill(46,566,0);rect(440,600,72,40);fill(99,255,81);rect(512,600,72,40);fill(145,255,133);rect(584,600,72,40);fill(189,255,182);rect(656,600,72,40);fill(233,255,231);rect(728,600,72,40);
  fill(48,71,0);rect(80,640,72,40);fill(80,117,0);rect(152,640,72,40);fill(113,163,0);rect(224,640,72,40);fill(144,211,0);rect(296,640,72,40);fill(177,255,0);rect(368,640,72,40);fill(190,255,0);rect(440,640,72,40);fill(205,255,78);rect(512,640,72,40);fill(219,255,132);rect(584,640,72,40);fill(234,255,182);rect(656,640,72,40);fill(248,255,231);rect(728,640,72,40);
  fill(70,71,0);rect(80,680,72,40);fill(116,117,0);rect(152,680,72,40);fill(162,163,0);rect(224,680,72,40);fill(209,211,0);rect(296,680,72,40);fill(255,255,0);rect(368,680,72,40);fill(255,255,38);rect(440,680,72,40);fill(255,255,76);rect(512,680,72,40);fill(255,255,131);rect(584,680,72,40);fill(255,255,181);rect(656,680,72,40);fill(255,255,231);rect(728,680,72,40);
  fill(70,55,0);rect(80,720,72,40);fill(117,92,0);rect(152,720,72,40);fill(163,128,0);rect(224,720,72,40);fill(210,165,0);rect(296,720,72,40);fill(255,201,0);rect(368,720,72,40);fill(255,211,0);rect(440,720,72,40);fill(255,221,80);rect(512,720,72,40);fill(255,231,133);rect(584,720,72,40);fill(255,241,182);rect(656,720,72,40);fill(255,250,231);rect(728,720,72,40);
  fill(71,39,0);rect(80,760,72,40);fill(117,65,0);rect(152,760,72,40);fill(163,92,0);rect(224,760,72,40);fill(211,118,0);rect(296,760,72,40);fill(255,144,0);rect(368,760,72,40);fill(255,165,17);rect(440,760,72,40);fill(255,185,84);rect(512,760,72,40);fill(255,206,134);rect(584,760,72,40);fill(255,226,183);rect(656,760,72,40);fill(255,245,231);rect(728,760,72,40);
  fill(71,27,0);rect(80,800,72,40);fill(117,45,0);rect(152,800,72,40);fill(164,62,0);rect(224,800,72,40);fill(211,80,0);rect(296,800,72,40);fill(255,97,0);rect(368,800,72,40);fill(255,127,26);rect(440,800,72,40);fill(255,155,86);rect(512,800,72,40);fill(255,184,135);rect(584,800,72,40);fill(255,212,183);rect(656,800,72,40);fill(255,241,231);rect(728,800,72,40);
  fill(71,0,0);rect(80,840,72,40);fill(117,0,0);rect(152,840,72,40);fill(164,0,0);rect(224,840,72,40);fill(211,0,0);rect(296,840,72,40);fill(255,0,0);rect(368,840,72,40);fill(255,42,34);rect(440,840,72,40);fill(255,91,89);rect(512,840,72,40);fill(255,138,137);rect(584,840,72,40);fill(255,185,184);rect(656,840,72,40);fill(255,232,232);rect(728,840,72,40);
  fill(0,0,0);rect(80,880,72,40);fill(28,28,28);rect(152,880,72,40);fill(57,57,57);rect(224,880,72,40);fill(85,85,85);rect(296,880,72,40);fill(113,113,113);rect(368,880,72,40);fill(142,142,142);rect(440,880,72,40);fill(170,170,170);rect(512,880,72,40);fill(198,198,198);rect(584,880,72,40);fill(227,227,227);rect(656,880,72,40);fill(255,255,255);rect(728,880,72,40);
  //pixel world
  fill(0);
  //p
  rect(100,60,16,16);rect(100,76,16,16);rect(100,92,16,16);rect(100,108,16,16);rect(100,124,16,16);
  rect(116,60,16,16);rect(116,92,16,16);
  rect(132,60,16,16);rect(132,92,16,16);
  rect(148,76,16,16);
  //i
  rect(180,60,16,16);rect(180,124,16,16);
  rect(196,60,16,16);rect(196,76,16,16);rect(196,92,16,16);rect(196,108,16,16);rect(196,124,16,16);
  rect(212,60,16,16);rect(212,124,16,16);
  //x
  rect(244,60,16,16);rect(244,76,16,16);rect(244,108,16,16);rect(244,124,16,16);
  rect(260,92,16,16);
  rect(276,60,16,16);rect(276,76,16,16);rect(276,108,16,16);rect(276,124,16,16);
  //e
  rect(308,60,16,16);rect(308,76,16,16);rect(308,92,16,16);rect(308,108,16,16);rect(308,124,16,16);
  rect(324,60,16,16);rect(324,92,16,16);rect(324,124,16,16);
  //l
  rect(356,60,16,16);rect(356,76,16,16);rect(356,92,16,16);rect(356,108,16,16);rect(356,124,16,16);
  rect(372,124,16,16);
  //w
  rect(444,60,16,16);rect(444,76,16,16);rect(444,92,16,16);rect(444,108,16,16);
  rect(460,124,16,16);
  rect(476,92,16,16);rect(476,108,16,16);
  rect(492,124,16,16);
  rect(508,60,16,16);rect(508,76,16,16);rect(508,92,16,16);rect(508,108,16,16);
  //o
  rect(540,76,16,16);rect(540,92,16,16);rect(540,108,16,16);
  rect(556,60,16,16);rect(556,124,16,16);
  rect(572,60,16,16);rect(572,124,16,16);
  rect(588,76,16,16);rect(588,92,16,16);rect(588,108,16,16);
  //r
  rect(620,60,16,16);rect(620,76,16,16);rect(620,92,16,16);rect(620,108,16,16);rect(620,124,16,16);
  rect(636,60,16,16);rect(636,92,16,16);
  rect(652,76,16,16);rect(652,108,16,16);rect(652,124,16,16);
  //l
  rect(684,60,16,16);rect(684,76,16,16);rect(684,92,16,16);rect(684,108,16,16);rect(684,124,16,16);
  rect(700,124,16,16);
  //d
  rect(732,60,16,16);rect(732,76,16,16);rect(732,92,16,16);rect(732,108,16,16);rect(732,124,16,16);
  rect(748,60,16,16);rect(748,124,16,16);
  rect(764,76,16,16);rect(764,92,16,16);rect(764,108,16,16);
}

void draw(){
  if (mousePressed){
    if ((mouseX>240) && (mouseX<320) && (mouseY>200) && (mouseY<280)){//16 grid
      noStroke();
      fill(255);
      rect(880,40,960,960);
      fill(96);
      rect(1841,41,40,980);
      rect(870,1001,980,40);
      grid_flag=1;
      for (int i=1; i<3; i++){
      textAlign(LEFT);
      fill(255);
      textSize(14);
      text(i,637+i*480,1020);//horizontal
      text(i,1850,-200+i*480);//vertical
      }
      for (int i=0; i<17; i++){
      stroke(200);
      strokeWeight(1);
      line(880+i*60,40,880+i*60,1000);//vertical
      line(880,40+i*60,1840,40+i*60);//horizontal
      }
      for (int i=0; i<17; i+=8){
      stroke(96);
      strokeWeight(1.4);
      line(880+i*60,40,880+i*60,1000);//vertical
      line(880,40+i*60,1840,40+i*60);//horizontal
      }
    }
    if ((mouseX>360) && (mouseX<440) && (mouseY>200) && (mouseY<280)){//32 grid
      noStroke();
      fill(255);
      rect(880,40,960,960);
      fill(96);
      rect(1841,41,40,980);
      rect(870,1001,980,40);
      grid_flag=2;
      for (int i=1; i<5; i++){
      textAlign(LEFT);
      fill(255);
      textSize(14);
      text(i,757+i*240,1020);//horizontal
      text(i,1850,-73+i*240);//vertical
      }
      for (int i=0; i<33; i++){
      stroke(200);
      strokeWeight(1);
      line(880+i*30,40,880+i*30,1000);//vertical
      line(880,40+i*30,1840,40+i*30);//horizontal
      }
      for (int i=0; i<33; i+=8){
      stroke(96);
      strokeWeight(1.4);
      line(880+i*30,40,880+i*30,1000);//vertical
      line(880,40+i*30,1840,40+i*30);//horizontal
      }
    }
    if ((mouseX>480) && (mouseX<560) && (mouseY>200) && (mouseY<280)){//64 grid
      noStroke();
      fill(255);
      rect(880,40,960,960);
      fill(96);
      rect(1841,41,40,980);
      rect(870,1001,980,40);
      grid_flag=3;
      for (int i=1; i<9; i++){
      textAlign(LEFT);
      fill(255);
      textSize(14);
      text(i,817+i*120,1020);//horizontal
      text(i,1850,-17+i*120);//vertical
      }
      for (int i=0; i<65; i++){
      stroke(200);
      strokeWeight(1);
      line(880+i*15,40,880+i*15,1000);//vertical
      line(880,40+i*15,1840,40+i*15);//horizontal
      }
      for (int i=0; i<65; i+=8){
      stroke(96);
      strokeWeight(1.4);
      line(880+i*15,40,880+i*15,1000);//vertical
      line(880,40+i*15,1840,40+i*15);//horizontal
      }
    }
    if ((mouseX>600) && (mouseX<680) && (mouseY>200) && (mouseY<280)){//128 grid
      noStroke();
      fill(255);
      rect(880,40,960,960);
      fill(96);
      rect(1841,41,40,980);
      rect(870,1001,980,40);
      grid_flag=4;
      for (int i=1; i<17; i++){
      textAlign(LEFT);
      fill(255);
      textSize(14);
      text(i,848+i*60,1020);//horizontal
      text(i,1850,15+i*60);//vertical
      }
      for (int i=0; i<129; i++){
      stroke(200);
      strokeWeight(1);
      line(880+i*7.5,40,880+i*7.5,1000);//vertical
      line(880,40+i*7.5,1840,40+i*7.5);//horizontal
      }
      for (int i=0; i<129; i+=8){
      stroke(96);
      strokeWeight(1.4);
      line(880+i*7.5,40,880+i*7.5,1000);//vertical
      line(880,40+i*7.5,1840,40+i*7.5);//horizontal
      }
    }
    if ((mouseX>720) && (mouseX<800) && (mouseY>200) && (mouseY<280)){//clear all
      noStroke();
      fill(255);
      rect(880,40,960,960);
      fill(96);
      rect(1841,41,40,980);
      rect(870,1001,980,40);
      grid_flag=0;
    }
    if ((mouseX>880) && (mouseX<1840) && (mouseY>40) && (mouseY<1000)){//drawing board
      noStroke();
      fill(R,G,B);
      switch (grid_flag){
        case 1://16
          for (int i=0; i<17; i++){
            for (int j=0; j<17;j++){
              if ((mouseX>880+i*60) && (mouseX<880+(i+1)*60) && (mouseY>40+j*60) && (mouseY<40+(j+1)*60)){rect(880+i*60,40+j*60,60,60);}
            }
          }
          break;
        case 2://32
          for (int i=0; i<33; i++){
            for (int j=0; j<33;j++){
              if ((mouseX>880+i*30) && (mouseX<880+(i+1)*30) && (mouseY>40+j*30) && (mouseY<40+(j+1)*30)){rect(880+i*30,40+j*30,30,30);}
            }
          }
          break;
        case 3://64
          for (int i=0; i<65; i++){
            for (int j=0; j<65;j++){
              if ((mouseX>880+i*15) && (mouseX<880+(i+1)*15) && (mouseY>40+j*15) && (mouseY<40+(j+1)*15)){rect(880+i*15,40+j*15,15,15);}
            }
          }
          break;
        case 4://128
          for (int i=0; i<129; i++){
            for (int j=0; j<129;j++){
              if ((mouseX>880+i*7.5) && (mouseX<880+(i+1)*7.5) && (mouseY>40+j*7.5) && (mouseY<40+(j+1)*7.5)){rect(880+i*7.5,40+j*7.5,7.5,7.5);}
            }
          }
          break;
      }
    }
    if ((mouseX>80) && (mouseX<800) && (mouseY>400) && (mouseY<920)){
    //color option
    //row 1
      if ((mouseX>80) && (mouseX<152) && (mouseY>400) && (mouseY<440)){R=71; G=0; B=44;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>400) && (mouseY<440)){R=117; G=0; B=73;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>400) && (mouseY<440)){R=164; G=0; B=102;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>400) && (mouseY<440)){R=211; G=0; B=133;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>400) && (mouseY<440)){R=255; G=0; B=162;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>400) && (mouseY<440)){R=255; G=33; B=179;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>400) && (mouseY<440)){R=255; G=88; B=196;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>400) && (mouseY<440)){R=255; G=136; B=213;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>400) && (mouseY<440)){R=255; G=184; B=230;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>400) && (mouseY<440)){R=255; G=232; B=246;}
    //row 2
      if ((mouseX>80) && (mouseX<152) && (mouseY>440) && (mouseY<480)){R=42; G=0; B=71;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>440) && (mouseY<480)){R=70; G=0; B=118;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>440) && (mouseY<480)){R=99; G=0; B=165;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>440) && (mouseY<480)){R=127; G=0; B=212;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>440) && (mouseY<480)){R=155; G=0; B=255;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>440) && (mouseY<480)){R=173; G=21; B=255;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>440) && (mouseY<480)){R=191; G=85; B=255;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>440) && (mouseY<480)){R=210; G=135; B=255;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>440) && (mouseY<480)){R=228; G=183; B=255;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>440) && (mouseY<480)){R=246; G=231; B=255;}
    //row 3
      if ((mouseX>80) && (mouseX<152) && (mouseY>480) && (mouseY<520)){R=0; G=3; B=71;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>480) && (mouseY<520)){R=0; G=2; B=118;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>480) && (mouseY<520)){R=0; G=0; B=165;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>480) && (mouseY<520)){R=0; G=0; B=213;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>480) && (mouseY<520)){R=0; G=0; B=255;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>480) && (mouseY<520)){R=42; G=55; B=255;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>480) && (mouseY<520)){R=91; G=104; B=255;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>480) && (mouseY<520)){R=138; G=148; B=255;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>480) && (mouseY<520)){R=185; G=191; B=255;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>480) && (mouseY<520)){R=232; G=234; B=255;}
    //row 4
      if ((mouseX>80) && (mouseX<152) && (mouseY>520) && (mouseY<560)){R=0; G=36; B=71;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>520) && (mouseY<560)){R=0; G=60; B=118;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>520) && (mouseY<560)){R=0; G=85; B=164;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>520) && (mouseY<560)){R=0; G=108; B=212;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>520) && (mouseY<560)){R=0; G=133; B=255;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>520) && (mouseY<560)){R=35; G=156; B=255;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>520) && (mouseY<560)){R=88; G=177; B=255;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>520) && (mouseY<560)){R=136; G=200; B=255;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>520) && (mouseY<560)){R=184; G=222; B=255;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>520) && (mouseY<560)){R=232; G=244; B=255;}
    //row 5
      if ((mouseX>80) && (mouseX<152) && (mouseY>560) && (mouseY<600)){R=0; G=57; B=71;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>560) && (mouseY<600)){R=0; G=95; B=117;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>560) && (mouseY<600)){R=0; G=132; B=164;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>560) && (mouseY<600)){R=0; G=169; B=211;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>560) && (mouseY<600)){R=0; G=207; B=255;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>560) && (mouseY<600)){R=23; G=217; B=255;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>560) && (mouseY<600)){R=85; G=225; B=255;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>560) && (mouseY<600)){R=135; G=234; B=255;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>560) && (mouseY<600)){R=183; G=242; B=255;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>560) && (mouseY<600)){R=231; G=251; B=255;}
    //row 6
      if ((mouseX>80) && (mouseX<152) && (mouseY>600) && (mouseY<640)){R=1; G=71; B=0;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>600) && (mouseY<640)){R=0; G=117; B=0;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>600) && (mouseY<640)){R=0; G=164; B=0;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>600) && (mouseY<640)){R=0; G=211; B=0;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>600) && (mouseY<640)){R=0; G=255; B=0;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>600) && (mouseY<640)){R=46; G=255; B=0;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>600) && (mouseY<640)){R=99; G=255; B=81;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>600) && (mouseY<640)){R=145; G=255; B=133;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>600) && (mouseY<640)){R=189; G=255; B=182;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>600) && (mouseY<640)){R=233; G=255; B=231;}
    //row 7
      if ((mouseX>80) && (mouseX<152) && (mouseY>640) && (mouseY<680)){R=48; G=71; B=0;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>640) && (mouseY<680)){R=80; G=117; B=0;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>640) && (mouseY<680)){R=113; G=163; B=0;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>640) && (mouseY<680)){R=144; G=211; B=0;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>640) && (mouseY<680)){R=177; G=255; B=0;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>640) && (mouseY<680)){R=190; G=255; B=0;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>640) && (mouseY<680)){R=205; G=255; B=78;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>640) && (mouseY<680)){R=219; G=255; B=132;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>640) && (mouseY<680)){R=234; G=255; B=182;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>640) && (mouseY<680)){R=248; G=255; B=231;}
    //row 8
      if ((mouseX>80) && (mouseX<152) && (mouseY>680) && (mouseY<720)){R=70; G=71; B=0;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>680) && (mouseY<720)){R=116; G=117; B=0;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>680) && (mouseY<720)){R=162; G=163; B=0;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>680) && (mouseY<720)){R=209; G=211; B=0;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>680) && (mouseY<720)){R=255; G=255; B=0;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>680) && (mouseY<720)){R=255; G=255; B=38;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>680) && (mouseY<720)){R=255; G=255; B=76;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>680) && (mouseY<720)){R=255; G=255; B=131;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>680) && (mouseY<720)){R=255; G=255; B=181;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>680) && (mouseY<720)){R=255; G=255; B=231;}
    //row 9
      if ((mouseX>80) && (mouseX<152) && (mouseY>720) && (mouseY<760)){R=70; G=55; B=0;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>720) && (mouseY<760)){R=117; G=92; B=0;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>720) && (mouseY<760)){R=163; G=128; B=0;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>720) && (mouseY<760)){R=210; G=165; B=0;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>720) && (mouseY<760)){R=255; G=201; B=0;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>720) && (mouseY<760)){R=255; G=211; B=0;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>720) && (mouseY<760)){R=255; G=221; B=80;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>720) && (mouseY<760)){R=255; G=231; B=133;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>720) && (mouseY<760)){R=255; G=241; B=182;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>720) && (mouseY<760)){R=255; G=250; B=231;}
    //row 10
      if ((mouseX>80) && (mouseX<152) && (mouseY>760) && (mouseY<800)){R=71; G=39; B=0;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>760) && (mouseY<800)){R=117; G=65; B=0;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>760) && (mouseY<800)){R=163; G=92; B=0;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>760) && (mouseY<800)){R=211; G=118; B=0;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>760) && (mouseY<800)){R=255; G=144; B=0;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>760) && (mouseY<800)){R=255; G=165; B=17;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>760) && (mouseY<800)){R=255; G=185; B=84;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>760) && (mouseY<800)){R=255; G=206; B=134;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>760) && (mouseY<800)){R=255; G=226; B=183;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>760) && (mouseY<800)){R=255; G=245; B=231;}
    //row 11
      if ((mouseX>80) && (mouseX<152) && (mouseY>800) && (mouseY<840)){R=71; G=27; B=0;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>800) && (mouseY<840)){R=117; G=45; B=0;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>800) && (mouseY<840)){R=164; G=62; B=0;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>800) && (mouseY<840)){R=211; G=80; B=0;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>800) && (mouseY<840)){R=255; G=97; B=0;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>800) && (mouseY<840)){R=255; G=127; B=26;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>800) && (mouseY<840)){R=255; G=155; B=86;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>800) && (mouseY<840)){R=255; G=184; B=135;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>800) && (mouseY<840)){R=255; G=212; B=183;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>800) && (mouseY<840)){R=255; G=241; B=231;}
    //row 12
      if ((mouseX>80) && (mouseX<152) && (mouseY>840) && (mouseY<880)){R=71; G=0; B=0;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>840) && (mouseY<880)){R=117; G=0; B=0;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>840) && (mouseY<880)){R=164; G=0; B=0;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>840) && (mouseY<880)){R=211; G=0; B=0;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>840) && (mouseY<880)){R=255; G=0; B=0;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>840) && (mouseY<880)){R=255; G=42; B=34;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>840) && (mouseY<880)){R=255; G=91; B=89;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>840) && (mouseY<880)){R=255; G=138; B=137;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>840) && (mouseY<880)){R=255; G=185; B=184;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>840) && (mouseY<880)){R=255; G=232; B=232;}
    //row 13
      if ((mouseX>80) && (mouseX<152) && (mouseY>880) && (mouseY<920)){R=0; G=0; B=0;}
      if ((mouseX>152) && (mouseX<224) && (mouseY>880) && (mouseY<920)){R=28; G=28; B=28;}
      if ((mouseX>224) && (mouseX<296) && (mouseY>880) && (mouseY<920)){R=57; G=57; B=57;}
      if ((mouseX>296) && (mouseX<368) && (mouseY>880) && (mouseY<920)){R=85; G=85; B=85;}
      if ((mouseX>368) && (mouseX<440) && (mouseY>880) && (mouseY<920)){R=113; G=113; B=113;}
      if ((mouseX>440) && (mouseX<512) && (mouseY>880) && (mouseY<920)){R=142; G=142; B=142;}
      if ((mouseX>512) && (mouseX<584) && (mouseY>880) && (mouseY<920)){R=170; G=170; B=170;}
      if ((mouseX>584) && (mouseX<656) && (mouseY>880) && (mouseY<920)){R=198; G=198; B=198;}
      if ((mouseX>656) && (mouseX<728) && (mouseY>880) && (mouseY<920)){R=227; G=227; B=227;}
      if ((mouseX>728) && (mouseX<800) && (mouseY>880) && (mouseY<920)){R=255; G=255; B=255;}
    noStroke();
    if (R==255 && G==255 && B==255){
    stroke(0);
    strokeWeight(0.5);
    }
    fill(255);
    rect(200,320,400,40,0,15,15,0);//color rgb column
    fill(R,G,B);
    rect(250,328,24,24);
    fill(0);
    textSize(22);
    text("R = " + R + " ; G = " + G + " ; B = " + B, 300, 348);
    }
    if ((mouseX>640) && (mouseX<800) && (mouseY>960) && (mouseY<1000)){
      saveFrame("/pixel/" + target + ".jpg");
    }

  }
  fill(0);
  textSize(22);
  text(typed,250,988);
}
void keyPressed(){
  if (key == '\n'){
    target = typed;
  } else if (key == BACKSPACE) {
    fill(255);
    rect(200,960,400,40,0,15,15,0);
    typed = "";
  } else {
    typed = typed + key;
  }
}
