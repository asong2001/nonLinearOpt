% non-linear opt lab 8 
% 11612001 HUANG
% ������Ӧ��

% ���Ǹо�ֻ���㺯��ֵ

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
    fitvalue = -fitvalue;       % ������minimize��ȡ��Сֵ���෴��
end 