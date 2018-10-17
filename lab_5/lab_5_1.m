%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (5) %
% Date:(2018.10.10) %
% By: (黄松) %
% %
% ID NUMBER: (11612001) %
% LAB:(5.1) %
% Description: Pattern Search Algorithm%
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

% only this file
clc;
clear;
close all;

% f2
f2 = @(x,y) (1-x).^2+5.*((x-y.^2).^2);
xy2 = [0;0];


% f3
f3 = @(x,y) (x+2*y).*(1-0.9.*(exp(-0.3*((x-2.5).^2)-2*((y-3.5).^2)))).*(1-0.9*exp(-((x-3).^2)-(y-3).^2));
xy3 = [4;2];

% f4
f4 = @(x,y) exp(x./5)+exp(y./3);
xy4 = [5;8];

% f1
f1 = @(x,y) 2*x.^2+3*y.^2-3.*x.*y+x;
xy1 = [5;8];

f = f1;
xy = xy1;
step = 1;

r1 = -2;
r2 = 8;
xn = linspace(r1,r2,200);
yn = xn;
[xnn, ynn] = meshgrid(xn,yn);
f_value = feval(f,xnn,ynn);
contour(xn,yn,f_value,100);
hold on;
plot(xy(1),xy(2),'o');
hold on
iter = 0;
condition = xy(1)<r2 && xy(1)>r1 && xy(2)>r1 && xy(2)<r2;
old_f = [0 0 0 0 0];
t = 0;

while iter <200 && step >0.0001 %&&condition
    plot(xy(1),xy(2),'black');
    hold on
    iter = iter + 1;
    
    % 产生步进方向
    xy_r = [xy(1)+step;xy(2)];
    xy_l = [xy(1)-step;xy(2)];
    xy_d = [xy(1);xy(2)-step];
    xy_u = [xy(1);xy(2)+step];
    xy_iter = [xy xy_r xy_l xy_d xy_u];
    
    condition = xy(1)<r2 && xy(1)>r1 && xy(2)>r1 && xy(2)<r2;
    
    % 画十字
    for k = 2:5
        if k == 1
            plot(xy_iter(1,k),xy_iter(2,k),'o');
            hold on;
        else
            plot(xy_iter(1,k),xy_iter(2,k),'.');
            hold on;
            line([xy(1) xy_iter(1,k)],[xy(2) xy_iter(2,k)]);
            hold on;
        end
    end

%     z = feval(f,xy_iter(1,:),xy_iter(2,:));
    z = f(xy_iter(1,:),xy_iter(2,:));
    local_min = min(z);
    min_index = find(z == local_min);

    xy = xy_iter(:,min_index);
    
    if length(min_index)==2
        step = step *0.5;
    end
    
%     if old_f == z
%         t = t+1;
%     else
%         old_f = z;
%     end
    
    if t==40
        step = step*0.5;
        t = 0;
    end
        
    if ~condition
        step = step*0.5;
    end

end
plot(xy(1),xy(2),'*');
hold on
title({['Non-linear Opt Lab 5.1'],['Iteration: ',num2str(iter),'   Final Step',num2str(step)],['11612001 黄松']});
xlabel('x');ylabel('y');
% saveas(gcf,'E:\7-2018秋季学期\LAB\nonLinearOpt\lab_5\plot\lab_5_1_1_v2.png');
