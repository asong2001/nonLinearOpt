%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
%
% Course: Nonlinear Optimization. %
% Name: (’≈’‰)
% ID NUMBER: (11849553) %
%
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
function v = value(f,x)
s = '';
s(1:8) = 'feval(f,';
for i = 1:length(x)-1
    s = [s,num2str(x(i),'%10.9e\n'),','];
end
s = [s,num2str(x(end),'%10.9e\n'),')'];
v = eval(s);
end