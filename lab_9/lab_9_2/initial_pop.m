% Non-linear opt lab 9 
% 11612001 HUANG 

% initial function.
% input dim, pop Size for N

function pop = initial_pop(dim,N,ub,lb)
    pop = zeros(dim,N);

    for m = 1:dim     % ά�ȿ�����
        for n = 1:N   % ������ſ���
            % ���������ub��lb֮����������
            ubb = ub(m);
            lbb = lb(m);
            pop(m,n) = lbb + (ubb+ubb)*rand(1);
        end
    end 
end 