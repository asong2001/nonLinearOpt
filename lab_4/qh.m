% Non-linear optimization Lab4
% Descent method with Trust Region
% q(h) function

% ���ݶ�ֵ�ļ��㻻��q������д

% x1��x2Ϊ��������Ϣ
% x1p��x2pΪ�����ݶȵĵ������
% fx Ϊ�������ʽ

function [q_h,f_set_grad] = qh(fx,f_value,x1,x2,x1p,x2p,h)


    % �����ݶ�ֵ,�ֳ���������
    [fx1_grad,fx2_grad]=gradient(f_value,0.1);

    % ����ĳһ����ݶ�ֵ
    x1g=x1;
    x2g=x1g';
    % fx_grad=fx(x1g,x2g);
    % surf(x1g,x2g,f_grad);

    % x1_set ��ʾҪ��ѯ�ĵ��λ��
    x1_set=x1p;
    x2_set=x2p;
    t = (x1g == x1_set) & (x2g == x2_set);
    indt = find(t);
    % �����λ���ϵ��ݶ�ֵΪ
    f_set_grad = [fx1_grad(indt) fx2_grad(indt)];

    % q-function
    h
    q_h=fx(x1p,x2p);+

