% mutation
% 计算函数值
% 8.1
% 对上一代基因进行选择

function P = mutation(P,pm)
    N = length(P);
    n = length(P{1});
    for k = 1:N                     % 遍历每个对象的基因
        for m = 1:n                 % 选择种群个体
            if rand() < pm
                P{k}(m) = 1-P{k}(m);
            end
        end
    end