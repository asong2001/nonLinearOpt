function g = fitting(x)
%     t = 1:10;
%     y = @(t) exp(-t)+exp(-t);
%     yt = y(t);
    t = 1:0.1:10;
    g = x(1)*exp(-x(2)*t)+x(3)*exp(-x(4)*t);