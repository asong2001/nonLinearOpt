% non-linear opt
% 11612001 ����
% �����б��

function [C,city] = encode(city_pos,N)
    city = city_pos;
    for k = 1:N
        city(3,k) = k;
    end
    C = city(3,:);      % ȡ���б�š�city����ֻ����[1 2 3 4...]
end
