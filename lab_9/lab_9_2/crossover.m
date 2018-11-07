% Non-linear opt lab 9 
% 11612001 HUANG 

% crossover 
% 直接随机选择一定范围内的pop的任意行进行交换

function corssovered_pop = crossover(pop)
    [dim,N] = size(pop);

    % 个体数为偶数
    if mod(N,2) == 0
        corssovered_pop = zeros(dim,N);
        c = [0,0];
        for k = 1:(N/2)
            % 选择用来交换的父代
            if c(1) == c(2)
                c = ceil(N*rand(1,2)); 
            end

            % 选择交换区间
            subdomain = ceil(dim*rand(1,1));
            
            corssovered_pop(:,k) = pop(:,k);
            % 进行交换
            tmp1 = pop([1:subdomain-1],c(1));
            tmp2 = pop([subdomain:end],c(2));
            corssovered_pop(:,k) = [tmp1;tmp2];
        end

    % 个体数为奇数
    else 
        corssovered_pop = zeros(dim,N-1);
        c = [0,0];
        for k = 1:((N-1)/2)
            % 选择用来交换的父代
            if c(1) == c(2)
                c = ceil(N*rand(1,2)); 
            end

            % 选择交换区间
            subdomain = ceil(dim*rand(1,1));
            
            corssovered_pop(:,k) = pop(:,k);
            % 进行交换
            tmp1 = pop([1:subdomain-1],c(1));
            tmp2 = pop([subdomain:end],c(2));
            corssovered_pop(:,k) = [tmp1;tmp2];
        end
    end


end