% Non-linear opt lab 9 
% 11612001 HUANG 

% f_distance 
% ���㺯��ֵ֮��ľ���

% fval Ϊ����ֵ
% Distance between individuals iand jin the feature space
function dis = fitness_distance(Fxi,Fxj)
    dis = norm(Fxi-Fxj);
    
end