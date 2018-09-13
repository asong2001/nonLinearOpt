% rotating function
% 将输入的图形沿着（0,0）旋转
% 旋转读数为degree
function rotatedGraph=polyRotate(poly,degree)
    rotatedGraph=rotate(poly,degree,[0 0]);
    plot(poly);
    hold on;
    plot(rotatedGraph);
end
    