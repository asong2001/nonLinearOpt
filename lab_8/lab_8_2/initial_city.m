% non-linear opt
% 11612001 黄松
% generate cities

function city_pop = initial_city(city_size,N)
    % 每一行都是一个基因组。产生city_size个基因组
    % dim 行为坐标，列为序列
    % N为城市个数
    city_pop = zeros(city_size,N);
    for k = 1:city_size
        city_pop(k,:) = randperm(N);
    end
end