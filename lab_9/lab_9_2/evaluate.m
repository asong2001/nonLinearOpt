% Non-linear opt lab 9 
% 11612001 HUANG 

% 计算函数值
% func_dim表示有多少个目标
function fval = evaluate(func,func_dim,pop)
    [~,N] = size(pop);
    fval = zeros(func_dim,N);
    for k = 1:N
        fval(:,k) = func(pop(:,k));
    end
end