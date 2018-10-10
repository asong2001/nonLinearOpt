%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
%
% Course: Nonlinear Optimization. %
% Name: (’≈’‰)
% ID NUMBER: (11849553) %
%
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
function d = first_order_diff(f,x)
len = length(x);
d = zeros(1,len);
for i = 1:len
    xi_new = x;
    xi_new(i) = x(i)+10^-9;
    v_new = value(f,xi_new);
    d(i) = (v_new-value(f,x))/(10^-9);
end

end