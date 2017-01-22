load 'degreeTerr.mat'
load 'betweennessStatsTerr.mat'
load 'clusteringTerrV2.mat'
load 'pathLengthTerr.mat'
load 'LCC_Terr_NDr.mat'

Terr_NDr = zeros(1,29);

Terr_NDr(:,1) = 1;
Terr_NDr(:,2) = 1;

Terr_NDr(:,3) = 62;

Terr_NDr(:,4) = kMean_Terr{1}{1};
Terr_NDr(:,5) = kMin_Terr{1}{1};
Terr_NDr(:,6) = kMax_Terr{1}{1};
Terr_NDr(:,7) = kStd_Terr{1}{1};

Terr_NDr(:,8) = CbMean_Terr{1}{1};
Terr_NDr(:,9) = CbMin_Terr{1}{1};
Terr_NDr(:,10) = CbMax_Terr{1}{1};
Terr_NDr(:,11) = CbStd_Terr{1}{1};

Terr_NDr(:,12) = Cmean_Terr{1}{1};
Terr_NDr(:,13) = Cmin_Terr{1}{1};
Terr_NDr(:,14) = Cmax_Terr{1}{1};
Terr_NDr(:,15) = Cstd_Terr{1}{1};

Terr_NDr(:,16) = lMean_Terr{1};
Terr_NDr(:,17) = lMin_Terr{1};
Terr_NDr(:,18) = lMax_Terr{1};
Terr_NDr(:,19) = lStd_Terr{1};

Terr_NDr(:,20) = S1Terr_NDr;
Terr_NDr(:,21) = S10Terr_NDr;
Terr_NDr(:,22) = S25Terr_NDr;
Terr_NDr(:,23) = S50Terr_NDr;
Terr_NDr(:,24) = S75Terr_NDr;

Terr_NDr(:,25) = numDisconnect1Terr_NDr;
Terr_NDr(:,26) = numDisconnect10Terr_NDr;
Terr_NDr(:,27) = numDisconnect25Terr_NDr;
Terr_NDr(:,28) = numDisconnect50Terr_NDr;
Terr_NDr(:,29) = numDisconnect75Terr_NDr;

clearvars -except Terr_NDr

save 'Terr_NDr.mat'
save 'Terr_NDr.txt' -tabs -ASCII
