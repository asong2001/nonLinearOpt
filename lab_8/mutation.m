% mutation
% ���㺯��ֵ
% 8.1
% ����һ���������ѡ��

function P = mutation(P,pm)
    N = length(P);
    n = length(P{1});
    for k = 1:N                     % ����ÿ������Ļ���
        for m = 1:n                 % ѡ����Ⱥ����
            if rand() < pm
                P{k}(m) = 1-P{k}(m);
            end
        end
    end