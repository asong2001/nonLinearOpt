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

clc;
clear;
close all;

% rosebrock function n=2 还可以用这个画图呀！
func = @(x,y) ((1-x).^2+100*((y-x.^2).^2));
xi = -2:0.1:2;
yi = xi';

% contour
[X,Y] = meshgrid(xi,yi);
fx_value = func(X,Y);
contour(X,Y,fx_value,150);
hold on 

%%-------------分割线，下面的计算用syms----------------%%

% 生成初始值
f_opt = ones(1,20);
f_opt = f_opt*inf;
k = 0;
kmax = 10;
xy = -2 + (2+2)*rand(2,20);             % 迭代的坐标值
step = 0.05;

syms f(x,y)
XY = [x;y];
f(x,y) = ((1-x).^2+100*((y-x.^2).^2));     % 计算的时候用的函数表达式
fxy_grad = gradient(f(x,y),XY);

f_grad = zeros(2,20);
f_iter = zeros(1,20);                       % 记录每次得带的函数值
while k < kmax
    k = k+1;
    % f_iter 记录每次迭代的值，用来做比较的

    for m = 1:1:20
        xx = xy(1,m);
        yy = xy(2,m);
        f_iter(m) = f(xx,yy);
%         plot(xx,yy,'.','Color','blue');
        f_grad(:,m) = subs(fxy_grad,XY,[xy(1,m);xy(2,m)]);      % 求某一点的梯度值
    
        % 新的函数值的方向x = x0+step*f_grad
        direction = f_grad(:,m)/norm(f_grad(:,m));
        xy_new = xy(:,m)+step*direction;
%         plot(xy_new(1,:),xy_new(2,:),'.','Color','red');
        hold on

        f_new = f(xy_new(1),xy_new(2));
       
        if f_opt(m)>f_new
            xy(:,m) = xy_new;
            f_opt(m) = f_new;
        end
    end
    plot(xy(1,:),xy(2,:),'.','Color','blue');

    pause(0.05);
    
end
ind = find(f_opt == min(f_opt));
plot(xy(:,ind),'*');

