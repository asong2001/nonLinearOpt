% non-linear opt lab 10.1
% 11612001 

% make projection from higher dimension
function p = projection(x,dim_k,dim_l)
    [dim,N] = size(x);
    % ѡ���dim_k�к�dim_l��������ͶӰ
    % �ȼ���ͶӰ����
    a1 = (zeros(1,dim))';
    a2 = (zeros(1,dim))';
    a1(dim_k) = x(dim_k,1);
    a2(dim_l) = x(dim_l,1);
    A = [a1,a2];
    P = A*inv(A'*A)*A';
    p = zeros(dim,N);
    for k = 1:N
        tmp = x(:,k);
        p(:,k) = P*tmp;
    end
end
