% 随机产生初代
% 产生浮点数类型的
% 8.1
% 随机产生的范围在[lb,ub]之间。生成的维度游dimension控制
% 每一列为一个个体，另外的行数代表该分量在该方向上的分量。也就相当于个体的位置信息。

function pop = initial_pop(lb,ub,dimension,size)
    for k = 1:size
        pop = lb + (ub+ub)*rand(dimension,size);
    end
end