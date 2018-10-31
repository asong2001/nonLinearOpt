% non-linear opt
% 11612001 黄松
% selection opt

function C_new = selection_city(city,fitting)
    % fitting为适应度
    % city带城市的序列
    fitSum = sum(fitting);
    fitting = fitting./fitSum;
    