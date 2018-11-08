% Non-linear opt lab 9 
% 11612001 HUANG 

% main program

% intro.
% func_ff2 return ff�ĺ���ֵ
% func_ft2 ���ص���ft�ĺ���ֵ

clc;
clear;
close all;

%% initial
N = 100;    % population size
pc = 0.7;   % crossover coefficient 
pm = 1;     % mutation coefficient 
dim = 8;    % ��������
% ÿһ��������pop��һ�С�dimΪ������ά�ȣ�Ҳ����xi�ı�������-ӳ�䵽����
ub = ones(1,8) * 2;  % ����
lb = ones(1,8) * -2;  % ����
pop0 = initial_pop(dim,N,ub,lb);    % ��ʼ����Ⱥ 
func = @func_ff2;   % ��ʼ������
func_dim = 2;
pop = pop0;
iter = 0;
iter_max = 500;
opt_pop = zeros(dim,N);     % ��õĵ�
d_share = 0.7;              % sharing
alpha = 0.1;                % dynamic sharing adjust
d_mating = 3;               % mating 

%% ��һ�μ��㺯��ֵ
fval = evaluate(func,func_dim,pop);
figure(1);
plot(fval(1,:),fval(2,:),'o');

%% ��������ֵ
load('fval_opt.mat');
fval0 = fval;

%% iteration���е���
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

    [pop_ranked,pop_rank_num] = assessment(pop);    % pop_ranked is �����rank��pop; number���������ѭ���number��������
    fitness = fitting(pop_ranked,pop_rank_num);     % ������Ӧ��
    
    pop_elitism = elitism(pop,fitness);             % ��ѡ��ľ�Ӣ
    selected_pop = selection3(pop,fitness,pop_elitism,fitness);          % �������̶Ľ���ѡ���������
    crossovered_pop = crossoverN(selected_pop);     % ���滥��
    mutated_pop = mutation(crossovered_pop,ub,lb,pm);              % ͻ����Ⱥ
    
    % ���º���ֵ
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