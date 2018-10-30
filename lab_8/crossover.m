% evaluate
% ���㺯��ֵ
% 8.1

function R = crossover(P,pc,dim)
    N = length(P);
    n = length(P(:,1));     % ��ʵ����ά��
    R (:,1) = P(:,1);       % ��һ�������в���
    
    if dim == 2 
        for k = 2:N             % �������
            if rand() < pc
                for m = 1:n     % �������
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