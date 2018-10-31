% non-linear opt lab 8
% 11612001 HUANG
% decode 
% 完成从编码到城市的映射

% city0 在开始的时候就已经确定下来了
function city = decode(C,city0,N)
    city = zeros(2,N);
    for k = 1:N
        tmp = C(k);
        ind = find(city0(3,:) == tmp);
        city(:,k) = city0([1 2],ind);
    end
end