%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (8) %
% Date:(2018.10.19) %
% By: (����)%
% %
% ID NUMBER: (11612001) %
% LAB:(8.1 Genetic Algorithms with Floating Point Representation) %
% Description: 
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

clc;
clear;
close all;

pop_Size = 5;   % ��Ⱥ����
pop_Dimension = 2;      %��Ⱥά��
pop_max = 2;
pop_min = -2;
% ���裺ÿһ��Ϊһ������
pop = initial_pop(pop_min,pop_max,pop_Dimension,pop_Size);

func = @(x,y) ((1-x).^2+100*((y-x.^2).^2));
[F,x_best,f_best] = evaluate(func,pop,pop_max,pop_min);
