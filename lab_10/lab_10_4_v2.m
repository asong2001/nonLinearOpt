% Non linear Opt lab 10.4
% 11612001 HUANG

% Use fmincon routine
clc;
clear;
close all;

%% optimization
dim = 2;
N = 50;
x0 = rand(dim,N);
ub = ones(dim,N);
lb = zeros(dim,N);

figure(1);
plotPoint(x0,'red');
xlim([lb(1) ub(1)]);
ylim([lb(1) ub(1)]);
hold on

func = @um;      % optimizated function
options = optimoptions(@fmincon,'Algorithm','sqp');
x = fmincon(func,x0,[],[],[],[],lb,ub,[],options);
u = um(x);
u0 = um(x0);
figure(1);
plotPoint(x,'blue');
xlim([lb(1) ub(1)]);
ylim([lb(1) ub(1)]);