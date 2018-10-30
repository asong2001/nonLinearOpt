% selection
% ���㺯��ֵ
% 8.1
% ����һ���������ѡ��

% P������FΪ�Ӵ�
function R = selection(P,F,dim)
    N = length(P);
    R = zeros(1,N);
    
    if dim == 1                     % 1ά
        for k = 1:N
            c = ceil(N*rand(1,2));  % ���ѡ��
            if F(c(1)) < F(c(2))
                R(k) = P(c(1));
            else 
                R(k) = P(c(2));
            end
        end
    end
                
    if dim == 2
        for k = 1:N 
            c = ceil(N*rand(1,2));  % ��������µ�ֵ��[c1 c2] ci=1~N��������ֵΪ����
            if F(:,c(1))<F(:,c(2))      % �Ƚ�Ŀ�꺯���ĺ���ֵF�����ѡȡ�����Ƚϵ�λ��
                R(:,k) = P(:,c(1));
            else 
                R(:,k) = P(:,c(2));
            end
        end 
    end
