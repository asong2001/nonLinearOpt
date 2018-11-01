% non-linear opt lab 8 
% 11612001 HUANG
% mutation

function pop = mutation(pop,pm,ub,lb)
    N = length(pop);
    dim = length(pop(:,1));

    for k = 1:N
        for m = 1:dim
            if rand() > pm
                pop(m,k) = lb + (ub+ub)*rand(dim,N);
            end
        end
    end
end
