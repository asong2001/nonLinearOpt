% non-linear opt
% 11612001 ����
% generate cities sequence 

function city = initial_C(lb,ub,dim,N)
    % dim ��Ϊ���꣬��Ϊ����
    % NΪ���и���
    for k = 1:N
        city = ceil(N*rand(1,N));
%         city = lb + (ub+ub)*rand(dim,N);
    end
end