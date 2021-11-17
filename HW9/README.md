### Jowen Eng May Lim 林应媚 520370990032
### 21级 视觉传达设计
### 创意编程 第九次作业：大作业｜自拟课程设计项目
# 设计工具软件开发计划书
# 《 PIXEL WORLD 像素世界 》

## 灵感来源
- 来自小时候玩的游戏机的画面
- 例如：很经典的任天堂的马里奥游戏以及神奇宝贝GBA游戏
![Pokemon-gba](https://user-images.githubusercontent.com/90959477/142154649-3f93f02f-dafb-4d6e-8ad7-f091d8ad3809.png)
![Pokemon-gba-scenery](https://user-images.githubusercontent.com/90959477/142154656-f9e565a3-74cc-4d9d-a4e9-0cc4e4c64a2c.png)
---

## 功能介绍
### 1. 页面设置
- 页面是1920*1080大小，一运行就可覆盖整个电脑屏幕
- 页面采用黑白灰色调
- 在屏幕左上角，有利用个个小方块画成的 “PIXEL WORLD”，这个字体就类似像素风格的字体，中文的话可以翻译成像素世界
- 这软件具有调整画板像素大小、选择颜色及根据自己特定的名字保存画板的功能
![页面设置](https://user-images.githubusercontent.com/90959477/142155406-b1132f2e-976b-43f6-9360-c7b81352745a.png)

### 2. 画板像素大小
- 画板可选择4种像素大小：16 * 16、32 * 32、64 * 64以及128 * 128
- 这四种大小是经典的PIXEL ART的大小
- 另外还有 “CLEAR ALL” 的按钮，功能为清空画板，只要点击这个按钮，画板就会变成全白色，然后再点击想要的像素大小就可以了
    1. 16*16 
    ![像素16](https://user-images.githubusercontent.com/90959477/142155411-00c0c51b-24dd-4fde-b5bb-09cc74da9510.png)
    2. 32*32
    ![像素32](https://user-images.githubusercontent.com/90959477/142155414-c0ae9876-7ece-41dc-9867-aae061481ebd.png)
    3. 64*64
    ![像素64](https://user-images.githubusercontent.com/90959477/142155415-ddec8fd7-9d3b-4359-95d2-52ff9f1e24c4.png)
    4. 128*128    
    ![像素128](https://user-images.githubusercontent.com/90959477/142155418-a6e16242-4cc8-4fed-9f9c-a0d9c921c9f5.png)
    
- 编程思路为：
    - 每点击一个相应的按钮，就会画出一个新的白色正方形，再接着画出该像素的大小，线条以及刻度
```ruby
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
```

### 3. 颜色选项
- 一共有130种颜色供选择
- 分别为13种主色以及其相应的10种深至浅的颜色选项
- 每选中一个颜色，颜色对应的RGB数值以及其颜色小方块，会在 “COLOR” 的右边显示
![颜色预览](https://user-images.githubusercontent.com/90959477/142155408-e49c252c-3055-4063-8784-8b806f4740d1.png)

- 编程思路为：
    - 每点击一个按钮，就会设置系统为每个颜色相对应的RGB数值，这样软件就只能画出一种RGB数值的颜色
```ruby
if ((mouseX>80) && (mouseX<800) && (mouseY>400) && (mouseY<920)){
    //color option
    //row 1
      if ((mouseX>80) && (mouseX<152) && (mouseY>400) && (mouseY<440)){R=71; G=0; B=44;}
```
```ruby
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
```

### 4. 保存画板
- 可在 “FILENAME” 右边打出特定的文件名字，并点击 “SAVE AS PIC” 保存画板为JPG格式
- 下面的作品以 “travis1”的名字保存
    ![Travis1](https://user-images.githubusercontent.com/90959477/142155410-6d7ad109-1996-4d8d-99c8-3a0bbae2c2bf.png)
- 具体步骤为：
    1. 点击 “FILENAME” 右边的白色格子
    2. 利用键盘打出想要的文件名字
    3. 按键盘上的 “ENTER”，然后点击 “SAVE AS PIC”的按钮，画板就会在PIXEL文件夹里保存为JPG格式
    4. 如果打错字了，只要按键盘上的 “BACKSPACE”， 就可以重新打出来
- 编程思路为: 
    - 使用keyPressed函数以及if statement

```ruby
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
```
```ruby
if ((mouseX>640) && (mouseX<800) && (mouseY>960) && (mouseY<1000)){
      saveFrame("/pixel/" + target + ".jpg");
    }
```
---

## 人机交互方式 - 如何画像素画
- 具体步骤
    1. 选择想要的像素大小
    2. 选择想要的颜色
    3. 在画板上点击方块，方块就会被选择的颜色填满
    4. 根据这个方式画出想要的像素画
    5. 如果格子难分辨，画板旁边有刻度，8个小方块为一个小区域
- 编程思路为：
    - 使用mousePressed函数以及for loop来确认每一个方块是否有被点击到
    - 使用到了switch statement以及grid_flag这个参数，每个像素大小分别对应1、2、3以及4
    - “CLEAR ALL”选项的grid_flag为0，这样无论怎么点，只要没有选择像素大小，画板就不会画出小方块
```ruby
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
```
```ruby
if ((mouseX>720) && (mouseX<800) && (mouseY>200) && (mouseY<280)){//clear all
      noStroke();
      fill(255);
      rect(880,40,960,960);
      fill(96);
      rect(1841,41,40,980);
      rect(870,1001,980,40);
      grid_flag=0;
    }
```
---

## 输入与输出
- 输入
    1. 鼠标点击像素大小，颜色选项，以及方块，以画出想要的像素画
    2. 键盘打出想要的文件名字，以该名字保存画板

- 输出
    1. 在画板上形成像素画
    2. JPG格式的作品

---
## 示范视频
-  附带软件说明以及作品展示
 
[![Watch the video](https://i.imgur.com/vKb2F1B.png)](https://user-images.githubusercontent.com/90959477/142159050-8d5df860-fb96-40b6-bddb-f204454c861c.mp4)

---

## 示范性作品
![Jowen_H9_示范性作品](https://user-images.githubusercontent.com/90959477/142189467-0d989303-f8f0-4af2-aa4d-cd1ac56543f5.jpg)
- 16*16的像素
![pokemonball](https://user-images.githubusercontent.com/90959477/142155387-7a35608e-cafb-4610-94b4-0f2300171875.jpg)
- 32*32的像素
![charmander](https://user-images.githubusercontent.com/90959477/142155382-a126de7a-1352-483f-8fe2-440183bf8733.png)
- 64*64的像素
![charmeleon](https://user-images.githubusercontent.com/90959477/142155370-613c1e26-7324-43f9-b82f-aa2c06693a15.png)
- 128*128的像素

![charizard](https://user-images.githubusercontent.com/90959477/142155379-67c5a035-1568-4072-ae34-cfee3672a24a.png)
- 4个作品的缩时录影视频 

--- 

## 软件说明书预览 - A3纸 
![Jowen_H9_软件说明书](https://user-images.githubusercontent.com/90959477/142189258-fe868eb6-e5ea-4a24-9097-8623afeb15c2.jpg)
