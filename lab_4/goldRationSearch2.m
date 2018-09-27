% Non-Linear Optimization Lab 4
% Golden Ratio Search
% 用数组储存数据
clc;
clear;
close all;

t=(1+sqrt(5))/2;
f2=@(x) (x-2).^2;
f1=@(x) x.^2+3*exp(-2*x);

%% function 1
% 绘制函数图像
xn=zeros(1,4);
% 设置初始值
xn(1)=0;
xn(2)=10;

figure(1);
x=xn(1):0.1:xn(2);
plot(x,f1(x));
hold on;

fn=f1(xn);
iter=abs(fn(1)-fn(2));
% xn=[x1 x2 x3 x4]
while iter > 0.001
    xn(3)=xn(2)-(xn(2)-xn(1))./t;
    xn(4)=(xn(2)-xn(1))./t+xn(1);
    
    fn=f1(xn);
    
    for k=1:1:4
        plot(xn(k),fn(k),'o');
        hold on
    end
    
    % 找出最小的两个数及其索引
    fnX=[xn;fn];
    least=sort(fn);
    tmpXn(1)=xn(find(fnX(2,:)==least(1)));
    tmpXn(2)=xn(find(fnX(2,:)==least(2)));
    
    tmpXn2=sort(tmpXn);
    xn(1)=tmpXn2(1);
    xn(2)=tmpXn2(2);    

    fn(1)=least(1);
    fn(2)=least(2);

    iter=abs(fn(1)-fn(2));
    
end
y_index=find(fn==min(fn));
plot(xn(y_index),min(fn),'o');
title({'optimal value is',num2str(min(fn))});
    
