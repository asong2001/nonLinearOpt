% non-linear opt
% 11612001 ª∆À…
% line city

function line_city(fig_num,city,colors)
    x = [city(1,:) city(1,1)];
    y = [city(2,:) city(2,1)];
    figure(fig_num);
    for k = 2:length(city)+1
        line([x(k-1) x(k)],[y(k-1) y(k)],'Color',colors);
    end