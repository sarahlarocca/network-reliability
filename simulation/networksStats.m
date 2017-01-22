load 'degree.mat'

degreeStats = zeros(100,16);
t = 1;

for i = 1:20:1981
    degreeStats(t,1) = mean(kMeanData(i:i+19));
    degreeStats(t,2) = min(kMeanData(i:i+19));
    degreeStats(t,3) = max(kMeanData(i:i+19));
    degreeStats(t,4) = std(kMeanData(i:i+19));
    degreeStats(t,5) = mean(kMinData(i:i+19));
    degreeStats(t,6) = min(kMinData(i:i+19));
    degreeStats(t,7) = max(kMinData(i:i+19));
    degreeStats(t,8) = std(kMinData(i:i+19));
    degreeStats(t,9) = mean(kMaxData(i:i+19));
    degreeStats(t,10) = min(kMaxData(i:i+19));
    degreeStats(t,11) = max(kMaxData(i:i+19));
    degreeStats(t,12) = std(kMaxData(i:i+19));
    degreeStats(t,13) = mean(kStdData(i:i+19));
    degreeStats(t,14) = min(kStdData(i:i+19));
    degreeStats(t,15) = max(kStdData(i:i+19));
    degreeStats(t,16) = std(kStdData(i:i+19));
    
    t = t + 1;
end

clearvars -except degreeStats
save 'degreeStats.mat'
save 'degreeStats.txt' '-ASCII' '-tabs'

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load 'betweenness.mat'

betweennessStats = zeros(100,16);
t = 1;

for i = 1:20:1981
    betweennessStats(t,1) = mean(CbMeanData(i:i+19));
    betweennessStats(t,2) = min(CbMeanData(i:i+19));
    betweennessStats(t,3) = max(CbMeanData(i:i+19));
    betweennessStats(t,4) = std(CbMeanData(i:i+19));
    betweennessStats(t,5) = mean(CbMinData(i:i+19));
    betweennessStats(t,6) = min(CbMinData(i:i+19));
    betweennessStats(t,7) = max(CbMinData(i:i+19));
    betweennessStats(t,8) = std(CbMinData(i:i+19));
    betweennessStats(t,9) = mean(CbMaxData(i:i+19));
    betweennessStats(t,10) = min(CbMaxData(i:i+19));
    betweennessStats(t,11) = max(CbMaxData(i:i+19));
    betweennessStats(t,12) = std(CbMaxData(i:i+19));
    betweennessStats(t,13) = mean(CbStdData(i:i+19));
    betweennessStats(t,14) = min(CbStdData(i:i+19));
    betweennessStats(t,15) = max(CbStdData(i:i+19));
    betweennessStats(t,16) = std(CbStdData(i:i+19));
        
    t = t + 1;
end

clearvars -except betweennessStats
save 'betweennessStats.mat'
save 'betweennessStats.txt' '-ASCII' '-tabs'

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load 'clustering.mat'

clusteringStats = zeros(100,16);
t = 1;

for i = 1:20:1981
    clusteringStats(t,1) = mean(CmeanData(i:i+19));
    clusteringStats(t,2) = min(CmeanData(i:i+19));
    clusteringStats(t,3) = max(CmeanData(i:i+19));
    clusteringStats(t,4) = std(CmeanData(i:i+19));
    clusteringStats(t,5) = mean(CminData(i:i+19));
    clusteringStats(t,6) = min(CminData(i:i+19));
    clusteringStats(t,7) = max(CminData(i:i+19));
    clusteringStats(t,8) = std(CminData(i:i+19));
    clusteringStats(t,9) = mean(CmaxData(i:i+19));
    clusteringStats(t,10) = min(CmaxData(i:i+19));
    clusteringStats(t,11) = max(CmaxData(i:i+19));
    clusteringStats(t,12) = std(CmaxData(i:i+19));
    clusteringStats(t,13) = mean(CstdData(i:i+19));
    clusteringStats(t,14) = min(CstdData(i:i+19));
    clusteringStats(t,15) = max(CstdData(i:i+19));
    clusteringStats(t,16) = std(CstdData(i:i+19));
        
    t = t + 1;
end

clearvars -except clusteringStats
save 'clusteringStats.mat'
save 'clusteringStats.txt' '-ASCII' '-tabs'

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load 'pathLength.mat'

pathLengthStats = zeros(100,16);
t = 1;

for i = 1:20:1981
    pathLengthStats(t,1) = mean(lMeanData(i:i+19));
    pathLengthStats(t,2) = min(lMeanData(i:i+19));
    pathLengthStats(t,3) = max(lMeanData(i:i+19));
    pathLengthStats(t,4) = std(lMeanData(i:i+19));
    pathLengthStats(t,5) = mean(lMinData(i:i+19));
    pathLengthStats(t,6) = min(lMinData(i:i+19));
    pathLengthStats(t,7) = max(lMinData(i:i+19));
    pathLengthStats(t,8) = std(lMinData(i:i+19));
    pathLengthStats(t,9) = mean(lMaxData(i:i+19));
    pathLengthStats(t,10) = min(lMaxData(i:i+19));
    pathLengthStats(t,11) = max(lMaxData(i:i+19));
    pathLengthStats(t,12) = std(lMaxData(i:i+19));
    pathLengthStats(t,13) = mean(lStdData(i:i+19));
    pathLengthStats(t,14) = min(lStdData(i:i+19));
    pathLengthStats(t,15) = max(lStdData(i:i+19));
    pathLengthStats(t,16) = std(lStdData(i:i+19));
        
    t = t + 1;
end

clearvars -except pathLengthStats
save 'pathLengthStats.mat'
save 'pathLengthStats.txt' '-ASCII' '-tabs'

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%