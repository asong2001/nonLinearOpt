%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (8) %
% Date:(2018.10.19) %
% By: (����)%
% %
% ID NUMBER: (11612001) %
% LAB:(8.1 Genetic Algorithms with Floating Point Representation) %
% Description: 
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% �Ҿ��ÿ�������һ��һά��

% fp function
clc;
clear;
close all;

%% ��������
iter = 0;
iter_max = 50;
pm = 0.8;       % �����ĸ��ʣ�ͨ��Ϊ1/���򳤶Ⱥ�1/��Ⱥ����֮��
pc = 0.5;

pop_Size = 10;   % ��Ⱥ����
pop_Dimension = 1;      %��Ⱥά��
pop_max = 2;
pop_min = -2;
% ���裺ÿһ��Ϊһ������
P = initial_pop(pop_min,pop_max,pop_Dimension,pop_Size);

%% function
func =@(x) -exp(-0.5*((abs(x)).^2)) .* cos(10*x);

xi = pop_min:0.01:pop_max;
func_value = func(xi);
plot(xi,func_value);
hold on
plot(P,func(P),'x','Color','red');
[F,x_best,f_best] = evaluate(func,P,pop_max,pop_min,1);     % ����ò��ֵĺ���ֵ
opt = zeros(1,iter_max);

%% iteration
while iter <iter_max
    P_temp = selection(P,F,1);        % ���ѡ����ϺõĻ���
    P_new = crossover(P_temp,pc,1);    % pc���򽻻��ĸ���
    P_c = P_new;
    P_new = mutation(P_new,pm);
    P = P_new;
    P(:,1) = x_best;
    [F,x_best,f_best] = evaluate(func,P,pop_max,pop_min,1);     % evaluate ����������������ĺ���ֵ
    iter = iter+1;
    
    plot(P,func(P),'.','Color','blue');
    disp(['x best:',num2str(x_best)]);
    disp(['f best:',num2str(f_best)]);
    
    opt(iter) = f_best;
    plot(x_best,min(opt),'*');
    pause(0.001);
end

plot(x_best,min(opt),'*');

% figure(2);
% plot(opt);
grid on