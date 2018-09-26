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
N=40;
w=zeros(1,N);
h=zeros(1,N);
for k = 1:N
    w(k)=randi(W); % 设计最大宽度为bin的宽度
    h(k)=randi(W);
end
% 每一列变量都是一个箱子。第一行为宽w，第二行为高h
boxes=[w;h];
% 创建箱子对象并编号，以及初始排列
p(1)=figure(1);
title('Initial BOXES');
for k=1:1:N
    boxNum(k)=rectangle('Position',[0 0 w(k) h(k)],'FaceColor','red','EdgeColor','blue');
end
hold on


% 箱子并排放置，还没有优化
boxRan=boxNum;
for k=2:1:N
    % 第一个箱子不动
    lastBoxPos=boxRan(k-1).Position;
    preBoxPos=boxRan(k).Position;
    posTmp=[preBoxPos(1),preBoxPos(2)+lastBoxPos(4)+lastBoxPos(2),preBoxPos(3),preBoxPos(4)];
    boxRan(k).Position=posTmp;
end

%% 排列后的木箱
p(2)=figure(2);
title('随机排列');
for k=1:1:N
    boxNew(k)=rectangle('Position',boxRan(k).Position,'FaceColor','red','EdgeColor','blue');
end


% 放箱子的空间。height为每一列的最大高度
height=boxHeight(boxNum,N);

% 排箱子
p(3)=figure(3);
% 第一个箱子就在左下角的位置
boxArrage(1)=boxNum(1);
% 排N个箱子
for n=2:1:N
    % 预置下一个要进入摆放的箱子，设置箱子的位置

    % 获取目前高度
    tmpH=boxHeight(boxArrage,length(boxArrage));
    
    % 测试每个不同位置的k时的高度
    for k = 1:1:12
        tmpArr=boxArrage;
        % 新的位置
        pos = [k tmpH(k) boxNum(n).Position(3) boxNum(n).Position(4)];
        tmpBox=boxNum(n);
        tmpBox.Position=pos;
        tmpArr = [tmpArr boxNum];
        boxH=boxHeight(boxArrage,length(boxArrage));
        
    end

    % 下面这一串保证不会出现重叠和超过宽度
    
    % 查询盒子最右端位置
%     boxLength(n)=boxArrage(n).Position(1)+boxArrage.Position(3);
%     cond1 = boxLength <= 12;
    
    % 避免面积重叠
%     area=0;
%     for t1 = 1:1:length(boxArrage)
%         for t2 = t1+1:1:N
%             area=area+rectint(boxArrage(t1),boxArrage(t2));
%         end
%     end
%     cond2 = area ==0;
    
    if true
        mm = min(boxH);
        tmp_k = find(boxH==mm);
        mm_k =find(min(tmp_k));
        pos2 = [mm_k tmpH(mm_k) boxNum(n).Position(3) boxNum(n).Position(4)];
        tmpBox=boxNum(n);
        tmpBox.Position=pos2;
        boxArrage = [boxArrage tmpBox];
        
    end
end
        



% % 绘制坐标轴
% figure(1);
% axis([0 W 0 H]);
% grid on;
% for k = 1:N
%     box=boxes(k);
%     
% end
