% Non-linear opt lab 9 
% 11612001 HUANG 

% fitness sharing

function SF = fitness_sharing(distance,pop,alpha,d_share,fval)
    [dim,N] = size(pop);
    d = zeors(N,N);
    SF = d;
    for i = 1:N
        for j = 1:N
            dis = [fval(1,i) fval(2,i)] - [fval(1,j) fval(2,j)];
            d(i,j) = norm(dis);
            if i == j
                % 重复的点直接把距离变成零
                d(i,j) = 0;
            end
        end
    end

    for i = 1:N
        for j = 1:N
            if d(i,j) < d_share
                SF(i,j) = 1 - (d(i,j)/d_share).^alpha
            else 
                SF(i,j) = 0;
            end
        end
    end

    fitness_sharing = fitness
    for k = 1:N
        tmp = sum(SF(k,:));
        fitness_sharing(k) = fitness(k) / tmp;
    end
end

