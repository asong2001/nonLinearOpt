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

clc;
clear;
close all;

%% 产生城市
N = 50;
iter = 0;
iter_max = 1000;

ub = 10;
lb = 0;
xi = lb:0.1:ub;
yi = lb:0.1:ub;
dim = 2;
pm = 0.1;
pc = 0.8;

city0 = initial_city(lb,ub,dim,N);

load('Cities.mat');
city0 = C;
city = city0;

plot(city(1,:),city(2,:),'o');
[~,dis0] = disCal(city0);
dis = dis0;
title(num2str(dis));

%% 初始化连线
line_city(1,city,'blue');
hold on

%% 迭代
city_tmp = zeros(1,length(city));

while iter < iter_max
    city_tmp = mutation_city(city,pm);
    city_tmp = crossover_city(city_tmp,pc);
    [~,dis_tmp] = disCal(city_tmp);
    
    if  dis_tmp < dis
        city = city_tmp;
        dis = dis_tmp;
    end
    
    hold off
    iter = iter + 1;
end

figure(2);
line_city(2,city,'red');
hold on
% line_city(2,city0,'blue');
plot(city0(1,:),city0(2,:),'o');
title({['opt = ',num2str(dis)],['iter = ',num2str(dis0)]});