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
opt_pop = zeros(dim,N);     % 最好的点
d_share = 0.7;              % sharing
alpha = 0.1;                % dynamic sharing adjust
d_mating = 3;               % mating 

%% 第一次计算函数值
fval = evaluate(func,func_dim,pop);
figure(1);
plot(fval(1,:),fval(2,:),'o');

%% 画出理想值
load('fval_opt.mat');
fval0 = fval;

%% iteration进行迭代
while iter < iter_max
    figure(2);
    xlim([0,1]);
    ylim([0,1]);
    plot(fval0(:,1),fval0(:,2),'*');
    hold on
    plot(fval(1,:),fval(2,:),'o','Color','blue');
    xlim([0,1]);
    ylim([0,1]);
    
    iter = iter + 1;

    [pop_ranked,pop_rank_num] = assessment(pop);    % pop_ranked is 添加了rank的pop; number按照输入的循序对number进行排列
    fitness = fitting(pop_ranked,pop_rank_num);     % 计算适应度
    
    pop_elitism = elitism(pop,fitness);             % 被选择的精英
    selected_pop = selection3(pop,fitness,pop_elitism,fitness);          % 根据轮盘赌进行选择优秀个体
    crossovered_pop = crossoverN(selected_pop);     % 交叉互换
    mutated_pop = mutation(crossovered_pop,ub,lb,pm);              % 突变种群
    
    % 更新函数值
    pop = mutated_pop;
    fval = evaluate(func,func_dim,pop);
    
    elisism_N = length(pop_elitism);
    fval_elitism = evaluate(func,func_dim,pop_elitism);

    title(num2str(iter));
    plot(fval_elitism(1,:),fval_elitism(2,:),'o','Color','red');
%     hold off
    pause(0.01);
    hold off

end