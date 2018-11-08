% Non-linear opt lab 9 
% 11612001 HUANG 

% selection v2 
% ��ֱ��ѡ��Ӣ�ˡ�����fitness��ѡȻ���ټ��Ͼ�Ӣ�Ĳ���

function pop_selected = selection2(pop,fitness,pop_elitism)
    [~,N] = size(pop);                % �������Ⱥ������Ϣ
    % pop_selected = zeros(dim,N);
    elitism_N = length(pop_elitism);    % ��Ӣ����
    pop_selected = pop_elitism;
    
    % ��Ӿ�Ӣ���±굽ind
    for k = 1:elitism_N
        tmp_ind = find(pop == pop_elitism(k));
        ind(k) = tmp_ind;
    end 
    tmp_ind_N = length(ind);

    for k = tmp_ind_N:(N-1)                     % ѡ��N-��Ӣ������
        for m = 1:length(fitness)-1
            factor = rand();    % ����ȷ�����������
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
