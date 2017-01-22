load 'indices.mat'
load 'size.mat'
load 'degree.mat'
load 'betweenness.mat'
load 'clustering.mat'
load 'pathLength.mat'
load 'LCCdata_NDr.mat'

networksDataAvg_NDr = zeros(2000,29);

networksDataAvg_NDr(:,1) = paramIndexData;
networksDataAvg_NDr(:,2) = networkIndexData;

networksDataAvg_NDr(:,3) = nData;

networksDataAvg_NDr(:,4) = kMeanData;
networksDataAvg_NDr(:,5) = kMinData;
networksDataAvg_NDr(:,6) = kMaxData;
networksDataAvg_NDr(:,7) = kStdData;

networksDataAvg_NDr(:,8) = CbMeanData;
networksDataAvg_NDr(:,9) = CbMinData;
networksDataAvg_NDr(:,10) = CbMaxData;
networksDataAvg_NDr(:,11) = CbStdData;

networksDataAvg_NDr(:,12) = CmeanData;
networksDataAvg_NDr(:,13) = CminData;
networksDataAvg_NDr(:,14) = CmaxData;
networksDataAvg_NDr(:,15) = CstdData;

networksDataAvg_NDr(:,16) = lMeanData;
networksDataAvg_NDr(:,17) = lMinData;
networksDataAvg_NDr(:,18) = lMaxData;
networksDataAvg_NDr(:,19) = lStdData;

networksDataAvg_NDr(:,20) = S1Data_NDr;
networksDataAvg_NDr(:,21) = S10Data_NDr;
networksDataAvg_NDr(:,22) = S25Data_NDr;
networksDataAvg_NDr(:,23) = S50Data_NDr;
networksDataAvg_NDr(:,24) = S75Data_NDr;

networksDataAvg_NDr(:,25) = numDisconnect1Data_NDr;
networksDataAvg_NDr(:,26) = numDisconnect10Data_NDr;
networksDataAvg_NDr(:,27) = numDisconnect25Data_NDr;
networksDataAvg_NDr(:,28) = numDisconnect50Data_NDr;
networksDataAvg_NDr(:,29) = numDisconnect75Data_NDr;

clearvars -except networksDataAvg_NDr
