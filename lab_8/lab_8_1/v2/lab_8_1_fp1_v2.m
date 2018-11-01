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

% �Ҿ��ÿ�������һ��һά��
% fp function n = 1 

%-------------------version 2--------%
clc;
clear;
close all;

%% ��ʼ��
iter = 0;
iter_max = 50;
pm = 0.8;       % �����ĸ��ʣ�ͨ��Ϊ1/���򳤶Ⱥ�1/��Ⱥ����֮��
pc = 0.5;

N = 15;   % ��Ⱥ�еĸ�����
dim = 2;      % ��Ⱥ��Ϣ��ά��
pop_max = 2;    % ��Ⱥ��Χ
pop_min = -2;
popNum = 10;  % ��Ⱥ����������

% ��ʼ����Ⱥ
% ÿһ����һ����Ⱥ��ÿһ����һ������
pop = initial_pop(pop_min,pop_max,popNum,N,dim);

%% function
func =@(x) -exp(-0.5*((abs(x)).^2)) .* cos(10*x);

pop_new = crossover(pop,pc);