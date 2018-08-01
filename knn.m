function [neighbors,distances]=knn(X,k)
%k近邻法  X--样本，n_sample*n_feature; k--近邻数，不包括自身
%neighbors--近邻的位置，数值是第几个sample[[自身,第一最近，第二最近，....],[自身,第一最近，第二最近，....]....]
%distances--近邻距离，[[0.0,第一最近距离，第二最近距离....],[0.0,第一最近距离，第二最近距离....],.....]
x_shape=size(X);
model=KDTreeSearcher(X);
neighbors=[];
distances=[];
for i=1:x_shape(1)
    point=X(i,:);
    [n,d]=knnsearch(model,point,'k',k+1);
    %n=n(2:length(n));
    %d=d(2:length(d));
    neighbors=[neighbors;n];
    distances=[distances;d];
end
end