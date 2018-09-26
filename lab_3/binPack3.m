% Non linear optimization Lab 3
% Problem 2
% 重新写一遍

clc;
clear;
close all;

%% 初始参数
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

%% 试一试，然后就没有然后了
% 箱子并排放置，还没有优化
% boxRan=boxNum;
% for k=2:1:N
%     % 第一个箱子不动
%     lastBoxPos=boxRan(k-1).Position;
%     preBoxPos=boxRan(k).Position;
%     posTmp=[preBoxPos(1),preBoxPos(2)+lastBoxPos(4)+lastBoxPos(2),preBoxPos(3),preBoxPos(4)];
%     boxRan(k).Position=posTmp;
% end
title({['Initial BOXES  黄松'],[num2str(max(boxHeight(boxNum,N)))]});

%% 优化过程
figure(2);
% 获取矩形位置信息
for k=1:1:length(boxNum)
    % 每一行代表一个矩形,[x,y,width,height]
    boxPos(k,:)=boxNum(k).Position;
end

h0 = boxHeight2(boxPos,N);
