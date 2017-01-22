load 'degreeYthan.mat'
load 'betweennessStatsYthan.mat'
load 'clusteringYthanV2.mat'
load 'pathLengthYthan.mat'
load 'LCC_Ythan_NBr.mat'

Ythan_NBr = zeros(1,29);

Ythan_NBr(:,1) = 1;
Ythan_NBr(:,2) = 1;

Ythan_NBr(:,3) = 134;

Ythan_NBr(:,4) = kMean_Ythan{1}{1};
Ythan_NBr(:,5) = kMin_Ythan{1}{1};
Ythan_NBr(:,6) = kMax_Ythan{1}{1};
Ythan_NBr(:,7) = kStd_Ythan{1}{1};

Ythan_NBr(:,8) = CbMean_Ythan{1}{1};
Ythan_NBr(:,9) = CbMin_Ythan{1}{1};
Ythan_NBr(:,10) = CbMax_Ythan{1}{1};
Ythan_NBr(:,11) = CbStd_Ythan{1}{1};

Ythan_NBr(:,12) = Cmean_Ythan{1}{1};
Ythan_NBr(:,13) = Cmin_Ythan{1}{1};
Ythan_NBr(:,14) = Cmax_Ythan{1}{1};
Ythan_NBr(:,15) = Cstd_Ythan{1}{1};

Ythan_NBr(:,16) = lMean_Ythan{1};
Ythan_NBr(:,17) = lMin_Ythan{1};
Ythan_NBr(:,18) = lMax_Ythan{1};
Ythan_NBr(:,19) = lStd_Ythan{1};

Ythan_NBr(:,20) = S1Ythan_NBr;
Ythan_NBr(:,21) = S10Ythan_NBr;
Ythan_NBr(:,22) = S25Ythan_NBr;
Ythan_NBr(:,23) = S50Ythan_NBr;
Ythan_NBr(:,24) = S75Ythan_NBr;

Ythan_NBr(:,25) = numDisconnect1Ythan_NBr;
Ythan_NBr(:,26) = numDisconnect10Ythan_NBr;
Ythan_NBr(:,27) = numDisconnect25Ythan_NBr;
Ythan_NBr(:,28) = numDisconnect50Ythan_NBr;
Ythan_NBr(:,29) = numDisconnect75Ythan_NBr;

clearvars -except Ythan_NBr

save 'Ythan_NBr.mat'
save 'Ythan_NBr.txt' -tabs -ASCII
