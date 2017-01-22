function [edges] = edgeList(A,n)

edges = [];

for i = 1:n
    for j = i:n
        if (A(i,j) == 1) && (i~=j)
            edges = [edges; i j];
        end
    end
end