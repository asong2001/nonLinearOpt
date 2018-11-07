% Non-linear opt lab 9 
% 11612001 HUANG 

% individual assessment
% 利用domination来判断rank
% 依据是 r_i = 1 + q_i
% q_i 为dominate第i个个体的个体数量

% rank_num 为排列值
function [pop_added_rank, rank_num] = assessment(pop)
    N = length(pop);
    pop_rank = zeros(1,N);
    for k = 1:N
        q = 0;      % 有q个数比pop(k)大
        % test_pop = pop(:,k);    % 选择用来比较的点
        for m = 1:N
            if pop(1,m) > pop(1,k) && pop(2,m) > pop(2,k)
                q = q + 1;
            end
        end
        pop_rank(k) = q + 1;
    end
    rank_num = pop_rank;
    pop_added_rank = [pop;pop_rank];
    
end