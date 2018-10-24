% rosebrock function n=2 �������������ͼѽ��
% �����ض�������һ����Χ�ڵĵȸ���
function plot_ros()
    func = @(x,y) ((1-x).^2+100*((y-x.^2).^2));
    xi = -2:0.1:2;
    yi = xi';
    % contour
    [X,Y] = meshgrid(xi,yi);
    fx_value = func(X,Y);
    contour(X,Y,fx_value,150);
    hold on 
end