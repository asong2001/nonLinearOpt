%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
%
% Course: Nonlinear Optimization. %
% Name: (’≈’‰)
% ID NUMBER: (11849553) %
%
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
clear;
f = @(x1,x2,x3,x4,x5,x6)x1.^2+x2.^2+x3.^2+x4.^2+x5.^2+x6.^2;
x0f = 1:6;
[minf,fx] = Descent_Method(f,x0f);

g = @(x)sin(x);
x0g = 2;
[ming,gx] = Descent_Method(g,x0g);

h = @(x1,x2)exp(x1/5+x2/2)+x1.^2+x2.^2;
x0h = [5,3];
[minh,hx] = Descent_Method(h,x0h);

R = @(x,y)(1-x).^2+100*(y-x.^2).^2;
x0R = [0,0];
[minR,Rx] = Descent_Method(R,x0R);


