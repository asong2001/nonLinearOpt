% Non-linear opt lab 9 
% 11612001 HUANG 

% fitting
% 计算函数的适应度
% 传入添加了ranked的pop

function fitness = fitting(~,pop_rank_number)
    N = length(pop_rank_number);
    fitness = zeros(1,N);
    for k = 1:N
        fitness(k) = 1./pop_rank_number(end,k);
    end
    sum_rank = sum(fitness);
    fitness = fitness ./ sum_rank;
end

