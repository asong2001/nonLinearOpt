% Non-linear opt lab 9 
% 11612001 HUANG 

% ���㺯��ֵ
% func_dim��ʾ�ж��ٸ�Ŀ��
function fval = evaluate(func,func_dim,pop)
    [~,N] = size(pop);
    fval = zeros(func_dim,N);
    for k = 1:N
        fval(:,k) = func(pop(:,k));
    end
end