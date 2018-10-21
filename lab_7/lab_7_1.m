% nonLinear Opt lab 7.1
% 11612001 ª∆À…
clc;
clear;
close all;

% rosebrock function n=2
fx =@(x,y) ((1-x).^2+100*((y-x.^2).^2));
xi = -2:0.1:2;
yi = xi;
[X,Y] = meshgrid(xi,yi);
fx_value = fx(X,Y);
contour(X,Y,fx_value,100);

