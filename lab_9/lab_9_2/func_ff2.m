% function define for ff version 2 
% 11612001 HUANG

function ff = func_ff2(x)
    sum1 = 0;
    sum2 = 0;
    for k = 1:8
        sum1 = sum1 + (x(k) - 1/(sqrt(8))).^2;
        sum2 = sum2 + (x(k) + 1/(sqrt(8))).^2;
    end
    ff1 = 1 - exp(-sum1);
    ff2 = 1 - exp(-sum2);
    ff = [ff1;ff2];
end