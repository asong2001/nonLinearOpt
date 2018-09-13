function orthon_e = orthon(input)
% myFun - to find 标准施密特正交矩阵
% 归一化
[~,column]=size(input);
if column==1
    orthon_e=input./(norm(input));
    plot(input);
    hold on
    plot(orthon_e);    
else 
    orthon_e(1)=input(1)./(norm(input(1)));
    t=[];
    sum_input=[];
    for time_j=2:column
        for time_i=1:time_j-1
            % sigma求和
            sum_input=sum_input+transpose(input(time_j))*orthon_e(time_i)*orthon_e(time_i);
        t(time_j)=input(time_j)-sum_input;
        orthon_e(time_j)=t(time_j)./norm(t(time_j));
        end
    end
end

