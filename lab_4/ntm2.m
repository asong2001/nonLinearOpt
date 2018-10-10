% Non-Linear Optimization Lab 4
% Newton's Method
% Function form

function [opt_x,opt_y] = ntm2(fx,x0,xmax)
    % 绘制函数范围
    xn = 0:0.01:xmax;
    % 使用匿名函数描述函数，嵌套描述被微分的函数
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

    % 迭代初始化
    t=0;
    xi = x0;
    % 绘制切线图
    y0=f(xi);
    x0=xi;
    k=df(xi);
    b=y0-k*x0;
    tan_f=inline(k*x+b,'x');
    tan_ff=tan_f(xn);
    plot(xn,tan_ff);

    % 牛顿法迭代
    while t<100
        % 查找切线与0 level的交点
        for k = 1:1:length(tan_ff)
            if tan_ff(k) <= 0.01
                xi = xn(k);
            end
        end
        
        xn_new=xi-f(xi)./(df(xi));
        xi=xn_new;
        % 绘制切线图
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
    title({['Optimal point is (',num2str(opt_x),',',num2str(opt_y),')'],['11612001 黄松']});
end