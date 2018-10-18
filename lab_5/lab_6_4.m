% nonlinear opt
% lab 6.4
% 11612001 黄松

clc;
clear;
close all;

% 起点
n = 3;
x0 = [];
for k = 1:n
    xk = 1/k;
    x0 = [x0;xk];
end


% 线性不等式约束Ax<=b
A = [];

% 线性等式 Ax=b
Aeq = [];
Beq = [];


[x,fva,maxfval,exitflag,output]=fminimax(@black_box,x0,A,b,Aeq, Beq,lb,ub);