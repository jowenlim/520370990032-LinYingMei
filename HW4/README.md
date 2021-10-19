### Jowen Eng May Lim 林应媚 520370990032
### 21级 视觉传达设计
### 创意编程 作业4 19.10.2021
# README - 基于文本数据的创意呈现

## 七彩的国歌
- 彩虹的七种颜色分别对应了英文字母A-Z , . ; - ！ SPACE
- 大写字母颜色较深
- 由ABCDEFG为一列，以此类推
- 创作思想
    - 想尝试利用色彩呈现出各个国家的国歌的歌词
    - 有一个意外的收获
        - 或许这些颜色呈现出来的效果能展现一个国家的特性
        - 比如马来西亚国歌歌词的颜色效果 
            - 一眼看上去就很红，很多红色方块 
            - 红色给我的感觉就是热 - 可以是热情，也可以是热闹，天气炎热
            - 恰巧这就是马来西亚给人的感觉

## 最最最大问题 - 常用电脑的processing读取不了txt file
- 这是浪费我最多时间的地方
- 问了老师还有助教，他们的电脑运行都没问题，只有我的电脑显示
    "The file "Korea_Aegukga.txt" is missing or inaccessible, make sure the URL is valid or that the file has been added to your sketch and is readable.
    NullPointerException"
- 后来换了另外一台电脑 - 没想到就能运行了
- 目前还没找出我的电脑哪里出问题了 - 测试过用读取文件的形式 (readLine) 读txt file - 显示找不到指定文件

## 希望能呈现的效果
- 我希望由歌词组成的小方块能在画板上居中对齐
- 但是用了rectMode(CENTER) - 效果不对
- 或许要自己做另外一套算法
