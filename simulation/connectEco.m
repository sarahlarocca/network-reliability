A_eco_undir = A_ecoUndir{1}{1}

index_row = 1:374;
index_col = (1:374)';

A_ecoUndir_connect = zeros(375,375);

A_ecoUndir_connect(1,2:375) = index_row;
A_ecoUndir_connect(2:375,1) = index_col;
A_ecoUndir_connect(2:375,2:375) = A_eco_undir;

[S_ecoUndir,sizeS_ecoUndir,disconnectedComponents_ecoUndir] = connectedComponents(A_eco_undir,n_ecoUndir);

for i = 1:n_ecoUndir
    if isempty(find(S_ecoUndir == i))
        A_ecoUndir_connect(find(A_ecoUndir_connect(:,1)==i),:) = [];
        A_ecoUndir_connect(:,find(A_ecoUndir_connect(1,:)==i)) = [];
    end
end

A_ecoUndir_connect = A_ecoUndir_connect(2:size(A_ecoUndir_connect),2:size(A_ecoUndir_connect))

for i = 1:size(A_ecoUndir_connect)
    A_ecoUndir_connect(i,i) = 0;
end


fileID = fopen('A_ecoUndir_connect.txt','w');
fprintf(fileID,'%u, ',A_ecoUndir_connect);
fclose(fileID);





A_eco = A_eco{1}{1}

index_row = 1:374;
index_col = (1:374)';

A_eco_connect = zeros(375,375);

A_eco_connect(1,2:375) = index_row;
A_eco_connect(2:375,1) = index_col;
A_eco_connect(2:375,2:375) = A_eco;

[S_ecoUndir,sizeS_ecoUndir,disconnectedComponents_ecoUndir] = connectedComponents(A_ecoUndir{1}{1},n_ecoUndir);

for i = 1:n_eco
    if isempty(find(S_ecoUndir == i))
        A_eco_connect(find(A_eco_connect(:,1)==i),:) = [];
        A_eco_connect(:,find(A_eco_connect(1,:)==i)) = [];
    end
end

A_eco_connect = A_eco_connect(2:size(A_eco_connect),2:size(A_eco_connect))

for i = 1:size(A_eco_connect)
    A_eco_connect(i,i) = 0;
end


fileID = fopen('A_eco_connect.txt','w');
fprintf(fileID,'%u, ',A_eco_connect);
fclose(fileID);
