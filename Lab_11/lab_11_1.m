% Non-linear Opt Lab 11.1
% 11612001 HUANG 

% Linear Regression Models
clc;
clear;
close all;

%% data
f = @(x1,x2) exp(-x1/2 - x2/3);
x01 = [0 0 0 2 2 2 4 4 4];
x02 = [0 2 4 0 2 4 0 2 4];
fval = f(x01,x02);
x = linspace(0,4,300);
y = x;
[X0,Y0] = meshgrid(x,y);
Z0 = f(X0,Y0);

%% visualization
mesh(X0,Y0,Z0);
hold on
plot3(x01,x02,fval,'r*');
grid on

%% regression
X = [x01' x02'];
lam = inv(X'*X)*X'*fval';