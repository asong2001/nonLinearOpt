% Non-linear optimization Lab4
% Descent method with Trust Region
% Version 5 
% Using the function dm_diff.m to do differentiate
clc;
clear;
close all;

% testing with 3th function
fx = @(x1,x2) exp(x1/5+x2/2)+x1.^2+x2.^2;
iter = 0;

% initial point; 1 row is x1, 2 row is x2
x0 = [5;3];
delta = norm(dm_diff(fx, x0));
iter_max = 1000;
found = false;

x = x0;
% loop
while found && iter<iter_max
    iter = iter+1;
    diff_f = dm_diff(fx, x);
    htr = -diff_f./norm(diff_f)*(delta).^0.5;
    fx_value = feval(fx, x);
    fxh_value = feval(fx, x+htr);
    q0 = fx_value;
    qh = fx_value + htr*transpose(diff_f);
    r = (fx_value-fxh_value)/(q0+qh);

    % ÅÐ¶Ïµü´úÌõ¼þ
    if r > 0.75
        delta = delta*2;
    elseif r <0.25
        delta = delta./3;
    end
    if r >0
        x =x+htr;
        f_min = feval(fx,x);
    end
    if norm(dm_diff(fx,x))<=10^-6
        found = true;
    end
end

