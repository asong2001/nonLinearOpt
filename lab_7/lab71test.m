syms x1 x2;
 X = [x1;x2];
 fx = x1-x2+2*x1^2+2*x1*x2+x2^2;
gradx = gradient(fx,X); %�����ݶȺ���
 
 
ret = subs(gradx,X,[1 2]) ; %�����ڵ�(1,2)���ݶ�
 