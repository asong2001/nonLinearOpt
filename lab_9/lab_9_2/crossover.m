% Non-linear opt lab 9 
% 11612001 HUANG 

% crossover 
% ֱ�����ѡ��һ����Χ�ڵ�pop�������н��н���

function corssovered_pop = crossover(pop)
    [dim,N] = size(pop);

    % ������Ϊż��
    if mod(N,2) == 0
        corssovered_pop = zeros(dim,N);
        c = [0,0];
        for k = 1:(N/2)
            % ѡ�����������ĸ���
            if c(1) == c(2)
                c = ceil(N*rand(1,2)); 
            end

            % ѡ�񽻻�����
            subdomain = ceil(dim*rand(1,1));
            
            corssovered_pop(:,k) = pop(:,k);
            % ���н���
            tmp1 = pop([1:subdomain-1],c(1));
            tmp2 = pop([subdomain:end],c(2));
            corssovered_pop(:,k) = [tmp1;tmp2];
        end

    % ������Ϊ����
    else 
        corssovered_pop = zeros(dim,N-1);
        c = [0,0];
        for k = 1:((N-1)/2)
            % ѡ�����������ĸ���
            if c(1) == c(2)
                c = ceil(N*rand(1,2)); 
            end

            % ѡ�񽻻�����
            subdomain = ceil(dim*rand(1,1));
            
            corssovered_pop(:,k) = pop(:,k);
            % ���н���
            tmp1 = pop([1:subdomain-1],c(1));
            tmp2 = pop([subdomain:end],c(2));
            corssovered_pop(:,k) = [tmp1;tmp2];
        end
    end


end