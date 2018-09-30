% Non-Linear Optimization Lab 4
% Newton's Method
clc;
clear;
close all;

% ���ƺ�����Χ
x0 = 5;
xn = 0:0.01:x0;
% ʹ��������������������Ƕ��������΢�ֵĺ���
syms x;
f = inline(x.^2,'x');
df = inline(diff(f(x)),'x');

fn=f(xn);
plot(xn,fn);
hold on
plot(x0,f(x0),'o');

% ������ʼ��
t=0;
xi = x0;

while (df(xi) >=0.001)
    xn_new=xi-f(xi)./(df(xi));
    xi=xn_new;
    % ��������ͼ
    k=df(xi); 
%     tan_f=inline(k*x+b,'x');
    t=t+1;
    
end

opt_x=xi;
opt_y=f(opt_x);
hold on;
plot(opt_x,opt_y,'*');
title({['Optimal point is (',num2str(opt_x),',',num2str(opt_y),')']});

