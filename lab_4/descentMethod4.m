% Non-linear optimization Lab4
% Descent method with Trust Region
% Version 4
clc;
clear;
close all;
% Calculate the gradient by hand

%% consider function 3
% function information
iter = 0;
% 第一行为x1，第二行为x2
x0 = [3;5];
x = x0;
fx = @(x1, x2) exp(x1/5+x2/5)+(x1).^2+(x2).^2;

% axis
x1_axis = -5:0.1:5;
x2_axis = x1_axis;

% plot the function in 2D
figure(1)
[x11, x22] = meshgrid(x1_axis, x2_axis);
fx_value = fx(x11, x22);
mesh(x11, x22, fx_value);
fx0 = fx(x(1), x(2));

% axis information
xlabel('x1');
ylabel('x2');
zlabel('f(x1,x2)');
title({['Descent Method'],['11612001 黄松']});

% plot contour
figure(2)
contour(fx_value)
title({['Descent Method'],['11612001 黄松']});

delta = 0.5;
grad_fx = @(x1,x2) [1/5*exp((x1+x2))/5+2*x1;
                1/5*exp((x1+x2))/5+2*x1];

grad_fx_point = grad_fx(x(1), x(2));
grad_length = norm(grad_fx_point);
unit_grad = grad_fx_point./grad_length;


