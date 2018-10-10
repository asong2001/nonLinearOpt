% Non-linear optimization Lab4
% Descent method with Trust Region
% q(h) function

% 把梯度值的计算换到q里面来写

% x1、x2为坐标轴信息
% x1p、x2p为所求梯度的点的坐标
% fx 为函数表达式

function [q_h,f_set_grad] = qh(fx,f_value,x1,x2,x1p,x2p,h)


    % 计算梯度值,分成两个方向
    [fx1_grad,fx2_grad]=gradient(f_value,0.1);

    % 查找某一点的梯度值
    x1g=x1;
    x2g=x1g';
    % fx_grad=fx(x1g,x2g);
    % surf(x1g,x2g,f_grad);

    % x1_set 表示要查询的点的位置
    x1_set=x1p;
    x2_set=x2p;
    t = (x1g == x1_set) & (x2g == x2_set);
    indt = find(t);
    % 所求点位置上的梯度值为
    f_set_grad = [fx1_grad(indt) fx2_grad(indt)];

    % q-function
    h
    q_h=fx(x1p,x2p);+

