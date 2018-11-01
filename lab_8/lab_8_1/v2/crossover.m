% non-linear opt lab 8 
% 11612001 HUANG
% crossover 

function pop_new = crossover(pop,pc)
    N = length(pop);    % 单个种群个体数
    popNum = size(pop);     % 种群个数

    pop_new = cell(popNum(1),N);

    for k = 1:N
        c1 = 0;
        c2 = 0;
        while c1 == c2 || c1 == 0 || c2 == 0
            c1 = unidrnd(N);
            c2 = unidrnd(N);
        end

        if rand() < pc
            r = randi([1 N],1,1);
            pop_new(k,:) = {pop(c1,1:r) pop(c2,r+1:N)};
        else 
            pop_new(k,:) = pop(k,:);
        end
    end
end

            