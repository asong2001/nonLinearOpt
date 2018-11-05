% function define for ft version 2 
% 11612001 HUANG

function ft = func_ft2(x)
        ft1 = x(1);
        ft2 = (1./x(1)) .* (1+((x(2).^2+x(3).^2).^0.25) .* (((sin(50*(x(2).^2+x(3).^2).^0.1)).^2)+1));
        ft = [ft1,ft2];
end
