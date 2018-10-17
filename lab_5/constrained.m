%% ROSENBROCK(x) expects a three-column matrix and returns a column vector
% The output is the Constrained function, which has a minimum at

function f = constrained(x)
%     % n = 2
%     f = exp(x(:,1)+x(:,2)/2);
%     
%     % n = 3
%     f = exp(x(:,1)+x(:,2)/2+x(:,3)/3);
%     
%     % n = 4
%     f = exp(x(:,1)+x(:,2)/2+x(:,3)/3+x(:,4)/4);
%         
    % n = 20
%     f = exp(x(:,1)+x(:,2)/2);
    f = 1;
    for n = 1:20
        f =f*exp(x(:,n)/n);
    end