% Non linear Opt lab 10.3
% 11612001 HUANG

% LHS
% ���Ȳ������ܹ���ÿһ��ÿһ�ж���һ���㡣
clc;
clear;
hold off

%% ����
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

figure(1);
plotPoint(x*N,'r');
xlim([lb ub]);
ylim([lb ub]);
u_rec = zeros(1,iter_max);

%% iteration 
while iter < iter_max
    iter = iter+1;
    ind = randperm(N);      % �������������������ΪN���뵽�ڶԵ����������С�
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