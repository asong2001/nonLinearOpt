% �����������
% �������������͵�

function pop = initial_pop(lb,ub,dimension,size)
    for k = 1:size
        pop = lb + (ub+ub)*rand(dimension,size);
    end
end