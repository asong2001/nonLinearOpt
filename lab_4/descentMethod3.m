% Non-linear optimization Lab4
% Descent method with Trust Region
% Version 3

%% Testing with function 3

clc;
clear;
close all;

fx=@(x1,x2) exp(x1/5+x2/5)+(x1).^2+(x2).^2;
x0=[5;3];

% 坐标轴信息 
x1=-5:0.1:5;
x2=x1;

% plot the function
[x11,x22] = meshgrid(x1,x2);
f_value=fx(x11,x22);
mesh(x11,x22,f_value);
f0=fx(x0(1),x0(2));

xlabel('x1');
ylabel('x2');
zlabel('f(x1,x2)');
title({['Descent Method'],['黄松']});


% 设置迭代
iter=0;
x1n=x0(1);
x2n=x0(2);
delta=0.001;
condition=false;
while ~condition && iter<=20
    % 1 order
    h=-f_set_grad;
    q_h=fx(x1n,x2n)+h'.*-f_set_grad;
    f_new=q_h

    iter=iter+1;
    h_tr=
    
end