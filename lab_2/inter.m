% Exercise 3
% interpolation function
% x0,y0 为输入数组，x为插值位置
function y=inter(x0,y0,x)
    m=length(x0);
    inter_length=length(x);
    for j = 1:inter_length
        z=x(j);
        s=0.0;
        for  k = 1:m
            po=1.0;
            if k~=j
                po=po*(z-x0(j))/(x0(k)-x0(j));
            end
        end
        s=po*y0(k)+s;
    end
    y(j)=s;
end
