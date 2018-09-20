% ode 
% euler method
function y = euler(y0,h,y_diff)
    % y_diff= @(tn,yn) -yn+3.*cos(3.*tn).*exp(-tn);
    t=0:h:5;
    y=zeros(1,length(t));
    y(1)=y0;
    for n=1:1:length(t)
        y(n+1)=y(n)+h.*y_diff(t(n),y(n));
        t(n+1)=t(n)+h;
    end
end