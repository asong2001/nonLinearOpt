% Non-linear opt lab 9 
% 11612001 HUANG 

% selection
% ֱ��ѡ��dominate���ٵ�
% Ҳ����ֱ��ѡ��Ӣ��

function selected_pop = selection(pop,fitness)
    max_fitness = max(fitness);
    ind = find(fitness == max_fitness);
    selected_pop = pop(:,ind);

end