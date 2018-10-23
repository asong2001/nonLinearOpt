%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (7) %
% Date:(2018.10.19) %
% By: (黄松)%
% %
% ID NUMBER: (11612001) %
% LAB:(7.2 Ramdon search) %
% Description: 
% 随机产生1000个点，然后迭代1000次，取最小的
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

% smart version 202-OK

clc;
clear;
close all;

% 生成初始值
f_opt = inf;
iter = 0;
iter_max = 1000;

fxy =@(x,y) ((1-x).^2+100*((y-x.^2).^2));     % 计算的时候用的函数表达式

% 初始图片
xi = -2:0.1:2;
yi = xi';
[X,Y] = meshgrid(xi,yi);
fxy_value = fxy(xi,yi);             % 函数值
contour(X,Y,fxy_value,150);
hold on;
lamda_0 = 0.5;
lamda = lamda_0;
xy_best = -2 + (2+2)*rand(2,20);     % 产生随机点

while iter < iter_max
    xy = -2 + (2+2)*rand(2,20);     % 产生随机点
    xy_new = xy*lamda + (1-lamda)*xy_best;
    lamda = lamda_0*(1-iter/iter_max);      % iter就是k
    disp(num2str(xy_new));

    f_iter = fxy(xy_new(1,:),xy_new(2,:));
    plot(xy_new(1,:),xy_new(2,:),'.','Color','blue');
    f_temp = min(f_iter);
    if f_temp < f_opt
        f_opt = f_temp;
        ind = find(f_opt == f_iter);   % 寻找xy
        xy_best = xy_new(:,ind);
    end
    
    iter = iter + 1;
    pause(0.01);
end
disp(num2str(f_opt));
disp(num2str(xy_best));

figure(2);
contour(X,Y,fxy_value,150);
hold on
plot(xy_best(1),xy_best(2),'*');
