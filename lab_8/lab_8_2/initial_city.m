% non-linear opt
% 11612001 ����
% generate cities

function city_pop = initial_city(city_size,N)
    % ÿһ�ж���һ�������顣����city_size��������
    % dim ��Ϊ���꣬��Ϊ����
    % NΪ���и���
    city_pop = zeros(city_size,N);
    for k = 1:city_size
        city_pop(k,:) = randperm(N);
    end
end