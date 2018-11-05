% non-linear opt lab8
% 11612001 HUANG 
% return function ft

% 每一行是一个目标
function ft = func_ft(N)
    ft = cell(N,1);
    ft1 = @(x1,x2,x3) x1;
    ft2 = @(x1,x2,x3) (1./x1) .* (1+((x2.^2+x3.^2).^0.25) .* (((sin(50*(x2.^2+x3.^2).^0.1)).^2)+1));
    ft{1} = ft1;
    ft{2} = ft2;
end