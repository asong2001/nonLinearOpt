% Non-linear Opt lab 7 
% Rosebrock function evaluation
% n=2 ¹Ì¶¨

function evaluate_ros = ros_n2(x,y)
    func = @(x,y) ((1-x).^2+100*((y-x.^2).^2));
    % contour
    evaluate_ros = func(x,y);
end