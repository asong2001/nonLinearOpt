% Non linear Opt lab 10.1
% 11612001 HUANG

% Practical uniformity metric
% ����ӵ���Ȱɣ��Ҿ���
% x is samples. dimension is 2. we can use 1st row and 2nd row
function E = um(x)
    [~,N] = size(x);
    E = 0;
    for i = 1:N
        for j = (i+1):N
            % �ܾ���
            dis = 1/(norm(x(:,i)-x(:,j)).^2);
            E = E + dis;
        end
    end
    
end