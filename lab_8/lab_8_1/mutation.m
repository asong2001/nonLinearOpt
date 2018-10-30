% mutation
% 计算函数值
% 8.1
% 基因突变

function P = mutation(P,pm)
    N = length(P);
    n = length(P(:,1));
    for k = 1:N                     % 遍历每个对象的基因
        for m = 1:n                 % 选择种群个体
            if rand() < pm
                P(m,k) = 1-P(m,k);
            end
        end
    end