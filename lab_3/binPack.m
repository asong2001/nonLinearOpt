% Non linear optimization Lab 3
% Problem 2
clc;
clear;
close all;

%%
W=12;
H=200;
bin=zeros(H,W);
% ����N������
N=10;
w=zeros(1,N);
h=zeros(1,N);
for k = 1:N
    w(k)=randi(W); % ��������Ϊbin�Ŀ��
    h(k)=randi(W);
end
boxes=[w;h];

% ����������
figure(1);
axis([0 W 0 H]);
grid on;
for k = 1:N
    box=boxes(k);
    
end
