% non-linear opt
% 11612001 ����
% adaptative cal

% ���㺯����Ӧ��
% ��Ӧ��ȡ����ĵ���
function fitting = fitting_city(city)
    [~,totcalDis] = disCal(city);
    fitting = 1./totcalDis;
end