function[]=draw_sample(X,y)
    index_0=find(y==0);
    index_1=find(y==1);
    
    X_0=X(index_0,:);
    X_1=X(index_1,:);
    
    scatter(X_0(:,1),X_0(:,2),'fill');
    hold on;
    scatter(X_1(:,1),X_1(:,2),'fill');
end