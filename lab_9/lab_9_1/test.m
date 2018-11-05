% test 
clc;
clear;
close all;

ft = func_ft(2);
x1 = linspace(0.5,1,200);
x2 = linspace(-2,2,200);
x3 = x2;
x = [x1;x2;x3];

[x_new,fval] = gamultiobj(ft,2);

figure;
plot(fval(:,1),fval(:,2),'o');
grid on