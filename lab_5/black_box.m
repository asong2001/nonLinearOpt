% nonlinear opt
% lab 6.4
% 11612001 ª∆À…

function R = black_box(x)
    c = 1;
    for j = 1:length(x)
        R(j) = x(j)/j+c*x(j)^2/sqrt(j);
    end
    
end