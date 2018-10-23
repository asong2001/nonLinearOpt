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

% not smart

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

while iter < iter_max
    xy = -2 + (2+2)*rand(2,20);             % 迭代的坐标值
    f_iter = fxy(xy(1,:),xy(2,:));
    plot(xy(1,:),xy(2,:),'.');
    f_temp = min(f_iter);

    if f_temp < f_opt
        f_opt = f_temp;
        ind = find(f_opt == f_iter);   % 寻找xy
        xy_temp = xy(:,ind);
    end

    iter = iter + 1;
    pause(0.01);
end
disp(num2str(f_opt));
disp(num2str(xy_temp));
