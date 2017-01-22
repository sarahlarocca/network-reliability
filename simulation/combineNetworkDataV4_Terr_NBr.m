load 'degreeTerr.mat'
load 'betweennessStatsTerr.mat'
load 'clusteringTerrV2.mat'
load 'pathLengthTerr.mat'
load 'LCC_Terr_NBr.mat'

Terr_NBr = zeros(1,29);

Terr_NBr(:,1) = 1;
Terr_NBr(:,2) = 1;

Terr_NBr(:,3) = 62;

Terr_NBr(:,4) = kMean_Terr{1}{1};
Terr_NBr(:,5) = kMin_Terr{1}{1};
Terr_NBr(:,6) = kMax_Terr{1}{1};
Terr_NBr(:,7) = kStd_Terr{1}{1};

Terr_NBr(:,8) = CbMean_Terr{1}{1};
Terr_NBr(:,9) = CbMin_Terr{1}{1};
Terr_NBr(:,10) = CbMax_Terr{1}{1};
Terr_NBr(:,11) = CbStd_Terr{1}{1};

Terr_NBr(:,12) = Cmean_Terr{1}{1};
Terr_NBr(:,13) = Cmin_Terr{1}{1};
Terr_NBr(:,14) = Cmax_Terr{1}{1};
Terr_NBr(:,15) = Cstd_Terr{1}{1};

Terr_NBr(:,16) = lMean_Terr{1};
Terr_NBr(:,17) = lMin_Terr{1};
Terr_NBr(:,18) = lMax_Terr{1};
Terr_NBr(:,19) = lStd_Terr{1};

Terr_NBr(:,20) = S1Terr_NBr;
Terr_NBr(:,21) = S10Terr_NBr;
Terr_NBr(:,22) = S25Terr_NBr;
Terr_NBr(:,23) = S50Terr_NBr;
Terr_NBr(:,24) = S75Terr_NBr;

Terr_NBr(:,25) = numDisconnect1Terr_NBr;
Terr_NBr(:,26) = numDisconnect10Terr_NBr;
Terr_NBr(:,27) = numDisconnect25Terr_NBr;
Terr_NBr(:,28) = numDisconnect50Terr_NBr;
Terr_NBr(:,29) = numDisconnect75Terr_NBr;

clearvars -except Terr_NBr

save 'Terr_NBr.mat'
save 'Terr_NBr.txt' -tabs -ASCII
