save db;
db(1).name='li';
db(1).age=15;
db(2).name='huang';
db(2).age=16;
db(3).name='zhou';
db(3).age=18;

i=length(db);
db(i+1).name='luo';
db(i+1).age=12;

save('db.mat','-append');

for i=1:length(db)
    % 同时判断所要删除对象的姓名和年龄
    if strcmp(name1,db(i).name) && age1==db(i).age
        % 读取文件
        
        A=load('db.mat');
        B=A(1:i-1);
        C=A(i+1:r);
        D=[B;C];
        save ('db.mat',D)
    end
end


% to create a new db
% db_new=db([]);

