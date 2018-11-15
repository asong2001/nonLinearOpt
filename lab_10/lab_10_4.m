% Non linear Opt lab 10.4
% 11612001 HUANG

% Use fmincon routine
clc;
clear;
close all;

%% ²ÎÊý
ub = 1;
lb = 0;
iter = 0;
iter_max = 50;
u_opt = inf;
u_rec = zeros(1,iter_max);

%% initial confition
dim = 2;        % dimension for n
N = 50;
x0 = (dim,N);
for k = 1:6
    subplot(2,3,k);
    plot(x0(:,))


%% optimization result
f = @um;
x_opt = fmincon(f,x0,[],[],[],[],lb,ub);
options = optimoptions(@fmincon,'Algorithm','sqp');
x=fmincon(@e1,x0,[],[],[],[],zeros(dim,N),ones(dim,N),[],options);


%% compare result
figure(1);
plotPoint(x0,'red');
ylim([lb ub]);
hold on
figure(1);
plotPoint(x_opt,'blue');
ylim([lb ub]);
