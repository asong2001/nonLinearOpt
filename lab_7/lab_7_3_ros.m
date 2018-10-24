%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (7) %
% Date:(2018.10.19) %
% By: (����)%
% %
% ID NUMBER: (11612001) %
% LAB:(7.3 DE) %
% Description: 
% ����趨������Ȼ��Ƚ϶�����������Σ�֮��ѡ����Сֵ��Ϊopt��
% Ȼ��ͬ�ݶȷ�����.
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

%--------------rosebrock
clc;
clear;
close all;

%% ��ʼ������
CR = 0.5;       % ��������
F = 1;          % ��������
NP = 20;        % ��Ⱥ����
dimension = 2;  % ��Ⱥά��
x_up = 2;       % ����
x_low = -2;     % ����
iter_max = 100; %��������
iter = 0;

% ��Ⱥ��ʼ��
v = zeros(dimension,NP);    % ������Ⱥ
u = zeros(dimension,NP);    % ������Ⱥ
xy = x_low + (x_up+x_up)*rand(dimension,NP);

%% ��ͼ
% rosebrock function n=2 �������������ͼѽ��
func = @(x,y) ((1-x).^2+100*((y-x.^2).^2));
xi = -2:0.1:2;
yi = xi';
% contour
[X,Y] = meshgrid(xi,yi);
fx_value = func(X,Y);
contour(X,Y,fx_value,150);
hold on 
plot(xy(1,:),xy(2,:),'x','Color','blue');

%% �ݻ�
for iter = 1:iter_max
    % ����
    for m = 1:NP
        r1 = 

        % ��ʱ����д����ˡ��������⡣