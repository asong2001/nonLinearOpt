%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (7) %
% Date:(2018.10.19) %
% By: (黄松)%
% %
% ID NUMBER: (11612001) %
% LAB:(7.1 multiple-run gradient search) %
% Description: 
% 随机设定几个点然后比较都随机迭代几次，之后选择最小值作为opt。
% 然后同梯度法迭代.
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

%--------------fp 函数 n=1

% 先画图
clc;
clear;
close all;

% 产生函数
% fp function n=1
func =@(x) -exp(-0.5*((abs(x)).^2)) .* cos(10*x);
xi = -2:0.01:2;
func_value = func(xi);
plot(xi,func_value);
hold on

%%-------------分割线，下面的计算用syms----------------%%

% 生成初始值
f_opt = ones(1,20);
f_opt = f_opt*inf;
k = 0;
kmax = 50;
x_iter = -2 + (2+2)*rand(1,20);             % 迭代的坐标值
step = 0.1;

syms f(x);
f(x) = -exp(-0.5*((abs(x)).^2)) .* cos(10*x);
fx_grad = gradient(f(x),x);

f_grad = zeros(1,20);   % 用来计算每次迭代的梯度值，经过均一化之后做方向
f_iter = zeros(1,20);   % 迭代产生的点的函数值
direction = zeros(1,20);
x_new = zeros(2,20);
f_new = zeros(1,20);

% 画初始点
plot(x_iter,real(f(x_iter)),'x');

while k < kmax
    k = k+1;
    for m = 1:20
        % 上一次循环产生的值
        xx = x_iter(m);
        plot(x_iter(m),real(f(xx)));
        f_grad(m) = subs(fx_grad,x,xx);

        % 计算方向
        direction(m) = f_grad(m)./norm(f_grad(m));

        % 产生新的x，y
        x_new(m) = xx - step*direction(m);
        f_new(m) = f(x_new(m));

        if f_new(m) < f_opt(m)
            x_iter(m) = x_new(m);
            f_opt(m) = f_new(m);
        end

    end
    plot(x_iter,f(x_iter),'.','Color','red');
    hold on
%     disp(num2str(x_iter));
end
ind = find(f_opt == min(f_opt));
plot(x_iter(ind),f(x_iter(ind)),'*');

xlabel('x');ylabel('y');
title({['Lab 7.1 Multiple-run Gradient 11612001 黄松'],['Opt point:',num2str(x_iter(ind))],['Rosenbrock Opt value:',num2str(min(f_opt))]});

saveas(gcf,'E:\7-2018秋季学期\LAB\nonLinearOpt\lab_7\7.1plot\7_1_fp_n1.png');
