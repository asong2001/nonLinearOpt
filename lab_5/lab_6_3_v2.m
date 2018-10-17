% calling routine for 6.3
% nonlinear opt
data(1,:) = t;
data(2,:) = [2.3743 1.1497 0.7317 0.5556 0.4675 0.4175 0.3807 0.3546 0.3337 0.3164];
t = 1:10;

H0 = data(2,:);
lb = [0 0];
ub = [10 10];
gt = @(x) x(1)*exp(-x(2)*t)+x(3)*exp(-x(4)*t);
x0 = [1 1 1 1];

[x,f] = lsqnonlin(@fitting2,x0,lb,);