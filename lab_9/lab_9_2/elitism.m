% Non-linear opt lab 9 
% 11612001 HUANG 

% elitism
% ѡȡ��Ӣ��ֱ��ѡrank=1��

function pop_elitism = elitism(pop,fitness)
    
    max_fitness = max(fitness);
    ind = find(fitness == max_fitness);
    pop_elitism = pop(:,ind);
    
end