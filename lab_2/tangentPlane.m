% nonLinearOptimization Exercise 2
% find the tangent plane of the function.
% its tangent point is (0.5,0.5);
clc;
clear

% 确定空间内每个点的坐标
[X,Y]=meshgrid(-2:0.1:2,-2:0.1:2);
% 计算函数值
f=@(x,y) X.^2+Y.^2;
[fx,fy]=gradient(f(X,Y),0.1);
grid on;
view(3);

% 获取坐标索引
x0=0.5;
y0=-0.5;
t = (X==x0) & (Y==y0);
indt = find(t);
fx0=fx(indt);
fy0=fy(indt);
z=@(x,y) X+Y-0.5;
face1=surf(X,Y,f(X,Y),'EdgeAlpha',0.7,'FaceAlpha',0.9);
hold on
face2=surf(X,Y,z(X,Y));
xlabel('x');ylabel('y');zlabel('f(x,y)');
set(get(gca, 'Title'), 'String', 'Tangent Plane');