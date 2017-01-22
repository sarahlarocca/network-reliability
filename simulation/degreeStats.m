load 'degree.mat'

degreeStats = zeros(100,16);

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
end

save 'degreeStats.mat'

load 'betweenness.mat'

betweennessStats = zeros(100,16);

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
end

save 'betweennessStats.mat'