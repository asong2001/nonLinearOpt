% search function
function [x,f]=search(fun,x,B,CData,max_iter,tol_x)
X{1}=x;
f=feval(fun,x);
range=0.2*norm(B.ub-B.lb);
count=1;
while count<max_iter && norm(range)>=tol_x
    step=(B.ub-B.lb).*(rand(2,1)-0.5)*range;
    x_new=max(min(x+step,B.ub),B.lb);
    f_new=feval(fun,x_new);
    rnd_plot(CData,X,x,1);
    if f_new<f
        range=range*2.0;
        x=x_new;
        f=f_new;
        X{length(X)+1}=x;
        rnd_plot(CData,X,x,1);
    else 
        range=range/1.3;
    end
    count=count+1;
    fprintf('Templete solution:%f %f\n',x_new);
    fprintf('Steps:%f %f\n',count);
end
rnd_plot(CData,X,x,3);