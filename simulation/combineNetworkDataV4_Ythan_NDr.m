load 'degreeYthan.mat'
load 'betweennessStatsYthan.mat'
load 'clusteringYthanV2.mat'
load 'pathLengthYthan.mat'
load 'LCC_Ythan_NDr.mat'

Ythan_NDr = zeros(1,29);

Ythan_NDr(:,1) = 1;
Ythan_NDr(:,2) = 1;

Ythan_NDr(:,3) = 134;

Ythan_NDr(:,4) = kMean_Ythan{1}{1};
Ythan_NDr(:,5) = kMin_Ythan{1}{1};
Ythan_NDr(:,6) = kMax_Ythan{1}{1};
Ythan_NDr(:,7) = kStd_Ythan{1}{1};

Ythan_NDr(:,8) = CbMean_Ythan{1}{1};
Ythan_NDr(:,9) = CbMin_Ythan{1}{1};
Ythan_NDr(:,10) = CbMax_Ythan{1}{1};
Ythan_NDr(:,11) = CbStd_Ythan{1}{1};

Ythan_NDr(:,12) = Cmean_Ythan{1}{1};
Ythan_NDr(:,13) = Cmin_Ythan{1}{1};
Ythan_NDr(:,14) = Cmax_Ythan{1}{1};
Ythan_NDr(:,15) = Cstd_Ythan{1}{1};

Ythan_NDr(:,16) = lMean_Ythan{1};
Ythan_NDr(:,17) = lMin_Ythan{1};
Ythan_NDr(:,18) = lMax_Ythan{1};
Ythan_NDr(:,19) = lStd_Ythan{1};

Ythan_NDr(:,20) = S1Ythan_NDr;
Ythan_NDr(:,21) = S10Ythan_NDr;
Ythan_NDr(:,22) = S25Ythan_NDr;
Ythan_NDr(:,23) = S50Ythan_NDr;
Ythan_NDr(:,24) = S75Ythan_NDr;

Ythan_NDr(:,25) = numDisconnect1Ythan_NDr;
Ythan_NDr(:,26) = numDisconnect10Ythan_NDr;
Ythan_NDr(:,27) = numDisconnect25Ythan_NDr;
Ythan_NDr(:,28) = numDisconnect50Ythan_NDr;
Ythan_NDr(:,29) = numDisconnect75Ythan_NDr;

clearvars -except Ythan_NDr

save 'Ythan_NDr.mat'
save 'Ythan_NDr.txt' -tabs -ASCII
