% Non linear optimization Lab 3
% Problem 2
% ����дһ��

clc;
clear;
close all;

%% ��ʼ����
W=12;
H=200;
bin=zeros(H,W);
% ����N������
N=10;
w=zeros(1,N);
h=zeros(1,N);
for k = 1:N
    w(k)=randi(W); % ��������Ϊbin�Ŀ��
    h(k)=randi(W);
end
% ÿһ�б�������һ�����ӡ���һ��Ϊ��w���ڶ���Ϊ��h
boxes=[w;h];
% �������Ӷ��󲢱�ţ��Լ���ʼ����
figure(1);
for k=1:1:N
    % ���ӳ�ʼ��
    boxNum(k)=rectangle('Position',[0 0 w(k) h(k)],'FaceColor','red','EdgeColor','blue');
end

%% ��һ�ԣ�Ȼ���û��Ȼ����
% ���Ӳ��ŷ��ã���û���Ż�
% boxRan=boxNum;
% for k=2:1:N
%     % ��һ�����Ӳ���
%     lastBoxPos=boxRan(k-1).Position;
%     preBoxPos=boxRan(k).Position;
%     posTmp=[preBoxPos(1),preBoxPos(2)+lastBoxPos(4)+lastBoxPos(2),preBoxPos(3),preBoxPos(4)];
%     boxRan(k).Position=posTmp;
% end
title({['Initial BOXES  ����'],[num2str(max(boxHeight(boxNum,N)))]});

%% �Ż�����
figure(2);
% ��ȡ����λ����Ϣ
for k=1:1:length(boxNum)
    % ÿһ�д���һ������,[x,y,width,height]
    boxPos(k,:)=boxNum(k).Position;
end

h0 = boxHeight2(boxPos,N);
