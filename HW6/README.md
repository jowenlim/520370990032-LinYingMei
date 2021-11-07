### Jowen Eng May Lim 林应媚 520370990032
### 21级 视觉传达设计
### 创意编程 作业6 7.11.2021
# README - 创意编程研究：复杂性｜自组织与涌现性 | 粒子系统

## 粒子系统 介绍
### BALL COLLISION 不断碰壁以及撞击的球
- 系统设置在随机位置产生随机速度且半径为50的3颗球
- 球的颜色为随机
- 球在碰壁后会反弹
- 其中两颗球撞击后会改变运行方向，并且换颜色
- 两颗球在撞击的几帧中，会出现一闪一闪的效果，其实如果放慢观看，会发现那些一闪一闪的效果其实是球的颜色不断在换，且换得太快

### 撞击前
![Screenshot (135)](https://user-images.githubusercontent.com/90959477/140645186-150ddfa1-2d17-42a7-aa77-16666b5a4b37.png)
### 撞击后
![Screenshot (136)](https://user-images.githubusercontent.com/90959477/140645189-f3012b46-ad29-4e85-8077-eeab77891c3b.png)
### 完整效果
![ezgif com-gif-maker (2)](https://user-images.githubusercontent.com/90959477/140645190-9fb36a46-4f39-46d6-a90c-e382d5f9b4a6.gif)

## 希望能呈现的效果
- 每个粒子在每次撞击后会随机地加速或减速
- 随机产生随机数目的球，而不是系统早已设置的3颗 - 使用for loop
- 碰壁后，一颗球分裂成两颗球

## BUG
- 代码运行的越久，就会发现球的速度越来越快 
    - 其实需要再设置一些条件代码来控制球的速度，但是研究文献后发现有点搞不懂

## 参考文献
- https://natureofcode.com/book/chapter-1-vectors/
- https://processing.org/examples/circlecollision.html
- https://processing.org/examples/bouncybubbles.html
