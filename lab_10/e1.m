function E=e1(x)
E=0;
N=size(x,1);
for i=1:N
	for j=i+1:N
		d=1/norm(x(i,:)-x(j,:))^2;
        E=E+d;
    end
end
