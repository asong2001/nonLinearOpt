% rotating polygon

figure(1);
% v�е�ÿ����ֵ��ʾ���������
v=[-5 -5; 3 -1; 7 1; 5 6; 2 7; -3 10];
% f��ʾ��Ҫ���ӵĵ��˳��
f=[1 2 3 4 5 6 ];
graph=patch('Faces',f,'Vertices',v,'Edgecolor','green','FaceColor','none','LineWidth',2);

figure(2);
pgon=polyshape([0 0 2 5],[0 4 4 0]);
plot(pgon);

% cat=imread('photo.jpg');
% figure(1);
% imshow(cat,[]);
% figure(2);
% graphB=rot90(cat,90);
% imshow(graphB);