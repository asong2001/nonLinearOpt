% plot figures' information
figure(1);
name = {['Non-linear Opt lab 10.4 11612001 ª∆À…'],['uniformity measure: ',num2str(u)],['initial uniformity measure: ',num2str(u0)]};
xlabel('x');
ylabel('y');
title(name);
%%
figure(2);
name = {['Non-linear Opt lab 10.2 11612001 ª∆À…'],['performance']};
title(name);
xlabel('iter');
ylabel('uniformity measure');
% zlabel('z');