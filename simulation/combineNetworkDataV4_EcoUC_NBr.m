load 'degreeEcoUC.mat'
load 'betweennessStatsEcoUC.mat'
load 'clusteringEcoUCV2.mat'
load 'pathLengthEcoUC.mat'
load 'LCC_EcoUC_NBr.mat'

EcoUC_NBr = zeros(1,29);

EcoUC_NBr(:,1) = 1;
EcoUC_NBr(:,2) = 1;

EcoUC_NBr(:,3) = 183;

EcoUC_NBr(:,4) = kMean_EcoUC{1}{1};
EcoUC_NBr(:,5) = kMin_EcoUC{1}{1};
EcoUC_NBr(:,6) = kMax_EcoUC{1}{1};
EcoUC_NBr(:,7) = kStd_EcoUC{1}{1};

EcoUC_NBr(:,8) = CbMean_EcoUC{1}{1};
EcoUC_NBr(:,9) = CbMin_EcoUC{1}{1};
EcoUC_NBr(:,10) = CbMax_EcoUC{1}{1};
EcoUC_NBr(:,11) = CbStd_EcoUC{1}{1};

EcoUC_NBr(:,12) = Cmean_EcoUC{1}{1};
EcoUC_NBr(:,13) = Cmin_EcoUC{1}{1};
EcoUC_NBr(:,14) = Cmax_EcoUC{1}{1};
EcoUC_NBr(:,15) = Cstd_EcoUC{1}{1};

EcoUC_NBr(:,16) = lMean_EcoUC{1};
EcoUC_NBr(:,17) = lMin_EcoUC{1};
EcoUC_NBr(:,18) = lMax_EcoUC{1};
EcoUC_NBr(:,19) = lStd_EcoUC{1};

EcoUC_NBr(:,20) = S1EcoUC_NBr;
EcoUC_NBr(:,21) = S10EcoUC_NBr;
EcoUC_NBr(:,22) = S25EcoUC_NBr;
EcoUC_NBr(:,23) = S50EcoUC_NBr;
EcoUC_NBr(:,24) = S75EcoUC_NBr;

EcoUC_NBr(:,25) = numDisconnect1EcoUC_NBr;
EcoUC_NBr(:,26) = numDisconnect10EcoUC_NBr;
EcoUC_NBr(:,27) = numDisconnect25EcoUC_NBr;
EcoUC_NBr(:,28) = numDisconnect50EcoUC_NBr;
EcoUC_NBr(:,29) = numDisconnect75EcoUC_NBr;

clearvars -except EcoUC_NBr

save 'EcoUC_NBr.mat'
save 'EcoUC_NBr.txt' -tabs -ASCII
