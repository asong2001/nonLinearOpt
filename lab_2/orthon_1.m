% 不用function制作
% origin=[0,0];
v1=transpose([-2 2]);
v2=transpose([2 1]);
v3=[v1 v2];

e1=v1/norm(v1);
t2=v2-(transpose(v2)*e1)*e1;
e2=t2/norm(t2);


plot([0 v1(1)],[0 v1(2)],'g',[0,e1(1)],[0,e1(2)],'yellow');
hold on
plot([0 v2(1)],[0 v2(2)],'r',[0,e2(1)],[0,e2(2)],'blue');
legend('v2','e2','v1','e1')
grid on
axis([-2.5,2.5,-2.5,2.5]);

saveas(gcf,'E:\OneDrive - 南方科技大学\00-实验报告\非线性优化实验报告\lab2图\othon.jpg');