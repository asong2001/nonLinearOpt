% selection
% ���㺯��ֵ
% 8.1
% ����һ���������ѡ��

% P������FΪ�Ӵ�
function R = selection(P,F)
    N = length(P);
    for k = 1:2*N 
        c = ceil(N*rand(1,2));  % ��������µ�ֵ��[c1 c2] ci=1~N
        if F(c(1))<F(c(2))
            R{k} = P{c(1)};
        else 
            R{k} = P{c(2)};
        end
    end 