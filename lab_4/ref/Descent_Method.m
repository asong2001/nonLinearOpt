%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
%
% Course: Nonlinear Optimization. %
% Name: (’≈’‰)
% ID NUMBER: (11849553) %
%
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
function [minimum,x] = Descent_Method(f,x0)
k = 0;
x = x0;
delta = 0.1*norm(first_order_diff(f,x)); 
found = false;
kmax = 4000;
while ~found && k <= kmax
k = k + 1; 
dif = first_order_diff(f,x);
htr = -dif/norm(dif)*sqrt(delta);
fx = value(f,x);
fxh = value(f,x+htr);
q0 = fx;
qh = fx+htr*first_order_diff(f,x)';
r = (fx-fxh)/(q0-qh);
if r>0.75
    delta = 2*delta;
elseif r<0.25
    delta = delta/3;
end
if r>0
    x = x+htr;
    minimum = value(f,x);
end
d = norm(first_order_diff(f,x));
if d<=10^-6
    found = true;
end
end
end

