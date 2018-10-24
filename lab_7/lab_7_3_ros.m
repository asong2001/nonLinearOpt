%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (7) %
% Date:(2018.10.19) %
% By: (黄松)%
% %
% ID NUMBER: (11612001) %
% LAB:(7.3 DE) %
% Description: 
% 随机设定几个点然后比较都随机迭代几次，之后选择最小值作为opt。
% 然后同梯度法迭代.
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

%--------------rosebrock
clc;
clear;
close all;

%% 初始化参数
CR = 0.5;       % 交叉算子
F = 1;          % 变异因数
NP = 20;        % 种群数量
dimension = 2;  % 种群维度
x_up = 2;       % 上限
x_low = -2;     % 下限
iter_max = 100; %迭代次数
iter = 0;

% 种群初始化
v = zeros(dimension,NP);    % 变异种群
u = zeros(dimension,NP);    % 迭代种群
xy = x_low + (x_up+x_up)*rand(dimension,NP);

%% 画图
% rosebrock function n=2 还可以用这个画图呀！
func = @(x,y) ((1-x).^2+100*((y-x.^2).^2));
xi = -2:0.1:2;
yi = xi';
% contour
[X,Y] = meshgrid(xi,yi);
fx_value = func(X,Y);
contour(X,Y,fx_value,150);
hold on 
plot(xy(1,:),xy(2,:),'x','Color','blue');

%% 演化
for iter = 1:iter_max
    % 变异
    for m = 1:NP
        r1 = 

        % 暂时不想写这个了。换第四题。