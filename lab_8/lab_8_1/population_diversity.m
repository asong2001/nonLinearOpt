% 8.1 population_diversity
% ������Ⱥ�Ļ���֮��ı�׼��

function S = population_diversity(P)
    N = length(P);
    n = length(P(:,1));
    for j = 1:n             % �������
        for k = 1:N         % ��Ⱥ����
            L(k) = P(j,k);
        end
        R(j) = std(L);
    end
    S = sum(R)/n;
