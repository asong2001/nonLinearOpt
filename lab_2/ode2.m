% Exercise 4 
% Practice for asking function
% eulerÀ„∑®
clc;
clear;
y_diff= @(tn,yn) -yn+3.*cos(3.*tn).*exp(-tn);
h=0.1;
t=[0:1:52]*0.1;
x=[0];
y=zeros(1,length(t));
for n=1:1:length(t)-1
    y(n+2)=y(n+1)+1.5*h.*y_diff(t(n+1),y(n+1))-0.5*h.*y_diff(t(n),y(n));
    t(n+1)=t(n)+h;
end

y(1)=[];
plot(t,y);

