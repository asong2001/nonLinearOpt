% non-linear opt
% 11612001 黄松
% selection opt

function C_new = selection_city(C_tmp,fitting)
    % fitting为适应度
    % city带城市的序列
    fitSum = sum(fitting);      % 求总长度
    fitting = fitting./fitSum;  % 将总长度换算成百分比    
    ind = find(fitting == max(fitting));
    C_new = C_tmp(ind,:);
        

%% 轮盘赌啊，可是好像没什么效果
%     factor = rand();            % 产生随机变量来选择
%     for k = 1:length(fitting)-1 % 寻找随机变量对应的区间
%         if fitting(k) <= factor && fitting (k+1) >= factor
%             ind = k;
%         elseif fitting(1) > factor
%             ind = k;
%         end
%     end
%     C_new = C_tmp(ind,:);

end
        