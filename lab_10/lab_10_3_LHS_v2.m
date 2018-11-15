% Non linear Opt lab 10.3
% 11612001 HUANG

% LHS
% 均匀采样。能够让每一行每一列都有一个点。
clc;
clear;
hold off

%% 参数
dim = 2;    % sampling points' dimension
N = 50;     % 采样点数
ub = 1;
lb = 0;
iter = 0;
iter_max = 50;
u_opt = inf;
u_rec = zeros(1,iter_max);

%% iteration
% 假设有N个点
% 最小的subdomain为xlim/N
% 在最小的区间内产生点
xdelta = ub/N;     % 确定subdomain的尺寸
ydelta = ub/N;
x = lb/N + (ub/N-lb/N) * rand(dim,N);        % 生成随机点

figure(1);
plotPoint(x*N,'r');
xlim([lb ub]);
ylim([lb ub]);
u_rec = zeros(1,iter_max);

%% iteration 
while iter < iter_max
    iter = iter+1;
    ind = randperm(N);      % 产生随机的索引。个数为N。想到于对点进行随机排列。
    ind2 = randperm(N);
    x_new = zeros(dim,N);
    for k = 1:N
        tmp_ind = ind(k);
        x_tmp = x(:,tmp_ind);
        x_new(:,k) = [x_tmp(1) + xdelta * (ind2(k)-1) ; x_tmp(2) + ydelta * (ind(k)-1)];
    end
    
    u = um(x_new);
    if u < u_opt
        x = x_new;
        x_opt = x_new;
        u_opt = u;
    end
    u_rec(iter) = u_opt;
    x = x./N;
end

%% show result
figure(2);
u = um(x_opt);
plotPoint(x_opt,'red');
ylim([lb ub]);
xlim([lb ub]);

figure(3);
times = 1:iter_max;
plot(times,u_rec);
grid on