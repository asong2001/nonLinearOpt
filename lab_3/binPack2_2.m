% Non linear optimization Lab 3
% Problem 2
% �޸�binPack2���㷨

clc;
clear;
close all;

%%
W=12;
H=200;
bin=zeros(H,W);
% ����N������
N=40;
w=randi(5,1,40); % ��������Ϊbin�Ŀ��
h=randi(5,1,40);
% ÿһ�б�������һ�����ӡ���һ��Ϊ��w���ڶ���Ϊ��h
boxes=[w;h];
% �������Ӷ��󲢱�ţ��Լ���ʼ����
figure(1);
for k=1:1:N
    % ���ӳ�ʼ��
    boxNum(k)=rectangle('Position',[0 0 w(k) h(k)],'FaceColor','red','EdgeColor','blue');
end

%% ���Ӳ��ŷ��ã���û���Ż�
boxRan=boxNum;
for k=2:1:N
    % ��һ�����Ӳ���
    lastBoxPos=boxRan(k-1).Position;
    preBoxPos=boxRan(k).Position;
    posTmp=[preBoxPos(1),preBoxPos(2)+lastBoxPos(4)+lastBoxPos(2),preBoxPos(3),preBoxPos(4)];
    boxRan(k).Position=posTmp;
end
title({['Initial BOXES  ����'],[num2str(max(boxHeight(boxNum,N)))]});
axis([0 12 0 130]);
saveas(gcf,'E:\7-2018�＾ѧ��\LAB\nonLinearOpt\lab_3\3.png');

%% ��ʼ��������
% ��ʼ�����ǵ�һ�����Ӿ������½���
boxNew(1)=boxNum(1);
h0=boxHeight(boxNew,length(boxNew));

for n=2:1:N
    % ���õڶ������ӣ���û���ص��Լ��Ҷ˲�����12
    preHeight=boxHeight(boxNew,length(boxNew));
    % ������һ��������ÿ��λ�ò�ͬ�ĸ߶ȴ�С
    for k=1:1:11
        boxNew(n)=boxNum(n);
        boxRightPos=boxNew(n).Position(3)+k;
        if boxRightPos <= 12
            % ����
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
    % �Ż�
    [row,col]=size(recHeight);
    optHeight=sum(recHeight,2);
    mm=min(optHeight);
    optK=find(optHeight==mm);
    % ����find��������
    index=find(optK==min(optK));
    boxNew(n).Position(1)=optK(index);
    boxNew(n).Position(2)=preHeight(optK(index)+1);

end
title({['Optimal BOXES  ����'],[num2str(max(boxHeight(boxNew,N)))]});
axis([0 12 0 130]);
saveas(gcf,'E:\7-2018�＾ѧ��\LAB\nonLinearOpt\lab_3\4.png');



%% �Ż����
% figure(2)
% for n = 1:1:N
%     boxOpt(n)=boxNew(n);
% end
