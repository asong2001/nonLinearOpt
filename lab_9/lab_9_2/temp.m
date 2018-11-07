% temp 
clc;
clear;
close all;

w = linspace(0,pi,200);
Ha = 0.3 - exp(-1j*w) +0.3 *exp(-1j*2*w);
Hb = 0.3 + exp(-1j*w) +0.3 *exp(-1j*2*w);
figure;
plot(w,abs(Ha));
hold on 
grid on
plot(w,abs(Hb));

figure;
plot(w,angle(Ha));
hold on
grid on
plot(w,angle(Hb));
