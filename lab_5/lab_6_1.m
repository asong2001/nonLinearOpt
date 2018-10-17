%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (5) %
% Date:(2018.10.10) %
% By: (ª∆À…)%
% %
% ID NUMBER: (11612001) %
% LAB:(6.1) %
% Description: Pattern Search Algorithm%
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

clc;
clear;
close all;

% exericise 1 unconstrain optimization

% n = 3
fx = @(x1, x2, x3) ((1-x1).^2+100*(x2-x1.^2).^2)+((1-x2).^2+100*(x3-x2.^2).^2);


