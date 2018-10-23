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

% smart version 202-OK

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
lamda_0 = 0.5;
lamda = lamda_0;
xy_best = -2 + (2+2)*rand(2,20);     % ���������

while iter < iter_max
    xy = -2 + (2+2)*rand(2,20);     % ���������
    xy_new = xy*lamda + (1-lamda)*xy_best;
    lamda = lamda_0*(1-iter/iter_max);      % iter����k
    disp(num2str(xy_new));

    f_iter = fxy(xy_new(1,:),xy_new(2,:));
    plot(xy_new(1,:),xy_new(2,:),'.','Color','blue');
    f_temp = min(f_iter);
    if f_temp < f_opt
        f_opt = f_temp;
        ind = find(f_opt == f_iter);   % Ѱ��xy
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
