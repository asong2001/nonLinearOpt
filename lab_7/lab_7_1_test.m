
% �ǾͿ�������������������ݶ���
clc;
clear;
close all;

% ��������
syms x y;
XY = [x;y];
fxy = ((1-x).^2+100*((y-x.^2).^2));
fxy_grad = gradient(fxy,XY);
xi = 1.1;
yi = 1.2;

xy_grad = subs(fxy_grad,XY,[xi;yi]);
