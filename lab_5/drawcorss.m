% drawing corss
function drawcorss(xy_iter)
    % 初始化数组
    %    3
    %    |
    % 4--1--2
    %    |
    %    5

    % 初始化数组
    for k = 1:5
        plot(xy_iter(1,k),xy_iter(2,k),'.');
    end
    
    for k = 2:4
        line([xy_iter(1,1) xy_iter(1,k)],[xy_iter(2,1) xy_iter(2,k)]);
    end
end