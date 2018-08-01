function [tomeklinks]=TomekLinks(X,y)
%����tomek link
[ns,ds]=knn(X,1);
x_shape=size(X);
tomeklinks=[];
searched=zeros(1,x_shape(1));
    function [b]=isTomekLink(index,index_neighbor)
        b=0;
        if ns(index_neighbor,2) == index
            if y(index) ~= y(index_neighbor)
                b=1;
            end
        end
    end
    for i=1:x_shape(1)
        if searched(i) ==0
            i_n=ns(i,2);
            if searched(i_n)==0
                b=isTomekLink(i,i_n);
                if b ==1
                    if y(i) == 0
                       tmp=[i,i_n];
                    else
                       tmp=[i_n,i];
                    end
                    searched(i)=1;
                    searched(i_n)=1;
                    tomeklinks=[tomeklinks;tmp];
                end
            end
        end
    end
end
