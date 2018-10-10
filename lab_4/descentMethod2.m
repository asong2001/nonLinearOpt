% Non-linear optimization Lab4
% Descent method with Trust Region
% Version 2

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

% 计算梯度值,分成两个方向
[fx1_grad,fx2_grad]=gradient(f_value,0.1);

% 查找某一点的梯度值
x1g=x1;
x2g=x1g';
f_grad=fx(x1g,x2g);
% surf(x1g,x2g,f_grad);

% x1_set 表示要查询的点的位置
x1_set=x0(1);
x2_set=x0(2);
t = (x1g == x1_set) & (x2g == x2_set);
indt = find(t);
% 所求点位置上的梯度值为
f_set_grad = [fx1_grad(indt) fx2_grad(indt)];

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