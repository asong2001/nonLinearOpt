% non-linear opt
% 11612001 ����
% generate cities

function city = initial_city(lb,ub,dim,N)
    % dim ��Ϊ���꣬��Ϊ����
    % NΪ���и���
    for k = 1:N
        city = lb + (ub+ub)*rand(dim,N);
    end
end