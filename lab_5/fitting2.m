% nonlinear opt 6.3
% fitting2
% objective function 2

function stop = fitting2(x,optimValues,state,varargin)
    stop = false;
    global x_prev;
    global x_conv;
    omega = varargin{1};
    H0 = varargin{2};
    f = feval('lp_filter',x,omega);
    if strcmp(state,'iter')
        subplot(121);
        plot(omega,f,'b',omega,H0,'ro');
        grid on
        if ~isempty(x_prev)
            x_conv(length(x_conv)+1)=norm(x-x_prev);
        else
            x_conv(1) = norm(x);
        end
        x_prev = x;
        subplot(122);
        semilogy(1:length(x_conv),x_conv,'bo-');
        grid on
        drawnow;
        pause(1);
    end
end