% Non linear Opt lab 10.3
% 11612001 HUANG

% LHS
% 均匀采样。能够让每一行每一列都有一个点。

clc;
clear;
close all;

%% parameter
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
x_opt = zeros(size(x)); % 预置理想值

figure(1);
plotPoint(x,'r');
xlim([lb ub]);
ylim([lb ub]);


%% iteration
ind = randperm(N);      % 随机产生索引序列，不重复
for k = 1:N
    tmp_ind = ind(k);
    x_tmp = x(:,k);
    % y轴的偏移量有问题。感觉是选点的问题
    % 应该要分成两次进行拓展
    x_opt(:,k) = [x_tmp(1) + (tmp_ind-1)*xdelta ; x_tmp(2)];
end

for k = 1:N
    % y轴的偏移量有问题。感觉是选点的问题
    % 应该要分成两次进行拓展
    tmp_ind = ind(k);
    x_tmp = x(:,k);
    x_opt(:,k) = [x_opt(1,k) ; x_opt(2,k) + (tmp_ind-1)*ydelta];
end
%% plotting figures
figure(2);
plotPoint(x_opt,'red');
xlim([lb ub]);
ylim([lb ub]);
    