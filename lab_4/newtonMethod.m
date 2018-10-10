% Non-Linear Optimization Lab 4
% Newton's Method
clc;
clear;
close all;

% ���ƺ�����Χ
x0 = 5;
xn = 0:0.01:20;
% ʹ��������������������Ƕ��������΢�ֵĺ���
syms x;
% f = inline(x.^2,'x');

level = zeros(1,length(xn));
plot(xn,level);
hold on

% fx4 function
f=inline(x.^0.5-2,'x');
x0=10;
df = inline(diff(f(x)),'x');

fn=f(xn);
plot(xn,fn);
hold on
plot(x0,f(x0),'o');

% ������ʼ��
t=0;
xi = x0;

% ��������ͼ
y0=f(xi);
x0=xi;
k=df(xi);
b=y0-k*x0;
tan_f=inline(k*x+b,'x');
tan_ff=tan_f(xn);
plot(xn,tan_ff);

while t<100
    % ����������0 level�Ľ���
    for k = 1:1:length(tan_ff)
        if tan_ff(k) <= 0.01
            xi = xn(k);
        end
    end
    yi = f(xi);
    plot(xi,yi,'.');
    hold on;
    
    % ��������ͼ
    y0=f(xi);
    x0=xi;
    k=df(xi);
    b=y0-k*x0;
    tan_f=inline(k*x+b,'x');
    tan_ff=tan_f(xn);
    plot(xn,tan_ff);
    hold on
    t=t+1;
    disp(t);
    
    xn_new=xi-f(xi)./(df(xi));
    plot(xn_new,f(xn_new),'.');
    xi=xn_new;
end

opt_x=xi;
opt_y=f(opt_x);
hold on;
plot(opt_x,opt_y,'*');
title({['Optimal point is (',num2str(opt_x),',',num2str(opt_y),')']});

%% testing function
fx2=inline(log(x),'x');
x02=.1;
figure(2);
ntm2(fx2,x02,1.5);
% 
fx3=inline(x.^4,'x');
x03=5;
figure(3);
ntm2(fx3,x03,6);
% 
fx4=inline(x.^0.5-2,'x');
x04=10;
figure(4);
ntm2(fx4,x04,20);

saveas(gcf,'E:\7-2018�＾ѧ��\LAB\nonLinearOpt\lab_4\ͼ\grs4.png')