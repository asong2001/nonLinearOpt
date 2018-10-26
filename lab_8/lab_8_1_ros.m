%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (8) %
% Date:(2018.10.19) %
% By: (黄松)%
% %
% ID NUMBER: (11612001) %
% LAB:(8.1 Genetic Algorithms with Floating Point Representation) %
% Description: 
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

clc;
clear;
close all;

% 迭代控制
iter = 0;
iter_max = 1000;

pop_Size = 5;   % 种群数量
pop_Dimension = 2;      %种群维度
pop_max = 2;
pop_min = -2;
% 假设：每一列为一个个体
pop = initial_pop(pop_min,pop_max,pop_Dimension,pop_Size);

func = @(x,y) ((1-x).^2+100*((y-x.^2).^2));                 % optimizated function
[F,x_best,f_best] = evaluate(func,pop,pop_max,pop_min);     % 计算该部分的函数值



while iter <iter_max
    P_temp = selection(P,F);