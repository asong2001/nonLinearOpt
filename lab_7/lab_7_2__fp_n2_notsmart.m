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

fxy =@(x,y) -exp(-0.5*(sqrt(x.^2+y.^2)).^2) .* cos(10*x) .*cos(10*y);

% 初始图片
xi = -2:0.05:2;
yi = xi';
[X,Y] = meshgrid(xi,yi);
fxy_value = fxy(xi,yi);             % 函数值
contour(X,Y,fxy_value,30);
hold on;
times = 0;
t = zeros(1,1000);

while iter < iter_max
    iter = iter + 1;
    xy = -2 + (2+2)*rand(2,20);             % 迭代的坐标值
    f_iter = fxy(xy(1,:),xy(2,:));
    f_temp = min(f_iter);
    
    if mod(iter,100) == 0
        plot(xy(1,:),xy(2,:),'.','Color','blue');
    end

    if f_temp < f_opt
        f_opt = f_temp;
        ind = find(f_opt == f_iter);   % 寻找xy
        xy_temp = xy(:,ind);
        xy_best = xy_temp;
        times = times + 1;
    end
    t(iter) = times;
    pause(0.01);

end
disp(num2str(f_opt));
disp(num2str(xy_temp));
% 求迭代次数
p = min(find(t == times));

ind = find(f_opt == min(f_opt));
plot(xy_best(1,ind),xy_best(2,ind),'*');

xlabel('x');ylabel('y');
title({['Lab 7.2 Ramdon Search 11612001 黄松'],['Opt point:',num2str(xy_best')],['fp Opt value:',num2str(f_opt)]});
