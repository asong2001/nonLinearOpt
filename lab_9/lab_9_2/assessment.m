% Non-linear opt lab 9 
% 11612001 HUANG 

% individual assessment
% ����domination���ж�rank
% ������ r_i = 1 + q_i
% q_i Ϊdominate��i������ĸ�������

% rank_num Ϊ����ֵ
function [pop_added_rank, rank_num] = assessment(pop)
    N = length(pop);
    pop_rank = zeros(1,N);
    for k = 1:N
        q = 0;      % ��q������pop(k)��
        % test_pop = pop(:,k);    % ѡ�������Ƚϵĵ�
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