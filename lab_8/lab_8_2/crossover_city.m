% non-linear opt
% 11612001 HUANG
% mutation
% pmΪ�����ĸ���

% �����ѡȡ�������е�����λ��k��m����ת��k~m��ĳ��б��

function new_city = crossover_city(city,pc)
    N = length(city);
    % ֻ����һ��
    % c = ceil(N*rand(1,2));      % ����Ҫ����������
    c(1) = unidrnd(10);
    c(2) = unidrnd(10);
    k = c(1);
    m = c(2);
    
    new_city = city;
    if k > m
        tmp = new_city(:,m:k);
        exchange_city = flip(tmp,2);
        for t = 1:length(exchange_city)
            new_city(:,m+t) = exchange_city(:,t);
        end
    elseif k == m
        new_city = city;
    else 
        tmp = new_city(:,k:m);
        exchange_city = flip(tmp,2);
        for t = 1:length(exchange_city)
            new_city(:,k+t) = exchange_city(:,t);
        end
    end
end