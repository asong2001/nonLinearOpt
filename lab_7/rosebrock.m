function f = rosebrock(n)    
    fx = (1-x(:,1)).^2+100*(x(:,2)-(x(:,1))).^2;
    for k = 2:n
        fx = fx + (1-x(:,k)).^2+100*(x(:,k+1)-(x(:,k))).^2;
    end
    f = fx;