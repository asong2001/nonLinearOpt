% Non-linear opt lab 9 
% 11612001 HUANG 

% mutation
% pm Ϊͻ�����
% ����һ������ֻ�������������pmʱ�Ż��������������ѡһ���������ͻ��

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
