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

% fp n1

clc;
clear;
close all;

% 生成初始值
f_opt = inf;
iter = 0;
iter_max = 1000;

fxy =@(x,y) -exp(-0.5*(sqrt(x.^2)).^2) .* cos(10*x);

% 初始图片
xi = -2:0.01:2;
fxy_value = fxy(xi);             % 函数值
lamda_0 = 0.5;
lamda = lamda_0;
xy_best = -2 + (2+2)*rand(1,20);     % 产生随机点
xy = -2 + (2+2)*rand(1,20);     % 产生随机点
plot(xi,fxy_value);
hold on;

times = 0;
t = zeros(1,1000);
step_opt = zeros(1,iter_max);

while iter < iter_max
    iter = iter + 1;
    xy_new = xy*lamda + (1-lamda)*xy_best;
    lamda = lamda_0*(1-iter/iter_max);      % iter就是k
    disp(num2str(xy_new));

    f_iter = fxy(xy_new);
    if mod(iter,50) == 0
        plot(xy_new,f_iter,'.','Color','blue');
    end
    f_temp = min(f_iter);
    if f_temp < f_opt
        f_opt = f_temp;
        ind = find(f_opt == f_iter);   % 寻找xy
        xy_best = xy_new(ind);
        times = times + 1;
    end
    t(iter) = times;
    

%     pause(0.01);
    xy = -2 + (2+2)*rand(1,20);     % 产生随机点
    step_opt(iter) = min(f_opt);
    
end
disp(num2str(xy_best));
disp(num2str(times));
% 求迭代次数
p = min(find(t == times));

ind = find(f_opt == min(f_opt));
plot(xy_best(ind),min(f_opt),'*');

xlabel('x');ylabel('y');
title({['Lab 7.2 Ramdon Search 11612001 黄松'],['Opt point:',num2str(xy_best')],['fp Opt value:',num2str(f_opt)]});
saveas(gcf,'E:\7-2018秋季学期\LAB\nonLinearOpt\lab_7\7.1plot\7_2_fp_n1_smart.png');

figure(2);
t = 1:iter_max;
plot(t,step_opt,'');
grid on
title({['Lab 7.2 Ramdon Search 11612001 黄松'],['Opt point:',num2str([xy(ind)])],['fp Opt value:',num2str(min(f_opt))]});
saveas(gcf,'E:\7-2018秋季学期\LAB\nonLinearOpt\lab_7\7.1plot\7_2_fp_n1_smart_performence.png');
