% find the tangent plane of the function.
% its tangent point is (0.5,0.5);
clc;
clear

% ȷ���ռ���ÿ���������
[X,Y]=meshgrid(-2:0.1:2,-2:0.1:2);
% ���㺯��ֵ
f=X.^2+Y.^2;
face=surface(X,Y,f);
grid on;
view(3);

% ��ȡ��������
