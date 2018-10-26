% evaluate
% 计算函数值
% 8.1
% 计算特定的函数值，同时返回最好的点和值

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

