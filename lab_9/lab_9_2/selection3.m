% Non-linear opt lab 9 
% 11612001 HUANG 

% selection v2 
% 按照课件了

function selcted_pop = selection3(pop,pop_rank_num,pop_elitism,fitting)
    [dim,N] = size(pop);
    [~,elitism_N] = size(pop_elitism);
    selcted_pop = zeros(dim,N);

    selcted_pop(:,(1:elitism_N)) = pop_elitism; % 预先保留精英


    for k = 1:(N-elitism_N)
        r = randperm(N,2);    % 随机选择若干个
        c1_dominated = false;
        c2_dominated = false;

        fit1 = fitting(r(1));
        fit2 = fitting(r(2));

        if pop(:,r(1)) == 1
            c1_dominated = true;
        end

        if pop(:,r(2)) == 2
            c2_dominated = true;
        end

        if c1_dominated == c2_dominated
            if fit1 > fit2
                selcted_pop(:,k) = pop(:,r(1));
            else 
                selcted_pop(:,k) = pop(:,r(2));
            end
        else
            if c1_dominated == false
                selcted_pop(:,k) = pop(:,r(1));
            else
                selcted_pop(:,k) = pop(:,r(2));
            end
        end
    end
end