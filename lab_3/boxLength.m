% Non linear optimization Lab 3
% Problem 2
% ��ȡ�߶ȣ�����ÿһ�еĸ߶ȡ�
% ���ص���ÿһ�е���ߵ�

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