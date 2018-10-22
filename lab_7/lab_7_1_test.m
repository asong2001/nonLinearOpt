
% 那就可以用这个例子来计算梯度了
clc;
clear;
close all;

% 创建函数
syms x y;
XY = [x;y];
fxy = ((1-x).^2+100*((y-x.^2).^2));
fxy_grad = gradient(fxy,XY);
xi = 1.1;
yi = 1.2;

xy_grad = subs(fxy_grad,XY,[xi;yi]);
