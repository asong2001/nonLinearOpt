% non-linear opt
% 11612001 黄松
% adaptative cal

% 计算函数适应度
% 适应度取距离的倒数
function fitting = fitting_city(C,city0_pos,N)
    size_C = size(C);
    fitting = zeros(size_C(1));
    for k = 1:size(C)
        city_pos = decode(C(k,:),city0_pos,N);
        [~,totalDis] = disCal(city_pos);
        fitting(k) = 1./totalDis;
    end
end