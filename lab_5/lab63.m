function g = lab63(a,t,y)
    Y = a(1)*exp(-a(2)*t)+a(3)*exp(-a(4)*t);
    g = y-Y;
end
