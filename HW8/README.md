### Jowen Eng May Lim 林应媚 520370990032
### 21级 视觉传达设计
### 创意编程 作业8 14.11.2021
# README - 创意编程研究：复杂性｜遗传优化算法

## 猴子拼字 介绍
- 案例参考：
    - https://natureofcode.com/book/chapter-9-the-evolution-of-code/
    - https://github.com/CodingTrain/website/tree/main/more/archive/nature-of-code/9-genetic-algorithms/9.4-looking-at-code/Processing/shakespeare
        - 结合该算法并进行拓展，做了一些改动和新增功能
- Infinite Monkey Theorem：
    - A monkey hitting keys randomly on a typewriter will eventually type the complete works of Shakespeare (given an infinite amount of time).
- 根据这个无限猴子定理以及该算法，我增加了一个功能
    - 根据user input来确定我们的目标词汇，而不是由系统内置的
    - 但这个功能有个缺点：
        - 为了要大写，必须按SHIFT/CAPS LOCK键，因此如果按了这些键，目标词汇里的array里也会出现该键
            - 比如： “Abc" 为 shift + a + b + c
            - 而Array就会储存4个内容，包括shift 
            - 因此算法永远跑不完，目标词汇也不会出现

### 运行初 - 要输入目标词汇
![start](https://user-images.githubusercontent.com/90959477/141685398-df325722-0de8-4f2b-8c64-8d460d039816.png)
### 运行中 - 右边为生成过的每一个不同词汇
![running](https://user-images.githubusercontent.com/90959477/141685393-b0de4ae0-27b2-41f2-907b-431982005ec0.png)
### 运行完毕 - 用时为84.154秒
![end](https://user-images.githubusercontent.com/90959477/141685391-5aedb5c3-fadd-4982-b73b-727125c17ed5.png)
### 完整效果
https://github.com/jowenlim/520370990032-LinYingMei/blob/main/HW8/Jowen_H8_animation.mp4




