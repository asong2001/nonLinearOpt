%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (5) %
% Date:(2018.10.10) %
% By: (黄松) %
% %
% ID NUMBER: (11612001) %
% LAB:(5.1) %
% Description: Pattern Search Algorithm%
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

% 传入的x，y为初始值
% x,y就是初始值
% xy是迭代变量，第一行为x，第二行为y
function lab51(f,x,y,range,step)
    % 初始化
    xy = [x;y];
    index = linspace(range(1),range(2),70);
    [X,Y] = meshgrid(index,index);
    z = feval(f,X,Y);
    contour(index,index,z,200);
    hold on
    plot(xy(1),xy(2),'o');

    time = 0;

    while step >0.0001 && time<=1000
        xx = [xy(1)+step xy(1)       xy(1)-step xy(1)];
        yy = [xy(2)      xy(2)+step  xy(2)      xy(2)-step];
        
        xxx = [xy(1) xx];
        yyy = [yy(2) yy];
        % f_value 为局部函数值
        drawcorss([xxx;yyy]);
        f_value = feval(f,xxx,yyy);

        local_min = min(f_value);
        min_index = find(f_value == local_min);

        if min_index == 5
            step = step *0.8;
        end
        new_xy = [xxx(min_index);yyy(min_index)];
        line(xy,new_xy);
        hold on;
        time = time+1;
        xy = new_xy;
    end
end