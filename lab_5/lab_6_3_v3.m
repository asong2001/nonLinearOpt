% nonlinear opt ref
clc;
clear;
close all;

% µü´ú 
t = 1:10;
data = [2.3743 1.1497 0.7317 0.5556 0.4675 0.4175 0.3807 0.3546 0.3337 0.3164];
lb = [0 0]';
ub = [10 10];
x0 = [1 1 1 1];
f = @(x,t) x(1).*exp(-x(2).*t)+x(3).*exp(-x(4).*t);
options = optimset('lsqnonlin');
[a0, fval] = lsqnonlin(@lab63,x0,lb,ub,options,t,data);

% data input
plot(t,data,'*');
hold on
% ÄâºÏ[1 1 1 1]
plot(t,f(x0,t),'b');
plot(t,f(a0,t),'r');
