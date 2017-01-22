load 'indices.mat'
load 'size.mat'
load 'degree.mat'
load 'betweenness.mat'
load 'clustering.mat'
load 'pathLength.mat'

networksDataAvg = zeros(2000,35);

networksDataAvg(:,1) = paramIndexData;
networksDataAvg(:,2) = networkIndexData;

networksDataAvg(:,3) = nData;

networksDataAvg(:,4) = kMeanData;
networksDataAvg(:,5) = kMinData;
networksDataAvg(:,6) = kMaxData;
networksDataAvg(:,7) = kStdData;

networksDataAvg(:,8) = CbMeanData;
networksDataAvg(:,9) = CbMinData;
networksDataAvg(:,10) = CbMaxData;
networksDataAvg(:,11) = CbStdData;

networksDataAvg(:,12) = CmeanData;
networksDataAvg(:,13) = CminData;
networksDataAvg(:,14) = CmaxData;
networksDataAvg(:,15) = CstdData;

networksDataAvg(:,16) = lMeanData;
networksDataAvg(:,17) = lMinData;
networksDataAvg(:,18) = lMaxData;
networksDataAvg(:,19) = lStdData;

networksDataAvg(:,20) = E1diffMeanData;
networksDataAvg(:,21) = E1diffMinData;
networksDataAvg(:,22) = E1diffMaxData;
networksDataAvg(:,23) = E1diffStdData;

networksDataAvg(:,24) = E25diffMeanData;
networksDataAvg(:,25) = E25diffMinData;
networksDataAvg(:,26) = E25diffMaxData;
networksDataAvg(:,27) = E25diffStdData;

networksDataAvg(:,28) = E50diffMeanData;
networksDataAvg(:,29) = E50diffMinData;
networksDataAvg(:,30) = E50diffMaxData;
networksDataAvg(:,31) = E50diffStdData;

networksDataAvg(:,32) = E75diffMeanData;
networksDataAvg(:,33) = E75diffMinData;
networksDataAvg(:,34) = E75diffMaxData;
networksDataAvg(:,35) = E75diffStdData;

clearvars -except networksDataAvg