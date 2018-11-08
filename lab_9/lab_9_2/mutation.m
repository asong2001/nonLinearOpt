% Non-linear opt lab 9 
% 11612001 HUANG 

% mutation
% pm 为突变概率
% 任意一个个体只有在随机数大于pm时才会在其基因中任意选一个基因进行突变

function mutated_pop = mutation(pop,ub,lb,pm)
    [dim,N] = size(pop);
    mutated_pop = pop;

    for k = 1:N
        if rand() < pm
            m = ceil(dim*rand(1,1));

            ubb = ub(m);
            lbb = lb(m);
            rand_tmp = lbb + (ubb+ubb)*rand(1);

            mutated_pop(m,k) = rand_tmp;
        end
    end
end
