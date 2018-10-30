%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (8) %
% Date:(2018.10.19) %
% By: (����)%
% %
% ID NUMBER: (11612001) %
% LAB:(8.2 Genetic Algorithms for TSP) %
% Description: 
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

%--------------version 2-------------%

clc;
clear;
close all;

%% ��֮ǰ������һ�����оͺ���
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

load('Cities.mat');
city0 = C;
city = city0;

plot(city(1,:),city(2,:),'o');
[~,dis0] = disCal(city0);
dis = dis0;
title(num2str(dis));

%% ����ʼ���ĳ���ת���� 
C = cell(1,N);
for k = 1:N
    C(k) = city(:,k);
end
