% rotating function
% �������ͼ�����ţ�0,0����ת
% ��ת����Ϊdegree
function rotatedGraph=polyRotate(poly,degree)
    rotatedGraph=rotate(poly,degree,[0 0]);
    plot(poly);
    hold on;
    plot(rotatedGraph);
end
    