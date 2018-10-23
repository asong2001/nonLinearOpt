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

%--------------Auckley function(x,y)

% �����һ�û�ҵ���������ʽ

clc;
clear;
close all;

% Auckley function �������������ͼѽ��

% n = 2;
xi = -10:0.1:10;
yi = xi;
n = 2;
sum1 = 0;
sum2 = 0;
for i=1:length(xi)
    sum1(i) = sum1+xi(i).^2;
    sum2(i) = sum2+cos((2*pi)*yi(i));
end
fx_value = 20 + exp(1)-20*exp(-0.2*sqrt(1/n*sum1))-exp(1/n*sum2);

% contour
[X,Y] = meshgrid(xi,yi);
contour(X,Y,(fx_value),5);
hold on 

%%-------------�ָ��ߣ�����ļ�����syms----------------%%

% ���ɳ�ʼֵ
f_opt = ones(1,20);
f_opt = f_opt*inf;
k = 0;
kmax = 50;
xy = -10 + (10+10)*rand(2,20);             % ����������ֵ
step = 0.05;

syms f(x,y);
XY = [x;y];
f(x,y) = -20*exp(-0.2*sqrt(1/2*(x1^2 + x2^2))) - exp(1/2*(cos(2*x1)+cos(2*pi*x2))) +21;     % �����ʱ���õĺ�������ʽ
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