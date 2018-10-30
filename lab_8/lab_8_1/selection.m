% selection
% 计算函数值
% 8.1
% 对上一代基因进行选择

% P父代，F为子代
function R = selection(P,F,dim)
    N = length(P);
    R = zeros(1,N);
    
    if dim == 1                     % 1维
        for k = 1:N
            c = ceil(N*rand(1,2));  % 随机选择
            if F(c(1)) < F(c(2))
                R(k) = P(c(1));
            else 
                R(k) = P(c(2));
            end
        end
    end
                
    if dim == 2
        for k = 1:N 
            c = ceil(N*rand(1,2));  % 随机产生新的值，[c1 c2] ci=1~N，产生的值为整数
            if F(:,c(1))<F(:,c(2))      % 比较目标函数的函数值F，随机选取用来比较的位置
                R(:,k) = P(:,c(1));
            else 
                R(:,k) = P(:,c(2));
            end
        end 
    end
