% non-linear opt
% 11612001 ����
% selection opt

function C_new = selection_city(C_tmp,fitting)
    % fittingΪ��Ӧ��
    % city�����е�����
    fitSum = sum(fitting);      % ���ܳ���
    fitting = fitting./fitSum;  % ���ܳ��Ȼ���ɰٷֱ�    
    ind = find(fitting == max(fitting));
    C_new = C_tmp(ind,:);
        

%% ���̶İ������Ǻ���ûʲôЧ��
%     factor = rand();            % �������������ѡ��
%     for k = 1:length(fitting)-1 % Ѱ�����������Ӧ������
%         if fitting(k) <= factor && fitting (k+1) >= factor
%             ind = k;
%         elseif fitting(1) > factor
%             ind = k;
%         end
%     end
%     C_new = C_tmp(ind,:);

end
        