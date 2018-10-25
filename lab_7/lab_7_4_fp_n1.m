%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (7) %
% Date:(2018.10.19) %
% By: (函数)%
% %
% ID NUMBER: (11612001) %
% LAB:(7.4 PSO) %
% Description: 
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

%--------------先算fp的一维情况吧，这样简单一点

clc;
clear;
close all;

% 画图
f_opt = inf;
iter = 0;
iter_max = 100;

fxy =@(x) -exp(-0.5*(sqrt(x.^2)).^2) .* cos(10*x);
xk = -2:0.01:2;     % 坐标轴带k
fxy_value = fxy(xk);
plot(xk,fxy_value);

% 参数 c1 + c2 = 4.1
w = 1;
c = 0.7298;
c1 = 2.05;
c1 = 4.1 - 2.05;

% 初始化
% 假设xi的每一列作为一个
x_i = -2 + (2+2)*rand(1,20);    % 当前位置
fitting = fxy(x_i);
v_i = -2 + (2+2)*rand(1,20);
p_best = x_i;       % 个体最好的位置
g_best = min(x_i);       % 种群内部最好位置
plot(x_i,fitting,'x');      % 初始位置

while iter < iter
    iter = iter + 1;
    % 更新速度
    % 随机函数，增加搜索随机性
    r1 = rand(1,1);
    r2 = rand(1,1);
    % 按照上一次的来算这一次的。
        
        
        
        