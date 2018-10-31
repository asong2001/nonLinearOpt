% non-linear opt
% 11612001 黄松
% 提取城市的编号。从city_pos到city
% 位置到编号

function C = cityPos2C(city_pos,city,N)
    C = zeros(1,N);
    for k = 1:N
        ind = find(city([1:2],:) == city_pos(:,k));
        C(k) = city(3,ind);
    end
end