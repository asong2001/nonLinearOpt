% evaluate
% ���㺯��ֵ
% 8.1
% �����ض��ĺ���ֵ��ͬʱ������õĵ��ֵ

function [F,x_best,f_best] = evaluate(func,pop,lb,ub,varargin)
    k0 = 1;
    f_best = inf;
    F = zeros(1,length(pop));
    
    for k = k0:length(pop)
        F(k) = func(pop(1,k),pop(2,k));
        if F(k) < f_best
            x_best = pop(:,k);
            f_best = F(k);
        end
    end

