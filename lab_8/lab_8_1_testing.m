% lab 8.1 testing function

func = @(x,y) ((1-x).^2+100*((y-x.^2).^2));                 % optimizated function
f_value1 = func(P(1,:),P(2,:));
f_value2 = func(R(1,:),P(2,:));
figure(2);
stem(f_value1);
hold on 
stem(f_value2);

legend('P','R');