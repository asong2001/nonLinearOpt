% Generate the desired function
function z=f(x)
z=(((x(1)-0.5).^2+(x(2)-0.5).^2).*((x(1)+0.5).^2+(x(2)+0.5).^2)).^(0.5);