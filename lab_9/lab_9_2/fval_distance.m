% Non-linear opt lab 9 
% 11612001 HUANG 

% f_distance 
% 计算函数值之间的距离

% fval 为函数值
% Distance between individuals iand jin the feature space
function dis = fitness_distance(Fxi,Fxj)
    dis = norm(Fxi-Fxj);
    
end