% inter2 for Excerise 3 Lab2
% 非线性方程组求解
% x 为系数矩阵，b为常数；Ax=b
% Data set
% 就是解线性方程组
clc;
clear;
x=[0,2,2.8,4,5,6,7];
b=[0,-1,5,2,-1,5,8];
n=length(x);
A=zeros(n,n);
x_matrix=A;
for column=1:1:n
    for  row= 1:1:n
        % 先尝试计算每个位置x的值
        x_matrix(row,column)=x(row).^(column);
    end
end





% % plot
% plot(A,b,'o');
% grid on;
% axis([0 7 -20 50]);
% % 0-level
% x_axis=0:0.1:7;
% zero_level=zeros(size(x_axis));
% hold on
% plot(transpose(x_axis),zero_level);
% legend({'Data Points','Zero Level'});