function [db]=people(db_file,operation,name1,age1,name2,age2)
% ��������
if strcmpi(operation,'reset')
    db_file=([]);
    db=db_file;
    
% ��ʾȫ����Ϣ
elseif strcmpi(operation,'list')
    for i=1:length(db_file)
        disp(db_file(i));
    end
% ͬʱ���������ض�����
elseif strcmpi(operation,'insert')
    i=length(db_file);
    db_file(i+1).name=name1;
    db_file(i+1).age=age1;
    
    db_file(i+2).name=name2;
    db_file(i+2).age=age2;
    
    db=db_file;

% ɾ������,������ͨ�������µ�cellʹ�䲻������ָʾ����ֵ��
elseif strcmpi(operation,'remove')
    for i=1:length(db_file)
        if strcmpi(name1,db_file(i).name) && age1==db_file(i).age
            m=db_file(1:i-1);
            k=db_file(i+1:length(db_file));
            db=[m,k];
        end
    end
end