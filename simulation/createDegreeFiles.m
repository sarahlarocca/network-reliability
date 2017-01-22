function createDegreeFiles(networkType)

filename = strcat('degree',networkType,'.mat');
load(filename)

degreeCell = strcat('k_',networkType);

k_ = eval(degreeCell);

for i = 1:length(k_)
    degreeList = zeros(20,length(k_{i}{1}));
    for j = 1:20
        degreeList(j,:) = sort(k_{i}{j});
    end
    degreeListFilename = strcat('degreeList',networkType,'_',int2str(length(k_{i}{1})),'.txt');
    save(degreeListFilename,'degreeList','-ASCII','-tabs');
end