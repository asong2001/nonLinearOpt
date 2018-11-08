% Non-linear opt lab 9 
% 11612001 HUANG 

% elitism
% 选取精英。直接选rank=1的

function pop_elitism = elitism(pop,fitness)
    
    max_fitness = max(fitness);
    ind = find(fitness == max_fitness);
    pop_elitism = pop(:,ind);
    
end