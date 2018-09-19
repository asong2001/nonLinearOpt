% Exercise 3 for Lab2
% Polynomial Interpolation
% Given set{(0,0),(2,-2),(2.8,5),(4,2),(5,-1),(6,5),(7,8)}
% x is x matrix
% b is the constant
function y = polyInter(x,b)
    A=poly(x);
    n=length(x);
    
    %% plot
    plot(x,b,'o');
    grid on;
    % axis([0 7 -20 50]);
    % 0-level
    x_axis=0:0.001:7;
    zero_level=zeros(size(x_axis));
    hold on
    plot(transpose(x_axis),zero_level);
    
    % 多项式曲线
    y=polyval(A,x_axis);
    plot(x_axis,y);
    
    % 一阶导
    first_order=polyder(A);
    first_order_y=polyval(first_order,x_axis);
    plot(x_axis,first_order_y);
    
    % 最大最小值
    % 前后差分
    ymax=diff(sign(diff(y)))==-2;
    ymin=diff(sign(diff(y)))==2;
    Ymax=find(ymax);
    Ymin=find(ymin);
    s(1)=plot(x_axis(Ymax),y(Ymax),'x','Color','red');
    s(2)=plot(x_axis(Ymin),y(Ymin),'x','Color','green');
    
    legend({'Data Points','Zero Level','Interpolation Polynomial','First-Order Derivative','Local Maximun','Local Minimun'});
end