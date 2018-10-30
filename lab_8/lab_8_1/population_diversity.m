% 8.1 population_diversity
% 计算种群的基因之间的标准差

function S = population_diversity(P)
    N = length(P);
    n = length(P(:,1));
    for j = 1:n             % 基因操作
        for k = 1:N         % 种群操作
            L(k) = P(j,k);
        end
        R(j) = std(L);
    end
    S = sum(R)/n;
