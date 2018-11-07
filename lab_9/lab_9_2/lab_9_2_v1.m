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

%% ��һ�μ��㺯��ֵ
fval = evaluate(func,func_dim,pop,N);
figure(1);
plot(fval(1,:),fval(2,:),'o');

%% iteration���е���
while iter < iter_max
    figure(2);
    plot(fval(1,:),fval(2,:),'o','Color','blue');
    hold on
    
    iter = iter + 1;

    [pop_ranked,pop_rank_num] = assessment(pop);   % pop_ranked is �����rank��pop; number���������ѭ���number��������
    fitness = fitting(pop_ranked,pop_rank_num);    % ������Ӧ��
    selected_pop = selection(pop,fitness);         % ��ѡ�����������
    crossovered_pop = crossoverN(selected_pop);      % ���滥��
    mutated_pop = mutation(pop,ub,lb);              % ͻ����Ⱥ
    
    % ���º���ֵ
    pop = mutated_pop;
    fval = evaluate(func,func_dim,pop,N);

    figure(2);
    plot(fval(1,:),fval(2,:),'o','Color','red');
    hold off
    
end