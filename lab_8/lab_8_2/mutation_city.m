% non-linear opt
% 11612001 HUANG
% mutation
% randomly swapping of two cities on the routine
% pm为变异的概率

% exchange ramdonly
function new_city = mutation_city(city,pm)
    N = length(city);
    new_city = zeros(2,N);

    for k = 1:N
        c = ceil(N*rand(1,2));      % 选择要进行随机交换的对象
        if rand() > pm
            tmp = city(:,c(2));
            city(:,c(2)) = city(:,c(1));
            city(:,c(1)) = tmp;
        end
    end
    new_city = city;

end