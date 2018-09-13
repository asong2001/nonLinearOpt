function [db]=people(db_file,operation,name1,age1,name2,age2)
% 擦除数据
if strcmpi(operation,'reset')
    db_file=([]);
    db=db_file;
    
% 显示全部信息
elseif strcmpi(operation,'list')
    for i=1:length(db_file)
        disp(db_file(i));
    end
% 同时插入两个特定对象
elseif strcmpi(operation,'insert')
    i=length(db_file);
    db_file(i+1).name=name1;
    db_file(i+1).age=age1;
    
    db_file(i+2).name=name2;
    db_file(i+2).age=age2;
    
    db=db_file;

% 删除对象,方法是通过构建新的cell使其不含有所指示的数值。
elseif strcmpi(operation,'remove')
    for i=1:length(db_file)
        if strcmpi(name1,db_file(i).name) && age1==db_file(i).age
            m=db_file(1:i-1);
            k=db_file(i+1:length(db_file));
            db=[m,k];
        end
    end
end