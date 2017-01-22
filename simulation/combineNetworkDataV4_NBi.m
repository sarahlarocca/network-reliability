load 'indices.mat'
load 'size.mat'
load 'degree.mat'
load 'betweenness.mat'
load 'clustering.mat'
load 'pathLength.mat'
load 'LCCdata_NBi.mat'

networksDataAvg_NBi = zeros(2000,29);

networksDataAvg_NBi(:,1) = paramIndexData;
networksDataAvg_NBi(:,2) = networkIndexData;

networksDataAvg_NBi(:,3) = nData;

networksDataAvg_NBi(:,4) = kMeanData;
networksDataAvg_NBi(:,5) = kMinData;
networksDataAvg_NBi(:,6) = kMaxData;
networksDataAvg_NBi(:,7) = kStdData;

networksDataAvg_NBi(:,8) = CbMeanData;
networksDataAvg_NBi(:,9) = CbMinData;
networksDataAvg_NBi(:,10) = CbMaxData;
networksDataAvg_NBi(:,11) = CbStdData;

networksDataAvg_NBi(:,12) = CmeanData;
networksDataAvg_NBi(:,13) = CminData;
networksDataAvg_NBi(:,14) = CmaxData;
networksDataAvg_NBi(:,15) = CstdData;

networksDataAvg_NBi(:,16) = lMeanData;
networksDataAvg_NBi(:,17) = lMinData;
networksDataAvg_NBi(:,18) = lMaxData;
networksDataAvg_NBi(:,19) = lStdData;

networksDataAvg_NBi(:,20) = S1Data_NBi;
networksDataAvg_NBi(:,21) = S10Data_NBi;
networksDataAvg_NBi(:,22) = S25Data_NBi;
networksDataAvg_NBi(:,23) = S50Data_NBi;
networksDataAvg_NBi(:,24) = S75Data_NBi;

networksDataAvg_NBi(:,25) = numDisconnect1Data_NBi;
networksDataAvg_NBi(:,26) = numDisconnect10Data_NBi;
networksDataAvg_NBi(:,27) = numDisconnect25Data_NBi;
networksDataAvg_NBi(:,28) = numDisconnect50Data_NBi;
networksDataAvg_NBi(:,29) = numDisconnect75Data_NBi;

clearvars -except networksDataAvg_NBi
