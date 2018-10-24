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

#### 差分演化算法 ####

前面的已经有一个basic了，可以通过修改数据产生新的结果。那就先来做这个好了。

查分演化算法还是比较经典的。按照课件上的步骤是：
1、生成初代种群（随机）N个
2、对于每一个产生的种群进行：
    1）随机选择三个个体；
    2）随机产生一个索引；
    3）由此来重组个体，重组方式为
        ·随机产生r [0,1]
        ·若 i = p 或 r<CR，yi = yi^1+
        ·根据条件迭代
