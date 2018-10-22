syms x1 x2;
 X = [x1;x2];
 fx = x1-x2+2*x1^2+2*x1*x2+x2^2;
gradx = gradient(fx,X); %计算梯度函数
 
 
ret = subs(gradx,X,[1 2]) ; %计算在点(1,2)处梯度
 