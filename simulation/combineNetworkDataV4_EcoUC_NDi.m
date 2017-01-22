load 'degreeEcoUC.mat'
load 'betweennessStatsEcoUC.mat'
load 'clusteringEcoUCV2.mat'
load 'pathLengthEcoUC.mat'
load 'LCC_EcoUC_NDi.mat'

EcoUC_NDi = zeros(1,29);

EcoUC_NDi(:,1) = 1;
EcoUC_NDi(:,2) = 1;

EcoUC_NDi(:,3) = 183;

EcoUC_NDi(:,4) = kMean_EcoUC{1}{1};
EcoUC_NDi(:,5) = kMin_EcoUC{1}{1};
EcoUC_NDi(:,6) = kMax_EcoUC{1}{1};
EcoUC_NDi(:,7) = kStd_EcoUC{1}{1};

EcoUC_NDi(:,8) = CbMean_EcoUC{1}{1};
EcoUC_NDi(:,9) = CbMin_EcoUC{1}{1};
EcoUC_NDi(:,10) = CbMax_EcoUC{1}{1};
EcoUC_NDi(:,11) = CbStd_EcoUC{1}{1};

EcoUC_NDi(:,12) = Cmean_EcoUC{1}{1};
EcoUC_NDi(:,13) = Cmin_EcoUC{1}{1};
EcoUC_NDi(:,14) = Cmax_EcoUC{1}{1};
EcoUC_NDi(:,15) = Cstd_EcoUC{1}{1};

EcoUC_NDi(:,16) = lMean_EcoUC{1};
EcoUC_NDi(:,17) = lMin_EcoUC{1};
EcoUC_NDi(:,18) = lMax_EcoUC{1};
EcoUC_NDi(:,19) = lStd_EcoUC{1};

EcoUC_NDi(:,20) = S1EcoUC_NDi;
EcoUC_NDi(:,21) = S10EcoUC_NDi;
EcoUC_NDi(:,22) = S25EcoUC_NDi;
EcoUC_NDi(:,23) = S50EcoUC_NDi;
EcoUC_NDi(:,24) = S75EcoUC_NDi;

EcoUC_NDi(:,25) = numDisconnect1EcoUC_NDi;
EcoUC_NDi(:,26) = numDisconnect10EcoUC_NDi;
EcoUC_NDi(:,27) = numDisconnect25EcoUC_NDi;
EcoUC_NDi(:,28) = numDisconnect50EcoUC_NDi;
EcoUC_NDi(:,29) = numDisconnect75EcoUC_NDi;

clearvars -except EcoUC_NDi

save 'EcoUC_NDi.mat'
save 'EcoUC_NDi.txt' -tabs -ASCII
