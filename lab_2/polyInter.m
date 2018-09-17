% Exercise 3 for Lab2
% Polynomial Interpolation
% Given set{(0,0),(2,-2),(2.8,5),(4,2),(5,-1),(6,5),(7,8)}
clc;
clear;
% …Ë÷√◊¯±Í÷·
% x0=0:7;
% y0=-50:20;
% [X,Y]=meshgrid(x0,y0);

x=[0,2,2.8,4,5,6,7];
y=[0,-2,5,2,-1,5,8];
plot(x,y,'o');
grid on;
axis([0 7 -20 50]);

% 0-level
x_axis=0:0.1:7;
zero_level=zeros(size(x_axis));
hold on
plot(transpose(x_axis),zero_level);

legend({'Data Points','Zero Level'});

% interpolate 
% using lagrange interpolation polynomial
% Source :https://zhuanlan.zhihu.com/p/33690607
x_i=0:1:7;