function[X,y]=main(sample_file)
[X,y]=read_sample(sample_file);
draw_sample(X,y);

tomeklinks=TomekLinks(X,y);
tom_0=tomeklinks(:,1);
tom_1=tomeklinks(:,2);
tom_0=tom_0(:);
tom_1=tom_1(:);
num_0=numel(find(y==0));
num_1=numel(find(y==1));
    if num_0>num_1
        X(tom_0,:)=[];
        y(tom_0)=[];
    else
        X(tom_1,:)=[];
        y(tom_1)=[];
    end
draw_sample(X,y);
end