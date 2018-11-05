% main for task 1
% 11612001 HUANG SONG
clc;
clear;
close all;

%% cal ft 
fitness = @func_ft2;
ft = func_ft(2);
nvar = 3;
lb = [0.5 -2 -2];
ub = [1 2 2];
[x,fval] = gamultiobj(fitness,nvar,[],[],[],[],lb,ub);

plot(fval(:,1),fval(:,2),'o');
plotFigure(1,'f_t function','f_t 1','f_t 2');

%% cal ff
fitness2 = @func_ff2;
nvar = 8;
lb = ones(1,nvar) .* -2;
ub = ones(1,nvar) .* 2;
[x,fval] = gamultiobj(fitness2,nvar,[],[],[],[],lb,ub);
plot(fval(:,1),fval(:,2),'o');
plotFigure(1,'f_f function','f_f 1','f_f 2');