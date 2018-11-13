% Non linear Opt lab 10.3
% 11612001 HUANG

% LHS
% ���Ȳ������ܹ���ÿһ��ÿһ�ж���һ���㡣

clc;
clear;
close all;

%% parameter
dim = 2;    % sampling points' dimension
N = 50;     % ��������
ub = 1;
lb = 0;
iter = 0;
iter_max = 50;
u_opt = inf;
u_rec = zeros(1,iter_max);

%% iteration
% ������N����
% ��С��subdomainΪxlim/N
% ����С�������ڲ�����
xdelta = ub/N;     % ȷ��subdomain�ĳߴ�
ydelta = ub/N;
x = lb/N + (ub/N-lb/N) * rand(dim,N);        % ���������
x_opt = zeros(size(x)); % Ԥ������ֵ

figure(1);
plotPoint(x,'r');
xlim([lb ub]);
ylim([lb ub]);


%% iteration
ind = randperm(N);      % ��������������У����ظ�
for k = 1:N
    tmp_ind = ind(k);
    x_tmp = x(:,k);
    % y���ƫ���������⡣�о���ѡ�������
    % Ӧ��Ҫ�ֳ����ν�����չ
    x_opt(:,k) = [x_tmp(1) + (tmp_ind-1)*xdelta ; x_tmp(2)];
end

for k = 1:N
    % y���ƫ���������⡣�о���ѡ�������
    % Ӧ��Ҫ�ֳ����ν�����չ
    tmp_ind = ind(k);
    x_tmp = x(:,k);
    x_opt(:,k) = [x_opt(1,k) ; x_opt(2,k) + (tmp_ind-1)*ydelta];
end
%% plotting figures
figure(2);
plotPoint(x_opt,'red');
xlim([lb ub]);
ylim([lb ub]);
    