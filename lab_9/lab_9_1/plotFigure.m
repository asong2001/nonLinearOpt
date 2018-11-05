% using this file to plot and save 
function plotFigure(num,name,xl,yl)
    figure(num);
    xlabel(xl);
    ylabel(yl);

    title({['Non-linear optimization lab 9.1 11612001 »ÆËÉ'],[name]});
    saveas(gcf,['E:\7-2018Çï¼¾Ñ§ÆÚ\LAB\nonLinearOpt\lab_9\lab_9_1\plot\',name,'.png']);
end