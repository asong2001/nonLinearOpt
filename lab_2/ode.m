% Exercise 4 Numerical Method for ODEs
% test equation 1:y1=@(t,y) -y+3*cos(3*t).*exp(-t)  y1e=@(t) sin(3*t).*exp(-t)
% test equation 2:y2=@(t,y) y,y0=1 y2e=@(t) exp(t)
function  ode(y0,h,y_diff,yee)
    t=0:h:5;
    yeu=euler(y0,h,y_diff);
    yab=ab(y0,h,y_diff);

    xeu=(0:1:length(yeu)-1)/5;
    plot(xeu,yeu);
    hold on
    
    xab=(0:1:length(yab)-1)/5;
    plot(xab,yab);
    grid on
    hold on
    
    % exact solution
    ye=yee(t);
    xe=(0:1:length(ye)-1)/5;
    plot(xe,ye);
    legend('Numerical Solution(Euler)','Numerical Solution(Adams-Bashforth','Exact Solution');
    
end