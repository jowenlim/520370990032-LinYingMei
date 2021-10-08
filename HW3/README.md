## Jowen Eng May Lim 林应媚 520370990032
## 21级 视觉传达设计
## 创意编程 作业3 08.10.2021
# README - 创造类似蒙德里安风格的图形

## 按ENTER可以随机生成下一个类似风格的图形

## 问题1 - 没有发挥class的真正用处
- 尝试利用class结构创造方块，让每个方块都是一个object，从而能增加一些特定的效果
- 但是由于技术和时间限制，无法自动生成连续一行接一行的长方形
- 只能重复利用for loop来一行一行随机生成长方形

## 问题2 - 想要做出方块一闪一闪的效果
- 尝试在class里做一个一闪一闪的效果的void function
- 比如每秒换一个灰度
- 但是又失败了，只会出现最终的颜色
- 又尝试在void setup里限制frameRate的速度，但是只会闪一个效果而已
- 过后就想在class里void drawBox function里先用switch loop限制5种灰度，然后再想办法找一闪一闪的函数的bug
- 结果没想到就这样达成一闪一闪的效果了！
- 意外的惊喜！

![效果图1](https://user-images.githubusercontent.com/90959477/136550064-d4f116f8-18ab-4d55-9383-d14d0c57115d.png)

![效果图2](https://user-images.githubusercontent.com/90959477/136550091-6dbf1f1e-c80f-4eb9-8566-d81ccd43ee3b.png)
