% Non linear optimization Lab 3
% Problem 2
% ����дһ��

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
title({['Initial BOXES  ����'],[num2str(max(boxHeight(boxNum,N)))]});

% ��ʼ��������
% ��ʼ�����ǵ�һ�����Ӿ������½���
boxNew(1)=boxNum(1);
h0=boxHeight(boxNew,length(boxNew));

% ���õڶ������ӣ���û���ص��Լ��Ҷ˲�����12
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

%% �Ż����
% figure(2)
% for n = 1:1:N
%     boxOpt(n)=boxNew(n);
% end
