% non-linear opt lab 8
% 11612001 HUANG
% decode 
% ��ɴӱ��뵽���е�ӳ��

% city0 �ڿ�ʼ��ʱ����Ѿ�ȷ��������
function city = decode(C,city0,N)
    city = zeros(2,N);
    for k = 1:N
        tmp = C(k);
        ind = find(city0(3,:) == tmp);
        city(:,k) = city0([1 2],ind);
    end
end