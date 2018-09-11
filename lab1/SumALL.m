% lab 1 sum all input values' function
function sum=SumALL(varargin)
    n = nargin;
    sum=0;
    for i=1:n
        sum=sum+varargin{i};
    end