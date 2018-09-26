% Non linear optimization Lab 3
% Problem 2
% 修改binPack2的算法

clc;
clear;
close all;

%%
W=12;
H=200;
bin=zeros(H,W);
% 生成N个箱子
N=40;
w=randi(5,1,40); % 设计最大宽度为bin的宽度
h=randi(5,1,40);
% 每一列变量都是一个箱子。第一行为宽w，第二行为高h
boxes=[w;h];
% 创建箱子对象并编号，以及初始排列
figure(1);
for k=1:1:N
    % 箱子初始化
    boxNum(k)=rectangle('Position',[0 0 w(k) h(k)],'FaceColor','red','EdgeColor','blue');
end

%% 箱子并排放置，还没有优化
boxRan=boxNum;
for k=2:1:N
    % 第一个箱子不动
    lastBoxPos=boxRan(k-1).Position;
    preBoxPos=boxRan(k).Position;
    posTmp=[preBoxPos(1),preBoxPos(2)+lastBoxPos(4)+lastBoxPos(2),preBoxPos(3),preBoxPos(4)];
    boxRan(k).Position=posTmp;
end
title({['Initial BOXES  黄松'],[num2str(max(boxHeight(boxNum,N)))]});
axis([0 12 0 130]);
saveas(gcf,'E:\7-2018秋季学期\LAB\nonLinearOpt\lab_3\3.png');

%% 开始放置箱子
% 初始条件是第一个箱子就在左下角了
boxNew(1)=boxNum(1);
h0=boxHeight(boxNew,length(boxNew));

for n=2:1:N
    % 放置第二个箱子，在没有重叠以及右端不大于12
    preHeight=boxHeight(boxNew,length(boxNew));
    % 计算下一个盒子在每个位置不同的高度大小
    for k=1:1:11
        boxNew(n)=boxNum(n);
        boxRightPos=boxNew(n).Position(3)+k;
        if boxRightPos <= 12
            % 对齐
            if preHeight(k+1)<preHeight(k)
                boxNew(n).Position(1)=k;
                boxNew(n).Position(2)=preHeight(k+1);
            else
                boxNew(n).Position(1)=k;
                boxNew(n).Position(2)=preHeight(k);
            end
            recHeight(k,:)=boxHeight(boxNew,length(boxNew));
        end 
    end
    % 优化
    [row,col]=size(recHeight);
    optHeight=sum(recHeight,2);
    mm=min(optHeight);
    optK=find(optHeight==mm);
    % 套用find避免索引
    index=find(optK==min(optK));
    boxNew(n).Position(1)=optK(index);
    boxNew(n).Position(2)=preHeight(optK(index)+1);

end
title({['Optimal BOXES  黄松'],[num2str(max(boxHeight(boxNew,N)))]});
axis([0 12 0 130]);
saveas(gcf,'E:\7-2018秋季学期\LAB\nonLinearOpt\lab_3\4.png');



%% 优化结果
% figure(2)
% for n = 1:1:N
%     boxOpt(n)=boxNew(n);
% end
