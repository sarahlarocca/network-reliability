load 'indices.mat'
load 'size.mat'
load 'degree.mat'
load 'betweenness.mat'
load 'clustering.mat'
load 'pathLength.mat'
load 'efficiency.mat'
load 'LCCData.mat'

networksDataAvg = zeros(2000,29);

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

networksDataAvg(:,20) = S1Data;
networksDataAvg(:,21) = S10Data;
networksDataAvg(:,22) = S25Data;
networksDataAvg(:,23) = S50Data;
networksDataAvg(:,24) = S75Data;

networksDataAvg(:,25) = numDisconnect1Data;
networksDataAvg(:,26) = numDisconnect10Data;
networksDataAvg(:,27) = numDisconnect25Data;
networksDataAvg(:,28) = numDisconnect50Data;
networksDataAvg(:,29) = numDisconnect75Data;

networksDataAvg(:,30) = E1diffMeanData;
networksDataAvg(:,31) = E1diffMinData;
networksDataAvg(:,32) = E1diffMaxData;
networksDataAvg(:,33) = E1diffStdData;

networksDataAvg(:,34) = E10diffMeanData;
networksDataAvg(:,35) = E10diffMinData;
networksDataAvg(:,36) = E10diffMaxData;
networksDataAvg(:,37) = E10diffStdData;

networksDataAvg(:,38) = E25diffMeanData;
networksDataAvg(:,39) = E25diffMinData;
networksDataAvg(:,40) = E25diffMaxData;
networksDataAvg(:,41) = E25diffStdData;

networksDataAvg(:,42) = E50diffMeanData;
networksDataAvg(:,43) = E50diffMinData;
networksDataAvg(:,44) = E50diffMaxData;
networksDataAvg(:,45) = E50diffStdData;

networksDataAvg(:,46) = E75diffMeanData;
networksDataAvg(:,47) = E75diffMinData;
networksDataAvg(:,48) = E75diffMaxData;
networksDataAvg(:,49) = E75diffStdData;

clearvars -except networksDataAvg