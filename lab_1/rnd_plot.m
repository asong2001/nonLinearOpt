% ????
function rnd_plot(CData,X,x,mode,varargin)
contour(CData.xi,CData.yi,CData.zi,20);
colormap([0 0 1]);
hold on;
plot(X{1}(1),X{1}(2),'co','MarkerSize',5);
for j=2:length(X)
    plot(X{j}(1),X{j}(2),'co','MarkerSize',5);
    plot([X{j}(1) X{j-1}(1)],[X{j}(2) X{j-1}(2)],'c');
end
plot(x(1),x(2),'rx','LineWidth',2,'MarkerSize',8);
if mode==2
    x_new=varargin{1};
    plot([x(1) x_new(1)],[x(2) x_new(2)],'m');
    plot(x_new(1),x_new(2),'gx','LineWidth',2,'MarkerSize',12);
elseif mode==3
    plot(x(1),x(2),'ro','LineWidth',2,'MarkerSize',12);
end
xlabel('x');ylabel('y');
hold off 
pause(0.1);