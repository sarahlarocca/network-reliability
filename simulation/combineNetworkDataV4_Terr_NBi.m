load 'degreeTerr.mat'
load 'betweennessStatsTerr.mat'
load 'clusteringTerrV2.mat'
load 'pathLengthTerr.mat'
load 'LCC_Terr_NBi.mat'

Terr_NBi = zeros(1,29);

Terr_NBi(:,1) = 1;
Terr_NBi(:,2) = 1;

Terr_NBi(:,3) = 62;

Terr_NBi(:,4) = kMean_Terr{1}{1};
Terr_NBi(:,5) = kMin_Terr{1}{1};
Terr_NBi(:,6) = kMax_Terr{1}{1};
Terr_NBi(:,7) = kStd_Terr{1}{1};

Terr_NBi(:,8) = CbMean_Terr{1}{1};
Terr_NBi(:,9) = CbMin_Terr{1}{1};
Terr_NBi(:,10) = CbMax_Terr{1}{1};
Terr_NBi(:,11) = CbStd_Terr{1}{1};

Terr_NBi(:,12) = Cmean_Terr{1}{1};
Terr_NBi(:,13) = Cmin_Terr{1}{1};
Terr_NBi(:,14) = Cmax_Terr{1}{1};
Terr_NBi(:,15) = Cstd_Terr{1}{1};

Terr_NBi(:,16) = lMean_Terr{1};
Terr_NBi(:,17) = lMin_Terr{1};
Terr_NBi(:,18) = lMax_Terr{1};
Terr_NBi(:,19) = lStd_Terr{1};

Terr_NBi(:,20) = S1Terr_NBi;
Terr_NBi(:,21) = S10Terr_NBi;
Terr_NBi(:,22) = S25Terr_NBi;
Terr_NBi(:,23) = S50Terr_NBi;
Terr_NBi(:,24) = S75Terr_NBi;

Terr_NBi(:,25) = numDisconnect1Terr_NBi;
Terr_NBi(:,26) = numDisconnect10Terr_NBi;
Terr_NBi(:,27) = numDisconnect25Terr_NBi;
Terr_NBi(:,28) = numDisconnect50Terr_NBi;
Terr_NBi(:,29) = numDisconnect75Terr_NBi;

clearvars -except Terr_NBi

save 'Terr_NBi.mat'
save 'Terr_NBi.txt' -tabs -ASCII
