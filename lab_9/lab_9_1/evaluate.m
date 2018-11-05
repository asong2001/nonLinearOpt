% non-linear opt lab8
% 11612001 HUANG 
% return function value

function func_value = evaluate(func,x,N)
    % ������������Ϊ3
    valN = length(x);   % ��������
    func_value = zeros(N,valN);
    for k = 1:N
        f = func{k};
        func_value(k,:) = f(x(1,:),x(2,:),x(3,:));
    end
end