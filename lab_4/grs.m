% Non-Linear Optimization Lab 4
% Golden Ratio Search
% function form

% funcInput 为输入的函数表达式
% xn=[x1 x2 x3 x4]
function [xOpt,yOpt]=grs(funcInput,xn)
    t=(1+sqrt(5))/2;
    figure(1);
    x=xn(1):0.1:xn(2);
    plot(x,funcInput(x));
    hold on;

    fn=funcInput(xn);
    iter=abs(fn(1)-fn(2));
    % xn=[x1 x2 x3 x4]
    while iter > 0.0001
        xn(3)=xn(2)-(xn(2)-xn(1))./t;
        xn(4)=(xn(2)-xn(1))./t+xn(1);
        
        fn=funcInput(xn);
        
        for k=1:1:4
            plot(xn(k),fn(k),'o');
            hold on
        end
        
        % 找出最小的两个数及其索引
        fnX=[xn;fn];
        least=sort(fn);
        tmpXn(1)=xn(find(fnX(2,:)==least(1)));
        tmpXn(2)=xn(find(fnX(2,:)==least(2)));
        
        tmpXn2=sort(tmpXn);
        xn(1)=tmpXn2(1);
        xn(2)=tmpXn2(2);    

        fn(1)=least(1);
        fn(2)=least(2);

        iter=abs(fn(1)-fn(2));
        
    end

    y_index=find(fn==min(fn));
    plot(xn(y_index),min(fn),'o');

    xOpt=xn(y_index);
    yOpt=min(fn);
    title({['Golden Ratio Search'],['Optimal X=',num2str(xOpt(1)),'  Optimal Value=',num2str(yOpt)]});
    
end