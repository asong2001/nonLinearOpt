%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (7) %
% Date:(2018.10.19) %
% By: (����)%
% %
% ID NUMBER: (11612001) %
% LAB:(7.1 multiple-run gradient search) %
% Description: 
% ����趨������Ȼ��Ƚ϶�����������Σ�֮��ѡ����Сֵ��Ϊopt��
% Ȼ��ͬ�ݶȷ�����.
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

%--------------fp ���� n=2

% �Ȼ�ͼ
clc;
clear;
close all;

% ��������
% fp function n=2
xi = -2:0.01:2;
yi = xi';
[X,Y] = meshgrid(xi,yi);
func =@(x,y) -exp(-0.5*(sqrt(x.^2+y.^2)).^2) .* cos(10*x) .*cos(10*y);

% contour
fx_value = func(xi,yi);
contour(X,Y,fx_value,10);
hold on;

%%-------------�ָ��ߣ�����ļ�����syms----------------%%

% ���ɳ�ʼֵ
f_opt = ones(1,20);
f_opt = f_opt*inf;
k = 0;
kmax = 50;
xy = -2 + (2+2)*rand(2,20);             % ����������ֵ
step = 0.05;

syms f(x,y);
XY = [x;y];
f(x,y) = -exp(-0.5*(sqrt(x.^2+y.^2)).^2) .* cos(10*x) .*cos(10*y);     % �����ʱ���õĺ������ʽ
fxy_grad = gradient(f(x,y),XY);

f_grad = zeros(2,20);   % ��������ÿ�ε������ݶ�ֵ��������һ��֮��������
f_iter = zeros(1,20);   % ���������ĵ�ĺ���ֵ
direction = zeros(2,20);
xy_new = zeros(2,20);
f_new = zeros(1,20);

% ����ʼ��
plot(xy(1,:),xy(2,:),'x','Color','red');

while k<kmax
    k = k+1;
    
    % 20���㣬����forѭ�������µĵ�
    for m = 1:20
        % �ɵĵ��ֵ
        xx = xy(1,m);
        yy = xy(2,m);
        plot(xx,yy,'.','Color','blue');
        f_grad(:,m) = subs(fxy_grad,XY,[xx;yy]);    % �ɵĵ���ݶ�ֵ
        f_iter(:,m) = f(xx,yy);

        % ���㷽��
        direction(:,m) = f_grad(:,m)./(norm(f_grad(:,m)));

        % �����µ�x,y
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
title({['Lab 7.1 Multiple-run Gradient 11612001 ����'],['Opt point:',num2str([xy(1,ind) xy(2,ind)])],['Rosenbrock Opt value:',num2str(min(f_opt))]});

plot(xy(1,ind),xy(2,ind),'*','Color','Red');
saveas(gcf,'E:\7-2018�＾ѧ��\LAB\nonLinearOpt\lab_7\7.1plot\7_1_fp_n2.png');
