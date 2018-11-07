% Non-linear opt lab 9 
% 11612001 HUANG 

% main program

% intro.
% func_ff2 return ff的函数值
% func_ft2 返回的是ft的函数值

clc;
clear;
close all;

%% initial
N = 100;    % population size
pc = 0.7;   % crossover coefficient 
pm = 1;     % mutation coefficient 
dim = 8;    % 变两个数
% 每一个个体是pop的一列。dim为函数的维度，也就是xi的变量个数-映射到行数
ub = ones(1,8) * 2;  % 上限
lb = ones(1,8) * -2;  % 下限
pop0 = initial_pop(dim,N,ub,lb);    % 初始化种群 
func = @func_ff2;   % 初始化函数
func_dim = 2;
pop = pop0;
iter = 0;
iter_max = 500;

%% 第一次计算函数值
fval = evaluate(func,func_dim,pop,N);
figure(1);
plot(fval(1,:),fval(2,:),'o');

%% iteration进行迭代
while iter < iter_max
    figure(2);
    plot(fval(1,:),fval(2,:),'o','Color','blue');
    hold on
    
    iter = iter + 1;

    [pop_ranked,pop_rank_num] = assessment(pop);   % pop_ranked is 添加了rank的pop; number按照输入的循序对number进行排列
    fitness = fitting(pop_ranked,pop_rank_num);    % 计算适应度
    selected_pop = selection(pop,fitness);         % 被选择的优良个体
    crossovered_pop = crossoverN(selected_pop);      % 交叉互换
    mutated_pop = mutation(pop,ub,lb);              % 突变种群
    
    % 更新函数值
    pop = mutated_pop;
    fval = evaluate(func,func_dim,pop,N);

    figure(2);
    plot(fval(1,:),fval(2,:),'o','Color','red');
    hold off
    
end