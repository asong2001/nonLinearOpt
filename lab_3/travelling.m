% Non linear optimization Lab 3
% Problem 1
% 不找最优解了，就这样吧
clc;
clear;
close all;
%% 生成随机点并保存
y0=0;
x0=0;
N=40;
x=x0+rand(N,1)*100;
y=y0+rand(N,1)*100;
save cities.mat;
iteration=20;
cities=[x y];
cities0=cities;

%% initial
[dis0,totalDis0]=disCal(cities);
figure(1);
plot(x,y,'o');
title(['Initial dis:',num2str(totalDis0)]);

%%

% 初始连线
for k=1:1:length(N)
    line(cities(:,1),cities(:,2));
end
x1=[cities(1,1) cities(N,1)];
y1=[cities(1,2) cities(N,2)];
line(x1,y1);
[dis,totalDis]=disCal(cities);

%%
% 迭代
time=0;
it=0;
while it<iteration
    for k=1:1:N-1
        % 数组交换部分
        tmp=cities(k+1,:);
        cities(k+1,:)=cities(k,:);
        cities(k,:)=tmp;
        [disNew,totalNew]=disCal(cities);
        if  totalNew<totalDis
            dis=disNew;
            totalDis=totalNew;
            time=time+1;
        else
            % 交换还原
            cities(k,:)=cities(k+1,:);
            cities(k+1,:)=tmp;
        end
        % 实时作图
        figure(3);
        plot(x,y,'o');
        for m=1:1:N-1
            line(cities(:,1),cities(:,2));
        end
        x1=[cities(1,1) cities(N,1)];
        y1=[cities(1,2) cities(N,2)];
        line(x1,y1);
        title(['Present dis:',num2str(totalDis),' 交换次数',num2str(time),'迭代次数',num2str(it)]);
    end
    it=it+1;
  
end
%%
% 迭代之后的图
figure(2);
plot(x,y,'o');
for m=1:1:N-1
    line(cities(:,1),cities(:,2));
end
x1=[cities(1,1) cities(N,1)];
y1=[cities(1,2) cities(N,2)];
line(x1,y1);
title(['Final dis:',num2str(totalDis)]);


