% selection
% ���㺯��ֵ
% 8.1
% ����һ���������ѡ��

% P������FΪ�Ӵ�
function R = selection(P,F)
    N = length(P);
    for k = 1:N 
        c = ceil(N*rand(1,2));  % ��������µ�ֵ��[c1 c2] ci=1~N��������ֵΪ����
        if F(:,c(1))<F(:,c(2))      % �Ƚ�Ŀ�꺯���ĺ���ֵF�����ѡȡ�����Ƚϵ�λ��
            R(:,k) = P(:,c(1));
        else 
            R(:,k) = P(:,c(2));
        end
    end 
