% Non-Linear Optimization Lab 4
% Golden Ratio Search

clc;
clear;
close all;

t=(1+sqrt(5))/2;
f1=@(x) (x-2).^2;
f2=@(x) x.^2+3*exp(-2*x);

%% function 1
% »æÖÆº¯ÊýÍ¼Ïñ
x11=0;
x12=10;
figure(1);
x=x11:0.1:x12;
plot(x,f1(x));
hold on;

f11=f1(x11);
f12=f1(x12);
iter=abs(f11-f12);
while iter > 0.001
    x13=x12-(x12-x11)./t;
    x14=(x12-x11)./t+x11;
    
    f11=f1(x11);
    f12=f1(x12);
    f13=f1(x13);
    f14=f1(x14);
    
    plot(x11,f11,'o');
    plot(x12,f12,'o');
    plot(x13,f13,'o');
    plot(x14,f14,'o');
    

    if f13<f11
        x11=x13;
    end
    
    if f14<f12
        x12=x14;
    end

    iter=abs(f11-f12);
    
end
title({'optimal value is',num2str(min(f11,f12))});
    
