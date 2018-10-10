% Non-Linear Optimization Lab 4
% Newton's Method
% Function form

function [opt_x,opt_y] = ntm2(fx,x0,xmax)
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
    
    level = zeros(1,length(xn));
    plot(xn,level);
    hold on

    % ������ʼ��
    t=0;
    xi = x0;
    % ��������ͼ
    y0=f(xi);
    x0=xi;
    k=df(xi);
    b=y0-k*x0;
    tan_f=inline(k*x+b,'x');
    tan_ff=tan_f(xn);
    plot(xn,tan_ff);

    % ţ�ٷ�����
    while t<100
        % ����������0 level�Ľ���
        for k = 1:1:length(tan_ff)
            if tan_ff(k) <= 0.01
                xi = xn(k);
            end
        end
        
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
        disp(t);

        xn_new=xi-f(xi)./(df(xi));
        plot(xn_new,f(xn_new),'.');
        xi=xn_new;
        
    end

    opt_x=xi;
    opt_y=f(opt_x);
    hold on;
    plot(opt_x,opt_y,'*');
    title({['Optimal point is (',num2str(opt_x),',',num2str(opt_y),')'],['11612001 ����']});
end