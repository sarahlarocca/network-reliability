load 'degreeEcoUC.mat'
load 'betweennessStatsEcoUC.mat'
load 'clusteringEcoUCV2.mat'
load 'pathLengthEcoUC.mat'
load 'LCC_EcoUC_NBi.mat'

EcoUC_NBi = zeros(1,29);

EcoUC_NBi(:,1) = 1;
EcoUC_NBi(:,2) = 1;

EcoUC_NBi(:,3) = 183;

EcoUC_NBi(:,4) = kMean_EcoUC{1}{1};
EcoUC_NBi(:,5) = kMin_EcoUC{1}{1};
EcoUC_NBi(:,6) = kMax_EcoUC{1}{1};
EcoUC_NBi(:,7) = kStd_EcoUC{1}{1};

EcoUC_NBi(:,8) = CbMean_EcoUC{1}{1};
EcoUC_NBi(:,9) = CbMin_EcoUC{1}{1};
EcoUC_NBi(:,10) = CbMax_EcoUC{1}{1};
EcoUC_NBi(:,11) = CbStd_EcoUC{1}{1};

EcoUC_NBi(:,12) = Cmean_EcoUC{1}{1};
EcoUC_NBi(:,13) = Cmin_EcoUC{1}{1};
EcoUC_NBi(:,14) = Cmax_EcoUC{1}{1};
EcoUC_NBi(:,15) = Cstd_EcoUC{1}{1};

EcoUC_NBi(:,16) = lMean_EcoUC{1};
EcoUC_NBi(:,17) = lMin_EcoUC{1};
EcoUC_NBi(:,18) = lMax_EcoUC{1};
EcoUC_NBi(:,19) = lStd_EcoUC{1};

EcoUC_NBi(:,20) = S1EcoUC_NBi;
EcoUC_NBi(:,21) = S10EcoUC_NBi;
EcoUC_NBi(:,22) = S25EcoUC_NBi;
EcoUC_NBi(:,23) = S50EcoUC_NBi;
EcoUC_NBi(:,24) = S75EcoUC_NBi;

EcoUC_NBi(:,25) = numDisconnect1EcoUC_NBi;
EcoUC_NBi(:,26) = numDisconnect10EcoUC_NBi;
EcoUC_NBi(:,27) = numDisconnect25EcoUC_NBi;
EcoUC_NBi(:,28) = numDisconnect50EcoUC_NBi;
EcoUC_NBi(:,29) = numDisconnect75EcoUC_NBi;

clearvars -except EcoUC_NBi

save 'EcoUC_NBi.mat'
save 'EcoUC_NBi.txt' -tabs -ASCII
