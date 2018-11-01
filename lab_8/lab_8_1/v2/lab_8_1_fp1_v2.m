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

% 我觉得可以先做一下一维的
% fp function n = 1 

%-------------------version 2--------%
clc;
clear;
close all;

%% 初始化
iter = 0;
iter_max = 50;
pm = 0.8;       % 交换的概率，通常为1/基因长度和1/种群个数之间
pc = 0.5;

N = 15;   % 种群中的个体数
dim = 2;      % 种群信息的维度
pop_max = 2;    % 种群范围
pop_min = -2;
popNum = 10;  % 种群数量，行数

% 初始化种群
% 每一行是一个种群，每一列是一个个体
pop = initial_pop(pop_min,pop_max,popNum,N,dim);

%% function
func =@(x) -exp(-0.5*((abs(x)).^2)) .* cos(10*x);

pop_new = crossover(pop,pc);