%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (8) %
% Date:(2018.10.19) %
% By: (黄松)%
% %
% ID NUMBER: (11612001) %
% LAB:(8.2 Genetic Algorithms for TSP) %
% Description: 
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

%--------------version 2-------------%

clc;
clear;
close all;

%% 用之前产生的一个城市就好了
N = 50;
iter = 0;
iter_max = 50;

ub = 10;
lb = 0;
xi = lb:0.1:ub;
yi = lb:0.1:ub;
dim = 2;
pm = 0.1;
pc = 0.8;

load('Cities.mat');
city0 = C;      % 初始城市序列

%% 增加每个城市的标志序列
for k = 1:N
    city0(3,k) = k;
end
C = city0(3,:);      % 取城市编号。city里面只包含[1 2 3 4...]
city = decode(C,city0,N);
plot(city(1,:),city(2,:),'o');
line_city(1,city,'blue');
hold on
C_opt = C;
[~,dis0] = disCal(city);
dis00 = dis0;

%% 迭代
while iter < iter_max
    C_tmp = mutation_city(C,pm);
    C_tmp = crossover_city(C_tmp,pc);
    city = decode(C_tmp,city0,N);
    plot(city(1,:),city(2,:),'.');
    hold on
    line_city(1,city,'red');
    pause(0.01);
    [~,dis] = disCal(city);
    
    if dis < dis0
        dis0 = dis;
        C_opt = C_tmp;
    end
    
    iter = iter+1;
    disp(num2str(iter));
end

%% 结果
figure(2);
city_opt = decode(C_opt,city0,N);
plot(city0(1,:),city0(2,:),'o');
hold on
line_city(2,city_opt,'red');
title({['opt ',num2str(dis0)],['ori ',num2str(dis00)]});

