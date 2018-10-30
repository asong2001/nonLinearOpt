% evaluate
% 计算函数值
% 8.1
% 计算特定的函数值，同时返回最好的点和值

function [F,x_best,f_best] = evaluate(func,P,~,~,dim,varargin)
    k0 = 1;
    f_best = inf;
    F = zeros(1,length(P));
    
    if dim == 2
        for k = k0:length(P)
            F(k) = func(P(1,k),P(2,k));
            if F(k) < f_best
                x_best = P(:,k);
                f_best = F(k);
            end
        end
    end
        
    if dim == 1
        for k = k0:length(P)
            F(k) = func(P(k));
            if F(k) < f_best
                x_best = P(k);
                f_best = F(k);
            end
        end
    end

