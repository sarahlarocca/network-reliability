load 'degreeYthan.mat'
load 'betweennessStatsYthan.mat'
load 'clusteringYthan.mat'
load 'pathLengthYthan.mat'
load 'efficiencyYthan.mat'
load 'LCCDataYthan.mat'

YthanData = zeros(1,49);

YthanData(:,1) = 1;
YthanData(:,2) = 1;

YthanData(:,3) = 300;

YthanData(:,4) = kMean_Ythan{1}{1};
YthanData(:,5) = kMin_Ythan{1}{1};
YthanData(:,6) = kMax_Ythan{1}{1};
YthanData(:,7) = kStd_Ythan{1}{1};

YthanData(:,8) = CbMean_Ythan{1}{1};
YthanData(:,9) = CbMin_Ythan{1}{1};
YthanData(:,10) = CbMax_Ythan{1}{1};
YthanData(:,11) = CbStd_Ythan{1}{1};

YthanData(:,12) = Cmean_Ythan{1}{1};
YthanData(:,13) = Cmin_Ythan{1}{1};
YthanData(:,14) = Cmax_Ythan{1}{1};
YthanData(:,15) = Cstd_Ythan{1}{1};

YthanData(:,16) = lMean_Ythan{1};
YthanData(:,17) = lMin_Ythan{1};
YthanData(:,18) = lMax_Ythan{1};
YthanData(:,19) = lStd_Ythan{1};

YthanData(:,20) = S1Data;
YthanData(:,21) = S10Data;
YthanData(:,22) = S25Data;
YthanData(:,23) = S50Data;
YthanData(:,24) = S75Data;

YthanData(:,25) = numDisconnect1Data;
YthanData(:,26) = numDisconnect10Data;
YthanData(:,27) = numDisconnect25Data;
YthanData(:,28) = numDisconnect50Data;
YthanData(:,29) = numDisconnect75Data;

YthanData(:,30) = E1diffMeanData;
YthanData(:,31) = E1diffMinData;
YthanData(:,32) = E1diffMaxData;
YthanData(:,33) = E1diffStdData;

YthanData(:,34) = E10diffMeanData;
YthanData(:,35) = E10diffMinData;
YthanData(:,36) = E10diffMaxData;
YthanData(:,37) = E10diffStdData;

YthanData(:,38) = E25diffMeanData;
YthanData(:,39) = E25diffMinData;
YthanData(:,40) = E25diffMaxData;
YthanData(:,41) = E25diffStdData;

YthanData(:,42) = E50diffMeanData;
YthanData(:,43) = E50diffMinData;
YthanData(:,44) = E50diffMaxData;
YthanData(:,45) = E50diffStdData;

YthanData(:,46) = E75diffMeanData;
YthanData(:,47) = E75diffMinData;
YthanData(:,48) = E75diffMaxData;
YthanData(:,49) = E75diffStdData;

clearvars -except YthanData