% selection
% 计算函数值
% 8.1
% 对上一代基因进行选择

% P父代，F为子代
function R = selection(P,F)
    N = length(P);
    for k = 1:2*N 
        c = ceil(N*rand(1,2));  % 随机产生新的值，[c1 c2] ci=1~N
        if F(c(1))<F(c(2))
            R{k} = P{c(1)};
        else 
            R{k} = P{c(2)};
        end
    end 
