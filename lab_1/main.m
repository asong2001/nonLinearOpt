% main scripe to find the solution
clc
clear
x=0:0.01:0.8;
y=x;
[CData.xi,CData.yi]=meshgrid(x,y);
% 计算平面内的函数值，用等高线表示
for n=1:length(x)
    for m=1:length(y)
        CData.zi(n,m)=f([x(n),y(m)]);
    end
end
% 起始点
x0=[0,0.2];
% 边界
B.lb=[0,0];
B.ub=[0.8,0.8];
[x_opt,f_opt]=search('f',x0,B,CData,80,1e-5);
fprintf('Final solution:%f %f\n',x_opt(1),x_opt(2));
disp(['Function value:',num2str(f_opt)]);

