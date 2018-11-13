% Non linear Opt lab 10.2
% 11612001 HUANG

% Random generate points.
% save the best point.

clc;
clear;
close all;

%% initial 
dim = 2;    % equal to the lecture's n
N = 100;
ub = 1;
lb = 0;
iter = 0;
iter_max = 50;
u_opt = inf;
u_rec = zeros(1,iter_max);
x = rand(dim,N);
x_opt = zeros(size(x));
plotPoint(x_opt,'r');

while iter < iter_max
    iter = iter + 1;
    figure(1);
    x = rand(dim,N);
    u = um(x);
    
    if u < u_opt
        u_opt = u;
        x_opt = x;
        plotPoint(x_opt,'r');
        pause(0.1);
    end
    
    u_rec(iter) = u_opt;
end

figure(1);
plotPoint(x_opt,'red');
grid on

figure(2);
times = 1:iter_max;
plot(times,u_rec);
grid on