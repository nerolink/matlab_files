function [neighbors,distances]=knn(X,k)
%k���ڷ�  X--������n_sample*n_feature; k--������������������
%neighbors--���ڵ�λ�ã���ֵ�ǵڼ���sample[[����,��һ������ڶ������....],[����,��һ������ڶ������....]....]
%distances--���ھ��룬[[0.0,��һ������룬�ڶ��������....],[0.0,��һ������룬�ڶ��������....],.....]
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