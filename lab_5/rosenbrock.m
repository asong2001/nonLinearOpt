%% ROSENBROCK(x) expects a three-column matrix and returns a column vector
% The output is the Rosenbrock function, which has a minimum at
% (1,1) of value 0, and is strictly positive everywhere else.

function f = rosenbrock(x)

%     n = 3;
%     f = 100*(x(:,2)-x(:,1).^2).^2+(1-x(:,1)).^2 + ((1-x(:,2)).^2+100*(x(:,3)-x(:,2).^2).^2);

%     n = 5;
%     f = 100*(x(:,2)-x(:,1).^2).^2+(1-x(:,1)).^2 + ((1-x(:,2)).^2+100*(x(:,3)-x(:,2).^2).^2) + ((1-x(:,3)).^2+100*(x(:,4)-x(:,3).^2).^2) + (1-x(:,4)).^2+100*(x(:,4)-x(:,5).^2).^2;

%     n = 10;
%     fx = 100*(x(:,2)-x(:,1).^2).^2+(1-x(:,1)).^2 + ((1-x(:,2)).^2+100*(x(:,3)-x(:,2).^2).^2) + ((1-x(:,3)).^2+100*(x(:,4)-x(:,3).^2).^2) + (1-x(:,4)).^2+100*(x(:,4)-x(:,5).^2).^2;
%     for k = 5:9
%         fx = fx + 100*(x(:,k+1)-x(:,k).^2).^2+(1-x(:,k)).^2 ;
%     end
%     f = fx;
    
    %  ÷¥Ú1
    fx = (1-x(:,1)).^2+100*(x(:,2)-(x(:,1))).^2;
    for k = 2:9
        fx = fx + (1-x(:,k)).^2+100*(x(:,k+1)-(x(:,k))).^2;
    end
    f = fx;
