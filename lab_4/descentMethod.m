% Non-linear optimization Lab4
% Descent method with Trust Region

%% Testing with function 3
clc;
clear;
close all;

fx=@(x1,x2) exp(x1/5+x2/5)+(x1).^2+(x2).^2;
x0=[5;3];
x1n=-5:0.1:5;
x2n=x1n';

% function value
f=fx(x1n,x2n);
surf(x1n,x2n,f);
f0=fx(x0(1),x0(2));
xlabel('x1');
ylabel('x2');
zlabel('f(x1,x2)');

% 计算梯度值
[fx1_grad,fx2_grad] = gradient(f,0.1);

iter=0;
delta=0.001;
found = false;
t = (x1n == x0(1)) & (x2n == x0(2));
while ~found && iter<=20
    iter=iter+1;
    
    % 计算某一点的梯度值
    xx=[x1n;x2n'];
    t = (x1n == xx(1,:)) & (x2n == xx(2,:));

    indt =find(t);
    f_grad = [fx1_grad(indt) fx2_grad(indt)];
    
    % steepest decent mathod
    % setting direction
    h_sd=-f_grad;

    % first order
%     qh1 = fx(xx(1),xx(2)) + transpose(h_sd).*f_grad; 
%     f_new = qh1;
    
end

