% non-linear opt
% 11612001 HUANG
% mutation
% randomly swapping of two cities on the routine
% pmΪ����ĸ���

% exchange ramdonly
function new_city = mutation_city(city,pm)
    N = length(city);
    new_city = zeros(2,N);

    for k = 1:N
        c = ceil(N*rand(1,2));      % ѡ��Ҫ������������Ķ���
        if rand() > pm
            tmp = city(:,c(2));
            city(:,c(2)) = city(:,c(1));
            city(:,c(1)) = tmp;
        end
    end
    new_city = city;

end