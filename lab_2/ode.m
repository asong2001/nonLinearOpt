% Exercise 4 Numerical Method for ODEs
function y_new = ode(x0,y0,h,range,f)
    ode.euler(x0,y0,h,range,f);
    ode.ab(initial,h,range);
end

function y_euler = euler(x0,y0,h,range,f)
    for n=1:h:range
        y(n+1)=y(n)+h*
end

function y_ab = ab(input)
    
end