%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (5) %
% Date:(2018.10.10) %
% By: (����)%
% %
% ID NUMBER: (11612001) %
% LAB:(6.3 data fitting) %
% Description: Pattern Search Algorithm%
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

clc;
clear;
close all;

% initial
t = 1:10;
a = 1;
b = a;
c = a;
d = a;

y = @(t) exp(-t)+exp(-t);
yt = y(t);
plot(t,yt,'b*');
hold on

data = [2.3743 1.1497 0.7317 0.5556 0.4675 0.4175 0.3807 0.3546 0.3337 0.3164];
plot(t,data,'*');
hold on

H0 = data;
lb = [0 0]';
ub = [10 10];
x0 = [1 1 1 1];
f = @(x,t) x(1).*exp(-x(2).*t)+x(3).*exp(-x(4).*t);
options = optimset('lsqnonlin');
[a0, fval] = lsqnonlin(@lab63,x0,lb,ub,options,t,data);
plot(t,f(a0,t),'ro');

legend('Approximization Function(initial)','Data Set','Approximization Function(Optimized)');
saveas(gcf,'E:\7-2018�＾ѧ��\LAB\nonLinearOpt\lab_5\plot\lab_6_3.png');