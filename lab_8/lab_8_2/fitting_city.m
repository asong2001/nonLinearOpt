% non-linear opt
% 11612001 黄松
% adaptative cal

% 计算函数适应度
% 适应度取距离的倒数
function fitting = fitting_city(city)
    [~,totcalDis] = disCal(city);
    fitting = 1./totcalDis;
end