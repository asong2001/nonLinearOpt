% non-linear opt
% 11612001 黄松
% generate cities sequence 

function city = initial_C(lb,ub,dim,N)
    % dim 行为坐标，列为序列
    % N为城市个数
    for k = 1:N
        city = ceil(N*rand(1,N));
%         city = lb + (ub+ub)*rand(dim,N);
    end
end