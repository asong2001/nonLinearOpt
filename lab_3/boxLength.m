% Non linear optimization Lab 3
% Problem 2
% 获取高度，返回每一列的高度。
% 返回的是每一列的最高点

function L = boxLength(boxesPos,N)
%     for n = 1:1:N
%         for k=0:1:11
%             if boxesPos(n).Position(1)==k
%                 height(k+1)=boxesPos(n).Position(2)+boxesPos(n).Position(4);
%             end
%         end
%     end    
    for k=1:1:12
        for n=1:1:N
            % l=(boxesPos(n).Position(1)+boxesPos(n).Position(3));
            if  l >= k
                L(k)=boxesPos(n).Position(1)+boxesPos(n).Position(3);
            end
        end
    end
        
end