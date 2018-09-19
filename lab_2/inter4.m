% inter2 for Excerise 3 Lab2
% 非线性方程组求解
% x 为系数矩阵，b为常数；Ax=b
% Data set
% 内置函数求解
clc;
clear;
%% 解方程
x=[0,2,2.8,4,5,6,7];
b=[0,-1,5,2,-1,5,8];
A=poly(x);
n=length(x);

%% plot
plot(x,b,'o');
grid on;
% axis([0 7 -20 50]);
% 0-level
x_axis=0:0.001:7;
zero_level=zeros(size(x_axis));
hold on
plot(transpose(x_axis),zero_level);

% 多项式曲线
y=polyval(A,x_axis);
plot(x_axis,y);

% 一阶导
first_order=polyder(A);
first_order_y=polyval(first_order,x_axis);
plot(x_axis,first_order_y);

% 最大最小值
% 前后差分
ymax=diff(sign(diff(y)))==-2;
ymin=diff(sign(diff(y)))==2;
Ymax=find(ymax);
Ymin=find(ymin);
s(1)=plot(x_axis(Ymax),y(Ymax),'x','Color','red');
s(2)=plot(x_axis(Ymin),y(Ymin),'x','Color','green');

legend({'Data Points','Zero Level','Interpolation Polynomial','First-Order Derivative','Local Maximun','Local Minimun'});