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

clc;
clear;
close all;

% ���ɳ�ʼֵ
f_opt = inf;
iter = 0;
iter_max = 1000;

fxy =@(x,y) ((1-x).^2+100*((y-x.^2).^2));     % �����ʱ���õĺ������ʽ

% ��ʼͼƬ
xi = -2:0.1:2;
yi = xi';
[X,Y] = meshgrid(xi,yi);
fxy_value = fxy(xi,yi);             % ����ֵ
contour(X,Y,fxy_value,150);
hold on;
times = 0;
t = zeros(1,1000);

while iter < iter_max
    iter = iter + 1;
    xy = -2 + (2+2)*rand(2,20);             % ����������ֵ
    f_iter = fxy(xy(1,:),xy(2,:));
    f_temp = min(f_iter);
    
    if mod(iter,100) == 0
        plot(xy(1,:),xy(2,:),'.','Color','blue');
    end

    if f_temp < f_opt
        f_opt = f_temp;
        ind = find(f_opt == f_iter);   % Ѱ��xy
        xy_temp = xy(:,ind);
        xy_best = xy_temp;
        times = times + 1;
    end
    t(iter) = times;

end
disp(num2str(f_opt));
disp(num2str(xy_temp));
% ���������
p = min(find(t == times));

xlabel('x');ylabel('y');
title({['Lab 7.2 Ramdon Search 11612001 ����'],['Opt point:',num2str(xy_best')],['Rosenbrock Opt value:',num2str(f_opt)]});

plot(xy_best(1),xy_best(2),'*','Color','Red');
saveas(gcf,'E:\7-2018�＾ѧ��\LAB\nonLinearOpt\lab_7\7.1plot\7_2_ros_not_smart.png');
