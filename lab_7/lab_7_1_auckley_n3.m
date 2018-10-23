%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (7) %
% Date:(2018.10.19) %
% By: (黄松)%
% %
% ID NUMBER: (11612001) %
% LAB:(7.1 multiple-run gradient search) %
% Description: 
% 随机设定几个点然后比较都随机迭代几次，之后选择最小值作为opt。
% 然后同梯度法迭代.
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

clc;
clear;
close all;

% Auckley function 还可以用这个画图呀！

% 产生函数
% Auckley n = 3
xi = -10:0.01:10;
yi = xi';
[X,Y] = meshgrid(xi,yi);

func = @(x,y,z) -20 * exp(-0.2*sqrt(0.5*(x.^2+y.^2+z.^2))) - exp(0.5*(cos(2*pi*x)+cos(2*pi*y)+cos(2*pi*z))) + 21;

% contour
fx_value = func(xi,yi);
contour(X,Y,fx_value,30);
hold on;