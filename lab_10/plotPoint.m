% Non linear Opt lab 10.1
% 11612001 HUANG

% plot figure

function plotPoint(x,color)
    % ֱ�ӻ���άƽ���ϵľͺ���
    % �ڲ����ú�������ͶӰ
    k = 1;
    l = 2;
    proj = projection(x,k,l);
    plot(proj(1,:),proj(2,:),'o','Color',color);
    grid on        
    
end