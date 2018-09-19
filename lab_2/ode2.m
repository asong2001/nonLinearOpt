% Exercise 4 
% Practice for asking function
% eulerÀ„∑®
y_diff= @(tn,yn) -yn+3.*cos(3.*tn).*exp(-tn);
h=0.1;
t=0:h:5;
x=[0];
y=zeros(length(t));
for n=1:1:length(t)
    y(n+1)=y(n)+h.*y_diff(t(n),y(n));
    t(n+1)=t(n)+h;
end

