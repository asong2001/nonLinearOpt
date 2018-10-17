function []=parttern_search(f,x,y,start,e,d)
    a=linspace(start,e,70);
    [X,Y]=meshgrid(a,a);
    Z=feval(f,X,Y);
    contour(a,a,Z,100)
    grid on
    hold on
    % d=0.8;
    plot_cross(x,y,d)
    hold on
    k=1;
    while d>10^(-5) && k<=1000 && min(x)>start
        %         |(1)
        %         |
        %  (2)----+(5)-----(4)
        %         |
        %         |(3)
        x1=[x(k) x(k)-d x(k) x(k)+d x(k)];
        x2=[y(k)+d y(k) y(k)-d y(k) y(k)];
        z=feval(f,x1,x2);
        local_min=min(z);
        num=find(z==local_min);
        x(k+1)=x1(num(1));y(k+1)=x2(num(1));
        if num==5
            d=d/2;
        else
    %        d=1.5*d;
        end
        plot([x(k) x(k+1)],[y(k) y(k+1)],'r')
        hold on
        q=f(x(k),y(k));
        k=k+1;
    end
    plot(x(end),y(end),'ro','linewidth',1,'markersize',3)
    title({['x_{min} :',num2str(x(end)),'   y_{min} :',num2str(y(end)) ],['minimum of the function is: ',num2str(q)]})
    end
    