# Non-linear Opt Lab 10 #

4 tasks

## 1 Auxiliary Functions ##

生成几个后面要用到的函数。画图的、测量性能的函数

## 2 Random Sampling ##

随机采样，每次都随机产生N个点，然后比较距离。如果最新的总的norm小那就更新。

## 3 Latin Hypercube Sampling ##

按照N个点分成N个sub区间然后随机进行分布。横竖都是。
一般来说，可以使用公式 r = a + (b-a).*rand(N,1) 生成区间 (a,b) 内的 N 个随机数。

11.11 3:09
选点的序列不对

11.13 10:46 
应该算是做好了。参见LHS_V2

## 4 Optimization-Based Sampling Algorithm ##