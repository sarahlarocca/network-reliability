load 'indices.mat'
load 'size.mat'
load 'degree.mat'
load 'betweenness.mat'
load 'clustering.mat'
load 'pathLength.mat'
load 'LCCdata_NDi.mat'

networksDataAvg_NDi = zeros(2000,29);

networksDataAvg_NDi(:,1) = paramIndexData;
networksDataAvg_NDi(:,2) = networkIndexData;

networksDataAvg_NDi(:,3) = nData;

networksDataAvg_NDi(:,4) = kMeanData;
networksDataAvg_NDi(:,5) = kMinData;
networksDataAvg_NDi(:,6) = kMaxData;
networksDataAvg_NDi(:,7) = kStdData;

networksDataAvg_NDi(:,8) = CbMeanData;
networksDataAvg_NDi(:,9) = CbMinData;
networksDataAvg_NDi(:,10) = CbMaxData;
networksDataAvg_NDi(:,11) = CbStdData;

networksDataAvg_NDi(:,12) = CmeanData;
networksDataAvg_NDi(:,13) = CminData;
networksDataAvg_NDi(:,14) = CmaxData;
networksDataAvg_NDi(:,15) = CstdData;

networksDataAvg_NDi(:,16) = lMeanData;
networksDataAvg_NDi(:,17) = lMinData;
networksDataAvg_NDi(:,18) = lMaxData;
networksDataAvg_NDi(:,19) = lStdData;

networksDataAvg_NDi(:,20) = S1Data_NDi;
networksDataAvg_NDi(:,21) = S10Data_NDi;
networksDataAvg_NDi(:,22) = S25Data_NDi;
networksDataAvg_NDi(:,23) = S50Data_NDi;
networksDataAvg_NDi(:,24) = S75Data_NDi;

networksDataAvg_NDi(:,25) = numDisconnect1Data_NDi;
networksDataAvg_NDi(:,26) = numDisconnect10Data_NDi;
networksDataAvg_NDi(:,27) = numDisconnect25Data_NDi;
networksDataAvg_NDi(:,28) = numDisconnect50Data_NDi;
networksDataAvg_NDi(:,29) = numDisconnect75Data_NDi;

clearvars -except networksDataAvg_NDi
