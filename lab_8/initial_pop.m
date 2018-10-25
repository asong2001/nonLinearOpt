% 随机产生初代
% 产生浮点数类型的

function pop = initial_pop(lb,ub,dimension,size)
    for k = 1:size
        pop = lb + (ub+ub)*rand(dimension,size);
    end
end