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
% fp n1

clc;
clear;
close all;

% 生成初始值
f_opt = inf;
iter = 0;
iter_max = 1000;

fxy =@(x) -exp(-0.5*(sqrt(x.^2)).^2) .* cos(10*x);

% 初始图片
xi = -2:0.01:2;
fxy_value = fxy(xi);             % 函数值
plot(xi,fxy_value);
hold on;
times = 0;
t = zeros(1,1000);
step_opt = zeros(1,iter_max);

while iter < iter_max
    iter = iter + 1;
    xy = -2 + (2+2)*rand(1,20);             % 迭代的坐标值
    f_iter = fxy(xy);
    f_temp = min(f_iter);
    
    if mod(iter,100) == 0
        plot(xy,f_iter,'.','Color','blue');
    end

    if f_temp < f_opt
        f_opt = f_temp;
        ind = find(f_opt == f_iter);   % 寻找xy
        xy_temp = xy(ind);
        xy_best = xy_temp;
        times = times + 1;
    end
    t(iter) = times;
%     pause(0.01);
    step_opt(iter) = min(f_opt);

end
disp(num2str(f_opt));
disp(num2str(xy_temp));

ind = find(f_opt == min(f_opt));
plot(xy_best(ind),min(f_opt),'*');

xlabel('x');ylabel('y');
title({['Lab 7.2 Ramdon Search 11612001 黄松'],['Opt point:',num2str(xy_best')],['fp Opt value:',num2str(f_opt)]});
saveas(gcf,'E:\7-2018秋季学期\LAB\nonLinearOpt\lab_7\7.1plot\7_2_fp_n1.png');

figure(2);
t = 1:iter_max;
plot(t,step_opt,'');
grid on
title({['Lab 7.2 Ramdon Search 11612001 黄松'],['Opt point:',num2str([xy(ind)])],['fp Opt value:',num2str(min(f_opt))]});
saveas(gcf,'E:\7-2018秋季学期\LAB\nonLinearOpt\lab_7\7.1plot\7_2_fp_n1_performence.png');
