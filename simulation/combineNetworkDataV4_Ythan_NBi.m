load 'degreeYthan.mat'
load 'betweennessStatsYthan.mat'
load 'clusteringYthanV2.mat'
load 'pathLengthYthan.mat'
load 'LCC_Ythan_NBi.mat'

Ythan_NBi = zeros(1,29);

Ythan_NBi(:,1) = 1;
Ythan_NBi(:,2) = 1;

Ythan_NBi(:,3) = 134;

Ythan_NBi(:,4) = kMean_Ythan{1}{1};
Ythan_NBi(:,5) = kMin_Ythan{1}{1};
Ythan_NBi(:,6) = kMax_Ythan{1}{1};
Ythan_NBi(:,7) = kStd_Ythan{1}{1};

Ythan_NBi(:,8) = CbMean_Ythan{1}{1};
Ythan_NBi(:,9) = CbMin_Ythan{1}{1};
Ythan_NBi(:,10) = CbMax_Ythan{1}{1};
Ythan_NBi(:,11) = CbStd_Ythan{1}{1};

Ythan_NBi(:,12) = Cmean_Ythan{1}{1};
Ythan_NBi(:,13) = Cmin_Ythan{1}{1};
Ythan_NBi(:,14) = Cmax_Ythan{1}{1};
Ythan_NBi(:,15) = Cstd_Ythan{1}{1};

Ythan_NBi(:,16) = lMean_Ythan{1};
Ythan_NBi(:,17) = lMin_Ythan{1};
Ythan_NBi(:,18) = lMax_Ythan{1};
Ythan_NBi(:,19) = lStd_Ythan{1};

Ythan_NBi(:,20) = S1Ythan_NBi;
Ythan_NBi(:,21) = S10Ythan_NBi;
Ythan_NBi(:,22) = S25Ythan_NBi;
Ythan_NBi(:,23) = S50Ythan_NBi;
Ythan_NBi(:,24) = S75Ythan_NBi;

Ythan_NBi(:,25) = numDisconnect1Ythan_NBi;
Ythan_NBi(:,26) = numDisconnect10Ythan_NBi;
Ythan_NBi(:,27) = numDisconnect25Ythan_NBi;
Ythan_NBi(:,28) = numDisconnect50Ythan_NBi;
Ythan_NBi(:,29) = numDisconnect75Ythan_NBi;

clearvars -except Ythan_NBi

save 'Ythan_NBi.mat'
save 'Ythan_NBi.txt' -tabs -ASCII
