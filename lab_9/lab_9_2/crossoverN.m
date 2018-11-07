% Non-linear opt lab 9 
% 11612001 HUANG 

% crossover 
% ֱ�����ѡ��һ����Χ�ڵ�pop�������н��н���
% ֱ�ӽ��滥����100������

function corssovered_pop = crossoverN(pop)
    [dim,N] = size(pop);
    N0 = 100;
    
    % ������Ϊż��
    corssovered_pop = zeros(dim,N0);
    c = [0,0];
    for k = 1:N0
        % ѡ�����������ĸ���
        if c(1) == c(2)
            c = ceil(N*rand(1,2));
        end
        
        % ѡ�񽻻�����
        subdomain = ceil(dim*rand(1,1));

        % ���н���
        tmp1 = pop([1:subdomain-1],c(1));
        tmp2 = pop([subdomain:end],c(2));
        corssovered_pop(:,k) = [tmp1;tmp2];
    end

end