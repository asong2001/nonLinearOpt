%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
% Course: Nonlinear Optimization. %
% FALL.2018. Dr. Cheng. %
% Assignment: (5) %
% Date:(2018.10.10) %
% By: (黄松)%
% %
% ID NUMBER: (11612001) %
% LAB:(6.4) %
% Description: Pattern Search Algorithm%
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

clc;
clear;
close all;

% 起点
n = [3 5 10 20];
for k = 1:length(n)
    % opt iteration
    x0 = ones(1,n(k))./n(k);
    fx = @(x) black_box(x);
    option = optimset('Display','iter');
    m = -1*ones(1,n(k));
    [x,f] = fminimax(fx,x0,[],[],m,-1,[0 0],[],[],option);
    subplot(2,4,k);
    stem(x0);
    hold on 
    stem(x);
    title('Function Argument');

    subplot(2,4,4+k);
    stem(fx(x0));
    hold on
    stem(fx(x));
    title('Function Values');
end
saveas(gcf,'E:\7-2018秋季学期\LAB\nonLinearOpt\lab_5\plot\lab_6_4.png');