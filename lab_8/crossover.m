% evaluate
% 计算函数值
% 8.1

function R = crossover(P,pc,dim)
    N = length(P);
    n = length(P(:,1));     % 其实就是维度
    R (:,1) = P(:,1);       % 第一个不进行操作
    
    if dim == 2 
        for k = 2:N             % 个体遍历
            if rand() < pc
                for m = 1:n     % 基因遍历
                    R(m,k) = P(m,k-m+1);
                end
            else
                R(:,k) = P(:,k);
            end
        end
    
    elseif dim == 1
        for k = 2:N
            if rand() < pc
                R(k) = P(k-1);
            else 
                R(k) = P(k);
            end
            
        end 
     end