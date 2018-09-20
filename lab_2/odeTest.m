% odeTest
clc;
clear;
close all;

y1=@(t,y) -y+3*cos(3*t).*exp(-t);  
y1e=@(t) sin(3*t).*exp(-t);
y10=0;

y2=@(t,y) y;
y2e=@(t) exp(t);
y20=1;

% ode(y0,h,y_diff,yee)
h=[0.2 0.1 0.05 0.01];
for k = 1:4
    figure(k);
    ode(y10,h(k),y1,y1e);
    title(['h=' num2str(h(k))]);
    saveas(gcf,['E:\OneDrive - �Ϸ��Ƽ���ѧ\00-ʵ�鱨��\�������Ż�ʵ�鱨��\lab2ͼ\',int2str(k),'.png']);
end