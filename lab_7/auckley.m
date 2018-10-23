% 非线性优化2018 lab7 
% 11612001 黄松
% auckley function 生成器

% n = 1
syms auckley1(x1)
auckley1 = -20*exp(-0.2*sqrt(1/1*x1^2)) - exp(cos(2*x1)) +21;
func1 = @(x1) -20*exp(-0.2*sqrt(1/1*x1^2)) - exp(cos(2*x1)) +21;
xi = -10:0.1:10;


% n = 2
syms auckley2(x1,x2)
auckley2 = -20*exp(-0.2*sqrt(1/2*(x1^2 + x2^2))) - exp(1/2*(cos(2*x1)+cos(2*pi*x2))) +21;
func2 = @(x1,x2) -20*exp(-0.2*sqrt(1/2*(x1^2 + x2^2))) - exp(1/2*(cos(2*x1)+cos(2*pi*x2))) +21;

% n = 3
syms auckley3(x1,x2,x3)
auckley3 = -20*exp(-0.2*sqrt(1/3*(x1^2 + x2^2 + x3^3))) - exp(1/2*(cos(2*pi*x1) + cos(2*pi*x2) + cos(2*pi*x3))) +21;
func3 = @(x1,x2,x3) -20*exp(-0.2*sqrt(1/3*(x1^2 + x2^2 + x3^3))) - exp(1/2*(cos(2*pi*x1) + cos(2*pi*x2) + cos(2*pi*x3))) +21;

