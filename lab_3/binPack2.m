% Non linear optimization Lab 3
% Problem 2
% 重新写一遍

% Non linear optimization Lab 3
% Problem 2
clc;
clear;
close all;

%%
W=12;
H=200;
bin=zeros(H,W);
% 生成N个箱子
N=10;
w=zeros(1,N);
h=zeros(1,N);
for k = 1:N
    w(k)=randi(W); % 设计最大宽度为bin的宽度
    h(k)=randi(W);
end
% 每一列变量都是一个箱子。第一行为宽w，第二行为高h
boxes=[w;h];
% 创建箱子对象并编号，以及初始排列
figure(1);
for k=1:1:N
    % 箱子初始化
    boxNum(k)=rectangle('Position',[0 0 w(k) h(k)],'FaceColor','red','EdgeColor','blue');
end
title({['Initial BOXES  黄松'],[num2str(max(boxHeight(boxNum,N)))]});

% 开始放置箱子
% 初始条件是第一个箱子就在左下角了
boxNew(1)=boxNum(1);
h0=boxHeight(boxNew,length(boxNew));

% 放置第二个箱子，在没有重叠以及右端不大于12
for n = 2:1:N
    h=boxHeight(boxNew,length(boxNew));
    tmpNew=boxNum(n);
    
    for k= 1:1:12
        m=12-k;
        while tmpNew.Position(3) <= m
            boxNew(n)=boxNum(n);
            boxNew(n).Position(1)=k;
            boxNew(n).Position(2)=h(k);
            h_New=boxHeight(boxNew,length(boxNew));
            
        end
        mm=min(h_New);
        index=find(h_New==mm);
        boxNew(n).Position(1)=index;
        boxNew(n).Position(2)=h(index);
    end
end

%% 优化结果
% figure(2)
% for n = 1:1:N
%     boxOpt(n)=boxNew(n);
% end
