% �����������
% �������������͵�
% 8.1
% ��������ķ�Χ��[lb,ub]֮�䡣���ɵ�ά����dimension����
% ÿһ��Ϊһ�����壬�������������÷����ڸ÷����ϵķ�����Ҳ���൱�ڸ����λ����Ϣ��

function pop = initial_pop(lb,ub,dimension,size)
    for k = 1:size
        pop = lb + (ub+ub)*rand(dimension,size);
    end
end