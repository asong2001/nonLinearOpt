%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (5) %
% Date:(2018.10.10) %
% By: (»ÆËÉ)%
% %
% ID NUMBER: (11612001) %
% LAB:(6.3 data fitting) %
% Description: Pattern Search Algorithm%
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

%%%%%%% ¿¨×¡ÁË
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
plot(t,yt,'o');
hold on

data(1,:) = t;
data(2,:) = [2.3743 1.1497 0.7317 0.5556 0.4675 0.4175 0.3807 0.3546 0.3337 0.3164];
plot(data(1,:),data(2,:),'o');
hold on

% opt
% qt = @(x) x(1)*exp(-x(2)*t)+x(3)*exp(-x(4)*t);
% m = [0.989 1.042 -0.989 1.042];
% opt_qt = qt(m);
% plot(t,opt_qt,'*');

H0 = data(2,:);
lb = 0;
ub = 10;
gt = @(x) x(1)*exp(-x(2)*t)+x(3)*exp(-x(4)*t)-y;
x0 = [1 1 1 1];
x = lsqnonlin(gt,x0,lb,ub);
% plot(t,opt_gt,'*');
opt_gt = gt(x)+y;
plot(t,y,'r');
hold on
plot(t,opt_gt,'b');
hold on

legend('Approximization Function(initial)','Data Set','Approximization Function(Optimized)');