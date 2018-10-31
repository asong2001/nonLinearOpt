% non-linear opt
% 11612001 HUANG
% test 
% 会自己增殖出一个，查一下是哪里的问题

function occur = test(C_tmp)
    N0 = 10;
    N = length(C_tmp);
    if N0 ~= N
        occur = inf;
    end
end