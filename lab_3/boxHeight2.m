% Non linear optimization Lab 3
% Problem 2
% ��ȡ�߶ȣ�����ÿһ�еĸ߶ȡ�
% ���ص���ÿһ�е���ߵ�

% NΪ���εĸ���
function height = boxHeight2(boxesPos,N)
    height=zeros(1,12);
%     for n = 1:1:N
%         for k=0:1:11
%             if boxesPos(n).Position(1)==k
%                 height(k+1)=boxesPos(n).Position(2)+boxesPos(n).Position(4);
%             end
%         end
%     end    
    for k=1:1:12
        for n=1:1:N
            height(k)=boxesPos(n,2)+boxesPos(n,4);
        end
    end
        
end