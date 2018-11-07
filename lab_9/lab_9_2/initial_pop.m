% Non-linear opt lab 9 
% 11612001 HUANG 

% initial function.
% input dim, pop Size for N

function pop = initial_pop(dim,N,ub,lb)
    pop = zeros(dim,N);

    for m = 1:dim     % 维度控制行
        for n = 1:N   % 个体序号控制
            % 随机产生才ub和lb之间的随机变量
            ubb = ub(m);
            lbb = lb(m);
            pop(m,n) = lbb + (ubb+ubb)*rand(1);
        end
    end 
end 