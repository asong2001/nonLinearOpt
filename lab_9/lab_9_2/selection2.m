% Non-linear opt lab 9 
% 11612001 HUANG 

% selection v2 
% 不直接选精英了。按照fitness来选然后再加上精英的部分

function pop_selected = selection2(pop,fitness,pop_elitism)
    [~,N] = size(pop);                % 输入的种群数量信息
    % pop_selected = zeros(dim,N);
    elitism_N = length(pop_elitism);    % 精英个数
    pop_selected = pop_elitism;
    
    % 添加精英的下标到ind
    for k = 1:elitism_N
        tmp_ind = find(pop == pop_elitism(k));
        ind(k) = tmp_ind;
    end 
    tmp_ind_N = length(ind);

    for k = tmp_ind_N:(N-1)                     % 选择N-精英个数个
        for m = 1:length(fitness)-1
            factor = rand();    % 产生确定的随机变量
            sort_fitness = sort(fitness,'descend');
            if rand() < sort_fitness(k) && factor > sort_fitness(k+1)
                ind_exist = find(ind == k);
                if ind_exist == 0
                    ind(k) = m;
                end
            end
        end
        pop_selected(:,((elitism_N+1):N)) = pop(:,ind);
    end
end
