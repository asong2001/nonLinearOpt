% Non-linear optimization Lab4
% Descent method with Trust Region
% Version 5 
% This function calculate the gradient by adding 10^-9 to the input value

function delta = dm_diff(f, x)
    % f is the function fomula
    % x is the calculate value point
    x_length = length(x);
    xn = zeros(1,x_length);
    for k = 1:1:x_length
        x_new = x;
        x_new(k) = x(k) + 10.^-6;
        f_value = feval(f,x);
        f_value_new = feval(f,x_new);
        delta(k) = (f_value_new(k) - f_value(k))/(10^-6);
    end
end
