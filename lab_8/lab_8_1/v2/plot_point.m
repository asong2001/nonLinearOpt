% non-linear opt lab 8 
% 11612001 HUANG
% 画点

function plot_point(pop,f_value,dim,N,ptype)
    % ptype 画点的样式
    if dim == 1
        for k = 1:N
            plot(pop(k),f_value(k),ptype);
        end 
    elseif dim == 2
        for k = 1:N
            plot(pop(1,k),pop(2,k),ptype);
        end
    end
end 