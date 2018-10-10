% Non-linear optimization Lab4
% Descent method with Trust Region
% Version 5 
% Using the function dm_diff.m to do differentiate
clc;
clear;
close all;

% testing with 3th function
fx = @(x1,x2) exp(x1/5+x2/2)+x1.^2+x2.^2;
iter = 0;

% initial point; 1 row is x1, 2 row is x2
x0 = [5;3];
delta = norm(dm_diff(fx, x0));
iter_max = 1000;
found = false;

% loop
while found && iter<iter_max
    iter = iter+1;
