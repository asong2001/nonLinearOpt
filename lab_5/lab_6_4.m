% nonlinear opt
% lab 6.4
% 11612001 ����

clc;
clear;
close all;

% ���
n = 3;
x0 = [];
for k = 1:n
    xk = 1/k;
    x0 = [x0;xk];
end


% ���Բ���ʽԼ��Ax<=b
A = [];

% ���Ե�ʽ Ax=b
Aeq = [];
Beq = [];


[x,fva,maxfval,exitflag,output]=fminimax(@black_box,x0,A,b,Aeq, Beq,lb,ub);