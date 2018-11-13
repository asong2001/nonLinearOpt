% Non linear Opt lab 10.1
% 11612001 HUANG

% plot figure

function plotPoint(x,color)
    [dim,~] = size(x);
    if dim == 2
        plot(x(1,:),x(2,:),'o','Color',color);
        grid on
    elseif dim ==3 
        plot3(x(1,:),x(2,:),x(3,:),'o');
        grid on
    end
end