% non-linear opt lab 8 
% 11612001 HUANG
% 选择

% 直接暴力选取最小的两个个体

function [pop_min1,pop_min2] = selection(fitvalue,pop)
    N = length(pop);
    for k = 1:N
        fit_sort = sort(fitvalue);
        min_ind1 = find(fitvalue == fit_sort(1));
        min_ind2 = find(fitvalue == fit_sort(2));
        
        pop_min1 = pop(:,min_ind1);
        pop_min2 = pop(:,min_ind2);
    end
end