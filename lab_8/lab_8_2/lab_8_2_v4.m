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

%--------------version 4-------------%
clc;
clear;
close all;

%% 导入之前产生的城市群
load('Cities.mat');
city0_pos = C;
city0 = encode(city0_pos,N);
city_pos = city0_pos;
