% Non-Linear Optimization Lab 4
% Newton's Method
% Function form

function [opt_x,opt_y] = ntm(fx,x0,xmax)
    % ���ƺ�����Χ
    xn = 0:0.01:xmax;
    % ʹ��������������������Ƕ��������΢�ֵĺ���
    syms x;
    f = fx;
    df = inline(diff(fx(x)),'x');
    
    fn=f(xn);
    plot(xn,fn);
    hold on
    plot(x0,f(x0),'o');

    % ������ʼ��
    t=0;
    xi = x0;

    % ţ�ٷ�����
    while (df(xi) >=0.01)
        xn_new=xi-f(xi)./(df(xi));
        xi=xn_new;
        
        % ��������ͼ
        y0=f(xi);
        x0=xi;
        k=df(xi);
        b=y0-k*x0;
        tan_f=inline(k*x+b,'x');
        tan_ff=tan_f(xn);
        plot(xn,tan_ff);
        hold on
        t=t+1;
        
    end

    opt_x=xi;
    opt_y=f(opt_x);
    hold on;
    plot(opt_x,opt_y,'*');
    title({['Optimal point is (',num2str(opt_x),',',num2str(opt_y),')'],['����']});
end