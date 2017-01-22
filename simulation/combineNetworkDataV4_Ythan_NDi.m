load 'degreeYthan.mat'
load 'betweennessStatsYthan.mat'
load 'clusteringYthanV2.mat'
load 'pathLengthYthan.mat'
load 'LCC_Ythan_NDi.mat'

Ythan_NDi = zeros(1,29);

Ythan_NDi(:,1) = 1;
Ythan_NDi(:,2) = 1;

Ythan_NDi(:,3) = 134;

Ythan_NDi(:,4) = kMean_Ythan{1}{1};
Ythan_NDi(:,5) = kMin_Ythan{1}{1};
Ythan_NDi(:,6) = kMax_Ythan{1}{1};
Ythan_NDi(:,7) = kStd_Ythan{1}{1};

Ythan_NDi(:,8) = CbMean_Ythan{1}{1};
Ythan_NDi(:,9) = CbMin_Ythan{1}{1};
Ythan_NDi(:,10) = CbMax_Ythan{1}{1};
Ythan_NDi(:,11) = CbStd_Ythan{1}{1};

Ythan_NDi(:,12) = Cmean_Ythan{1}{1};
Ythan_NDi(:,13) = Cmin_Ythan{1}{1};
Ythan_NDi(:,14) = Cmax_Ythan{1}{1};
Ythan_NDi(:,15) = Cstd_Ythan{1}{1};

Ythan_NDi(:,16) = lMean_Ythan{1};
Ythan_NDi(:,17) = lMin_Ythan{1};
Ythan_NDi(:,18) = lMax_Ythan{1};
Ythan_NDi(:,19) = lStd_Ythan{1};

Ythan_NDi(:,20) = S1Ythan_NDi;
Ythan_NDi(:,21) = S10Ythan_NDi;
Ythan_NDi(:,22) = S25Ythan_NDi;
Ythan_NDi(:,23) = S50Ythan_NDi;
Ythan_NDi(:,24) = S75Ythan_NDi;

Ythan_NDi(:,25) = numDisconnect1Ythan_NDi;
Ythan_NDi(:,26) = numDisconnect10Ythan_NDi;
Ythan_NDi(:,27) = numDisconnect25Ythan_NDi;
Ythan_NDi(:,28) = numDisconnect50Ythan_NDi;
Ythan_NDi(:,29) = numDisconnect75Ythan_NDi;

clearvars -except Ythan_NDi

save 'Ythan_NDi.mat'
save 'Ythan_NDi.txt' -tabs -ASCII
