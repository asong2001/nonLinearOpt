% Non linear optimization Lab 3
% Problem 2
clc;
clear;
close all;

%%
W=12;
H=200;
bin=zeros(H,W);
% ����N������
N=40;
w=zeros(1,N);
h=zeros(1,N);
for k = 1:N
    w(k)=randi(W); % ��������Ϊbin�Ŀ��
    h(k)=randi(W);
end
% ÿһ�б�������һ�����ӡ���һ��Ϊ��w���ڶ���Ϊ��h
boxes=[w;h];
% �������Ӷ��󲢱�ţ��Լ���ʼ����
p(1)=figure(1);
title('Initial BOXES');
for k=1:1:N
    boxNum(k)=rectangle('Position',[0 0 w(k) h(k)],'FaceColor','red','EdgeColor','blue');
end
hold on


% ���Ӳ��ŷ��ã���û���Ż�
boxRan=boxNum;
for k=2:1:N
    % ��һ�����Ӳ���
    lastBoxPos=boxRan(k-1).Position;
    preBoxPos=boxRan(k).Position;
    posTmp=[preBoxPos(1),preBoxPos(2)+lastBoxPos(4)+lastBoxPos(2),preBoxPos(3),preBoxPos(4)];
    boxRan(k).Position=posTmp;
end

%% ���к��ľ��
p(2)=figure(2);
title('�������');
for k=1:1:N
    boxNew(k)=rectangle('Position',boxRan(k).Position,'FaceColor','red','EdgeColor','blue');
end


% �����ӵĿռ䡣heightΪÿһ�е����߶�
height=boxHeight(boxNum,N);

% ������
p(3)=figure(3);
% ��һ�����Ӿ������½ǵ�λ��
boxArrage(1)=boxNum(1);
% ��N������
for n=2:1:N
    % Ԥ����һ��Ҫ����ڷŵ����ӣ��������ӵ�λ��

    % ��ȡĿǰ�߶�
    tmpH=boxHeight(boxArrage,length(boxArrage));
    
    % ����ÿ����ͬλ�õ�kʱ�ĸ߶�
    for k = 1:1:12
        tmpArr=boxArrage;
        % �µ�λ��
        pos = [k tmpH(k) boxNum(n).Position(3) boxNum(n).Position(4)];
        tmpBox=boxNum(n);
        tmpBox.Position=pos;
        tmpArr = [tmpArr boxNum];
        boxH=boxHeight(boxArrage,length(boxArrage));
        
    end

    % ������һ����֤��������ص��ͳ������
    
    % ��ѯ�������Ҷ�λ��
%     boxLength(n)=boxArrage(n).Position(1)+boxArrage.Position(3);
%     cond1 = boxLength <= 12;
    
    % ��������ص�
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
        



% % ����������
% figure(1);
% axis([0 W 0 H]);
% grid on;
% for k = 1:N
%     box=boxes(k);
%     
% end
