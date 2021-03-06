%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (8) %
% Date:(2018.10.19) %
% By: (黄松)%
% %
% ID NUMBER: (11612001) %
% LAB:(8.1 Genetic Algorithms with Floating Point Representation) %
% Description: 
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

clc;
clear;
close all;

% 迭代控制
iter = 0;
iter_max = 1000;
pm = 0.3;       % 交换的概率，通常为1/基因长度和1/种群个数之间
pc = 0.5;

pop_Size = 10;   % 种群数量
pop_Dimension = 2;      %种群维度
pop_max = 2;
pop_min = -2;
% 假设：每一列为一个个体
P = initial_pop(pop_min,pop_max,pop_Dimension,pop_Size);

func = @(x,y) ((1-x).^2+100*((y-x.^2).^2));                 % optimizated function
% 画图
xi = pop_min:0.01:pop_max;
yi = xi';
[X,Y] = meshgrid(xi,yi);
func_value = func(xi,yi);
contour(X,Y,func_value,100);
hold on
plot(P(1,:),P(2,:),'x','Color','red');
[F,x_best,f_best] = evaluate(func,P,pop_max,pop_min,2);     % 计算该部分的函数值
opt = zeros(1,iter_max);

while iter <iter_max
    P_temp = selection(P,F);        % 随机选择出较好的基因
    P_new = crossover(P_temp,pc);    % pc基因交换的概率
    P_new = mutation(P_new,pm);
    P = P_new;
    P(:,1) = x_best;
    [F,x_best,f_best] = evaluate(func,P,pop_max,pop_min,2);
    iter = iter+1;
    
    plot(P(1,:),P(2,:),'.','Color','blue');
%     disp(num2str(x_best));
%     disp(num2str(f_best));
    
    opt(iter) = f_best;
end


plot(x_best(1),x_best(2),'*');

figure(2);
plot(opt);
grid on