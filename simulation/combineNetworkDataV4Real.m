load 'degreeEcoConnect.mat'
load 'betweennessStatsEcoConnect.mat'
load 'clusteringEcoConnectV2.mat'
load 'pathLengthEcoConnect.mat'
load 'LCCdata_EcoConnect.mat'

EcoConnectData = zeros(1,29);

EcoConnectData(:,1) = 1;
EcoConnectData(:,2) = 1;

EcoConnectData(:,3) = 374;

EcoConnectData(:,4) = kMean_EcoConnect{1}{1};
EcoConnectData(:,5) = kMin_EcoConnect{1}{1};
EcoConnectData(:,6) = kMax_EcoConnect{1}{1};
EcoConnectData(:,7) = kStd_EcoConnect{1}{1};

EcoConnectData(:,8) = CbMean_EcoConnect{1}{1};
EcoConnectData(:,9) = CbMin_EcoConnect{1}{1};
EcoConnectData(:,10) = CbMax_EcoConnect{1}{1};
EcoConnectData(:,11) = CbStd_EcoConnect{1}{1};

EcoConnectData(:,12) = Cmean_EcoConnect{1}{1};
EcoConnectData(:,13) = Cmin_EcoConnect{1}{1};
EcoConnectData(:,14) = Cmax_EcoConnect{1}{1};
EcoConnectData(:,15) = Cstd_EcoConnect{1}{1};

EcoConnectData(:,16) = lMean_EcoConnect{1};
EcoConnectData(:,17) = lMin_EcoConnect{1};
EcoConnectData(:,18) = lMax_EcoConnect{1};
EcoConnectData(:,19) = lStd_EcoConnect{1};

EcoConnectData(:,20) = S1Data;
EcoConnectData(:,21) = S10Data;
EcoConnectData(:,22) = S25Data;
EcoConnectData(:,23) = S50Data;
EcoConnectData(:,24) = S75Data;

EcoConnectData(:,25) = numDisconnect1Data;
EcoConnectData(:,26) = numDisconnect10Data;
EcoConnectData(:,27) = numDisconnect25Data;
EcoConnectData(:,28) = numDisconnect50Data;
EcoConnectData(:,29) = numDisconnect75Data;

clearvars -except EcoConnectData

save 'EcoConnectData_NR.mat'
save 'EcoConnectData_NR.txt' -tabs -ASCII
