% % Non linear optimization Lab 8 ref from lab3
% 11612001 HUANG
% 两点间距离计算
function [disMatrix,totalDis]=disCal(cities)
    disMatrix = zeros(length(cities));
    for k=1:1:length(cities)-1
        disMatrix(k)=sqrt((cities(1,k)-cities(1,k+1)).^2+(cities(2,k)-cities(2,k+1)).^2);
    end
    tmp = sum(disMatrix);
    totalDis=tmp(1);

end