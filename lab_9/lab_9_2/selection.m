% Non-linear opt lab 9 
% 11612001 HUANG 

% selection
% 直接选被dominate最少的
% 也就是直接选择精英了

function selected_pop = selection(pop,fitness)
    max_fitness = max(fitness);
    ind = find(fitness == max_fitness);
    selected_pop = pop(:,ind);

end