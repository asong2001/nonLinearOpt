% non-linear opt lab 8 
% 11612001 HUANG
% 计算适应度

% 但是感觉只会算函数值

function fitvalue = fitting(func,pop,dim,N)
    if dim == 1
        for k = 1:N
            fitvalue = func(pop(k));
        end 
    elseif dim == 2 
        for k = 1:N
            fitvalue = func(pop(1,k),pop(2,k));
        end 
    end 
    fitvalue = -fitvalue;       % 由于是minimize，取最小值的相反数
end 