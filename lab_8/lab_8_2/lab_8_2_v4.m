%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (8) %
% Date:(2018.10.19) %
% By: (����)%
% %
% ID NUMBER: (11612001) %
% LAB:(8.2 Genetic Algorithms for TSP) %
% Description: 
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

%--------------version 4-------------%
clc;
clear;
close all;

iter = 0;
iter_max = 500;
pm = 0.01;
pc = 0.8;
dis_step = zeros(1,iter_max);

%% ����֮ǰ�����ĳ���Ⱥ
load('Cities.mat');
city0_pos = C;
[C0,city0] = encode(city0_pos,N);
C = C0;
city_pos = city0_pos;

%% ��һ�ε�Ч��
[~,dis] = disCal(city0_pos);
figure(1);
plot_city(city0_pos,'o');
hold on
line_city(1,city0_pos,'red');
title(num2str(dis));
pop_Size = 300;

C_opt = C;

while iter < iter_max
    C_new = initial_city(pop_Size-1,N);           % ������һ������9������
    C_new(pop_Size,:) = C_opt;               % ������һ������ֵ
    fitvalue = fitting_city(C_new,city0,N);      % ������Ӧ��
    C_tmp1 = selection_city(C_new,fitvalue);       % ѡ����õ���1��
    C_tmp2 = crossover_city(C_tmp1,pc);           % ���滥��
    C_tmp3 = mutation_city(C_tmp2,pm);
    C_tmp = C_tmp3;
    
    city_pos = decode(C_tmp,city0,N);
    [~,disNew] = disCal(city_pos);

    if disNew < dis
        dis = disNew;
        C_opt = C_tmp;
    end

    iter = iter + 1;
    hold off
    
    dis_step(iter) = dis;
    disp({['time ', num2str(iter)],['dis ',num2str(dis)]});
end

%% ��ʾ���
figure(3);
city_opt = decode(C_opt,city0,N);
[~,disOpt] = disCal(city_opt);
plot_city(city_pos,'o');
hold on
line_city(3,city_opt,'red');
title(num2str(disOpt));

%% ��ʾ����
figure(4);
plot(dis_step);
title(num2str(disOpt));