% non-linear opt
% 11612001 ����
% selection opt

function C_new = selection_city(city,fitting)
    % fittingΪ��Ӧ��
    % city�����е�����
    fitSum = sum(fitting);
    fitting = fitting./fitSum;
    