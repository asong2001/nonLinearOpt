% find the tangent plane of the function.
% its tangent point is (0.5,0.5);
clc;
clear

% 确定空间内每个点的坐标
[X,Y]=meshgrid(-2:0.1:2,-2:0.1:2);
% 计算函数值
f=X.^2+Y.^2;
face=surface(X,Y,f);
grid on;
view(3);

% 获取坐标索引
