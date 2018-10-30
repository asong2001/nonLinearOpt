% sovle ZHOU's eq

clc;
clear;
close all;

func = @(x1,x2) cos(2*x1)-cos(2*x2);
fs = 1000;
dw = 1/fs;
t = 0:dw:2*pi;
for k = 1:length(t)-1
    f(k) = func(t(k+1),t(k));
end

for k = 1:length(f)-1
    delta(k) = f(k+1)-f(k);
end

index = find(delta==0.02);
disp(num2str(t(index)));
