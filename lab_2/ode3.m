% ode 3
y_diff= @(tn,yn) -y+3.*cos(3.*t).*exp(-t);
y_diff(1,2);
