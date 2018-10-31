% non-linear opt
% 11612001 黄松
% 给城市编号

function [C,city] = encode(city_pos,N)
    city = city_pos;
    for k = 1:N
        city(3,k) = k;
    end
    C = city(3,:);      % 取城市编号。city里面只包含[1 2 3 4...]
end
