%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (7) %
% Date:(2018.10.19) %
% By: (����)%
% %
% ID NUMBER: (11612001) %
% LAB:(7.4 PSO) %
% Description: 
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

%--------------����fp��һά����ɣ�������һ��

clc;
clear;
close all;

% ��ͼ
f_opt = inf;
iter = 0;
iter_max = 100;

fxy =@(x) -exp(-0.5*(sqrt(x.^2)).^2) .* cos(10*x);
xk = -2:0.01:2;     % �������k
fxy_value = fxy(xk);
plot(xk,fxy_value);

% ���� c1 + c2 = 4.1
w = 1;
c = 0.7298;
c1 = 2.05;
c1 = 4.1 - 2.05;

% ��ʼ��
% ����xi��ÿһ����Ϊһ��
x_i = -2 + (2+2)*rand(1,20);    % ��ǰλ��
fitting = fxy(x_i);
v_i = -2 + (2+2)*rand(1,20);
p_best = x_i;       % ������õ�λ��
g_best = min(x_i);       % ��Ⱥ�ڲ����λ��
plot(x_i,fitting,'x');      % ��ʼλ��

while iter < iter
    iter = iter + 1;
    % �����ٶ�
    % ����������������������
    r1 = rand(1,1);
    r2 = rand(1,1);
    % ������һ�ε�������һ�εġ�
        
        
        
        