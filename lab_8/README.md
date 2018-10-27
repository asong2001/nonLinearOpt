# Non-linear Opt Lab 8 #

Intro. for lab 8

## Genetic Algorithms with Floating Point Representation ##

应该和上一个lab7的倒数第二题有点感觉。不过这个可是基因算法。
按照课件的算法是
1、产生初代（其实就是随机点）
2、演化种群（就是计算每个初代的每个点的自适应度）
3、循环
    1）selection
    2) crossover pc=0.8
    3) mutation

### step intro ###

#### selection ####

根据上一代的情况产生下一代。选择better和good的部分来当做父辈.
然后课件上面是有例子可以参考的。具体参考成什么样我现在也不知道。但是每次迭代的时候可以用函数来进行交叉变异，实际上是对数组的操作。

* 周六中午 *

决定先去吃饭。现在的问题是那个程序不会进行更新。也就是说优化的目的没有达到。
没有能够找到从哪里往下，坐标值不会变小，感觉应该是select没做好。