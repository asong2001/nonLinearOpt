% non-linear opt
% 11612001 黄松
% 绘制城市位置

function plot_city(city_pos,type)
    % 传入城市的位置，也就是被decode之后的
    plot(city_pos(1,:),city_pos(2,:),type);
end