% Non linear optimization Lab 3
% Problem 2
clc;
clear;
close all;

%%
W=12;
H=200;
bin=zeros(H,W);
% 生成N个箱子
N=10;
w=zeros(1,N);
h=zeros(1,N);
for k = 1:N
    w(k)=randi(W); % 设计最大宽度为bin的宽度
    h(k)=randi(W);
end
boxes=[w;h];

    
end
