# Introduction #

## Non-linear optimization lab 7 ##

A guide to finish the tasks in this lab.

### Multiple-run Gradient method ###

随机设定几个点然后比较都随机迭代几次，之后选择最小值作为opt。

梯度要用负方向。然后我使用牛顿法写的。
syms 来求梯度.

周二早上八点
决定先把后面的算法写完再来测试不同的函数。

fp的函数表达式看不懂为什么要有norm

### Ramdon Search ###

随机产生20个点，然后迭代1000次，取最小的。
感觉可以做一做性能比较。

然后开始做smart的
什么叫smart呢？——新的点做一个新的叠加。
x_new = lamda\*x_new + (1-lamda)\*x_best

### Differential Evolution Algorithm ###

