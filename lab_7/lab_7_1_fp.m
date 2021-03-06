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

%--------------fp function

% 梯度应该是负方向！！！
% 可以用了

clc;
clear;
close all;

% rosebrock function n=2 还可以用这个画图呀！

% norm会是什么意思呢？
func = @(x,y) -exp(-((0.5*norm([x y])).^2)) * cos(10*x) * cos(10*y);
xi = -2:0.1:2;
yi = xi';

% contour
[X,Y] = meshgrid(xi,yi);
fx_value = func(xi,yi);
contour(X,Y,fx_value,150);
hold on 

%%-------------分割线，下面的计算用syms----------------%%

% 生成初始值
f_opt = ones(1,20);
f_opt = f_opt*inf;
k = 0;
kmax = 50;
xy = -2 + (2+2)*rand(2,20);             % 迭代的坐标值
step = 0.05;

syms f(x,y);
XY = [x;y];
f(x,y) = ((1-x).^2+100*((y-x.^2).^2));     % 计算的时候用的函数表达式
fxy_grad = gradient(f(x,y),XY);

f_grad = zeros(2,20);   % 用来计算每次迭代的梯度值，经过均一化之后做方向
f_iter = zeros(1,20);   % 迭代产生的点的函数值
direction = zeros(2,20);
xy_new = zeros(2,20);
f_new = zeros(1,20);

% 画初始点
plot(xy(1,:),xy(2,:),'x','Color','red');

while k<kmax
    k = k+1;
    
    % 20个点，先用for循环产生新的点
    for m = 1:20
        % 旧的点的值
        xx = xy(1,m);
        yy = xy(2,m);
        plot(xx,yy,'.','Color','blue');
        f_grad(:,m) = subs(fxy_grad,XY,[xx;yy]);    % 旧的点的梯度值
        f_iter(:,m) = f(xx,yy);

        % 计算方向
        direction(:,m) = f_grad(:,m)./(norm(f_grad(:,m)));

        % 产生新的x,y
        % x-1, y-2
        xy_new(:,m) = [xx - step*direction(1,m), yy - step*direction(2,m)];
        f_new(m) = f(xy_new(1,m),xy_new(2,m));

        if f_new(m) < f_opt(m)
            xy(:,m) = xy_new(:,m);
            f_opt(m) = f_new(m);
        end
    end
    plot(xy(1,:),xy(2,:),'.','Color','blue');
end
ind = find(f_opt == min(f_opt));
plot(xy(1,ind),xy(2,ind),'*');

xlabel('x');ylabel('y');
title({['Lab 7.1 Multiple-run Gradient 11612001 黄松'],['Opt point:',num2str([xy(1,ind) xy(2,ind)])],['Rosenbrock Opt value:',num2str(min(f_opt))]});

plot(xy(1,ind),xy(2,ind),'*','Color','Red');
saveas(gcf,'E:\7-2018秋季学期\LAB\nonLinearOpt\lab_7\7.1plot\7_1_ros.png');
