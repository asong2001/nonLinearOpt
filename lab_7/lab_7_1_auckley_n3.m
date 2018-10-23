%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (7) %
% Date:(2018.10.19) %
% By: (����)%
% %
% ID NUMBER: (11612001) %
% LAB:(7.1 multiple-run gradient search) %
% Description: 
% ����趨������Ȼ��Ƚ϶�����������Σ�֮��ѡ����Сֵ��Ϊopt��
% Ȼ��ͬ�ݶȷ�����.
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

clc;
clear;
close all;

% Auckley function �������������ͼѽ��

% ��������
% Auckley n = 3
xi = -10:0.01:10;
yi = xi';
[X,Y] = meshgrid(xi,yi);

func = @(x,y,z) -20 * exp(-0.2*sqrt(0.5*(x.^2+y.^2+z.^2))) - exp(0.5*(cos(2*pi*x)+cos(2*pi*y)+cos(2*pi*z))) + 21;

% contour
fx_value = func(xi,yi);
contour(X,Y,fx_value,30);
hold on;