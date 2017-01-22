load 'degreeTerr.mat'
load 'betweennessStatsTerr.mat'
load 'clusteringTerrV2.mat'
load 'pathLengthTerr.mat'
load 'LCC_Terr_NDi.mat'

Terr_NDi = zeros(1,29);

Terr_NDi(:,1) = 1;
Terr_NDi(:,2) = 1;

Terr_NDi(:,3) = 62;

Terr_NDi(:,4) = kMean_Terr{1}{1};
Terr_NDi(:,5) = kMin_Terr{1}{1};
Terr_NDi(:,6) = kMax_Terr{1}{1};
Terr_NDi(:,7) = kStd_Terr{1}{1};

Terr_NDi(:,8) = CbMean_Terr{1}{1};
Terr_NDi(:,9) = CbMin_Terr{1}{1};
Terr_NDi(:,10) = CbMax_Terr{1}{1};
Terr_NDi(:,11) = CbStd_Terr{1}{1};

Terr_NDi(:,12) = Cmean_Terr{1}{1};
Terr_NDi(:,13) = Cmin_Terr{1}{1};
Terr_NDi(:,14) = Cmax_Terr{1}{1};
Terr_NDi(:,15) = Cstd_Terr{1}{1};

Terr_NDi(:,16) = lMean_Terr{1};
Terr_NDi(:,17) = lMin_Terr{1};
Terr_NDi(:,18) = lMax_Terr{1};
Terr_NDi(:,19) = lStd_Terr{1};

Terr_NDi(:,20) = S1Terr_NDi;
Terr_NDi(:,21) = S10Terr_NDi;
Terr_NDi(:,22) = S25Terr_NDi;
Terr_NDi(:,23) = S50Terr_NDi;
Terr_NDi(:,24) = S75Terr_NDi;

Terr_NDi(:,25) = numDisconnect1Terr_NDi;
Terr_NDi(:,26) = numDisconnect10Terr_NDi;
Terr_NDi(:,27) = numDisconnect25Terr_NDi;
Terr_NDi(:,28) = numDisconnect50Terr_NDi;
Terr_NDi(:,29) = numDisconnect75Terr_NDi;

clearvars -except Terr_NDi

save 'Terr_NDi.mat'
save 'Terr_NDi.txt' -tabs -ASCII
