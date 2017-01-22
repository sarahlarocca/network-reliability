load 'degreeEcoUC.mat'
load 'betweennessStatsEcoUC.mat'
load 'clusteringEcoUCV2.mat'
load 'pathLengthEcoUC.mat'
load 'LCC_EcoUC_NDr.mat'

EcoUC_NDr = zeros(1,29);

EcoUC_NDr(:,1) = 1;
EcoUC_NDr(:,2) = 1;

EcoUC_NDr(:,3) = 183;

EcoUC_NDr(:,4) = kMean_EcoUC{1}{1};
EcoUC_NDr(:,5) = kMin_EcoUC{1}{1};
EcoUC_NDr(:,6) = kMax_EcoUC{1}{1};
EcoUC_NDr(:,7) = kStd_EcoUC{1}{1};

EcoUC_NDr(:,8) = CbMean_EcoUC{1}{1};
EcoUC_NDr(:,9) = CbMin_EcoUC{1}{1};
EcoUC_NDr(:,10) = CbMax_EcoUC{1}{1};
EcoUC_NDr(:,11) = CbStd_EcoUC{1}{1};

EcoUC_NDr(:,12) = Cmean_EcoUC{1}{1};
EcoUC_NDr(:,13) = Cmin_EcoUC{1}{1};
EcoUC_NDr(:,14) = Cmax_EcoUC{1}{1};
EcoUC_NDr(:,15) = Cstd_EcoUC{1}{1};

EcoUC_NDr(:,16) = lMean_EcoUC{1};
EcoUC_NDr(:,17) = lMin_EcoUC{1};
EcoUC_NDr(:,18) = lMax_EcoUC{1};
EcoUC_NDr(:,19) = lStd_EcoUC{1};

EcoUC_NDr(:,20) = S1EcoUC_NDr;
EcoUC_NDr(:,21) = S10EcoUC_NDr;
EcoUC_NDr(:,22) = S25EcoUC_NDr;
EcoUC_NDr(:,23) = S50EcoUC_NDr;
EcoUC_NDr(:,24) = S75EcoUC_NDr;

EcoUC_NDr(:,25) = numDisconnect1EcoUC_NDr;
EcoUC_NDr(:,26) = numDisconnect10EcoUC_NDr;
EcoUC_NDr(:,27) = numDisconnect25EcoUC_NDr;
EcoUC_NDr(:,28) = numDisconnect50EcoUC_NDr;
EcoUC_NDr(:,29) = numDisconnect75EcoUC_NDr;

clearvars -except EcoUC_NDr

save 'EcoUC_NDr.mat'
save 'EcoUC_NDr.txt' -tabs -ASCII
