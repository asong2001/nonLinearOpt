% % Non linear optimization Lab 3
% Problem 1
% 两点间距离计算
function [disMatrix,totalDis]=disCal(cities)
    for k=1:1:length(cities)-1
        disMatrix(k)=sqrt((cities(k,1)-cities(k+1,1)).^2+(cities(k,2)-cities(k+1,2)).^2);
    end
    totalDis=sum(disMatrix);

end