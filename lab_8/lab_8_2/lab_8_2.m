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

clc;
clear;
close all;

%% ��������
N = 25;
iter = 0;
iter_max = 1000;

xi = 0:0.1:10;
yi = 0:0.1:10;

xy = 