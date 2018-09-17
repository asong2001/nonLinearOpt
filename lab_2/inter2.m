% inter2 for Excerise 3 Lab2
% interpoly function 2
function L=inter2(x0,y0,x);
    % x is the interpoly points array
    x_axis=0:0.1:max(x0);
    for j=x_axis
        L=zeros(0,max(x0));
        
        L=L+y(j)*l(j);