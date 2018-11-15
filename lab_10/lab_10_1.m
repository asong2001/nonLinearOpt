% Non linear Opt lab 10.1
% 11612001 HUANG

% main

clc;
clear;
close all;

%% initial 
dim = 5;    % n
N = 20;
ub = 1;
lb = 0;

x = rand(dim,N);
figure(1);
plotPoint(x,'r');
u = um(x);
