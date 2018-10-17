%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (5) %
% Date:(2018.10.10) %
% By: (ª∆À…) %
% %
% ID NUMBER: (11612001) %
% LAB:(5.1) %
% Description: Pattern Search Algorithm%
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

clc;
clear;
close all;

% function statement

% f1
f1 = @(x,y) 2*x.^2+3*y.^2-3.*x.*y+x;
xy = [5 8];

% f2
f2 = @(x,y) (1-x).^2+5.*((x-y.^2).^2);
xy2 = [0 0];

% f3
f3 = @(x,y) (x+2*y).*(1-0.9*exp(-0.3*((x-0.25).^2)-2.*((y-3.5).^2))*(1-0.9*exp(-(x-3).^2)-(y-3).^2));
xy3 = [4 2];

% f4
f4 = @(x,y) exp(x./5)+exp(y./3);
xy4 = [5 8];

