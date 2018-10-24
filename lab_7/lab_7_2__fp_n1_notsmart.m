%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (7) %
% Date:(2018.10.19) %
% By: (����)%
% %
% ID NUMBER: (11612001) %
% LAB:(7.2 Ramdon search) %
% Description: 
% �������1000���㣬Ȼ�����1000�Σ�ȡ��С��
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

% not smart
% fp n1

clc;
clear;
close all;

% ���ɳ�ʼֵ
f_opt = inf;
iter = 0;
iter_max = 1000;

fxy =@(x) -exp(-0.5*(sqrt(x.^2)).^2) .* cos(10*x);

% ��ʼͼƬ
xi = -2:0.01:2;
fxy_value = fxy(xi);             % ����ֵ
plot(xi,fxy_value);
hold on;
times = 0;
t = zeros(1,1000);
step_opt = zeros(1,iter_max);

while iter < iter_max
    iter = iter + 1;
    xy = -2 + (2+2)*rand(1,20);             % ����������ֵ
    f_iter = fxy(xy);
    f_temp = min(f_iter);
    
    if mod(iter,100) == 0
        plot(xy,f_iter,'.','Color','blue');
    end

    if f_temp < f_opt
        f_opt = f_temp;
        ind = find(f_opt == f_iter);   % Ѱ��xy
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
title({['Lab 7.2 Ramdon Search 11612001 ����'],['Opt point:',num2str(xy_best')],['fp Opt value:',num2str(f_opt)]});
saveas(gcf,'E:\7-2018�＾ѧ��\LAB\nonLinearOpt\lab_7\7.1plot\7_2_fp_n1.png');

figure(2);
t = 1:iter_max;
plot(t,step_opt,'');
grid on
title({['Lab 7.2 Ramdon Search 11612001 ����'],['Opt point:',num2str([xy(ind)])],['fp Opt value:',num2str(min(f_opt))]});
saveas(gcf,'E:\7-2018�＾ѧ��\LAB\nonLinearOpt\lab_7\7.1plot\7_2_fp_n1_performence.png');
