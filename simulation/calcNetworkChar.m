load 'networksEcoUndir_connect.mat'
[failuresNR_ecoUndir_connect] = simFailNRv2(n_ecoUndir_connect,networkParamsEcoUndir_connect,100,0)
clearvars -except failuresNR_ecoUndir_connect
save 'failuresNR_ecoUndir_connect.mat'
clear

load 'networksEcoUndir_connect.mat'
[k_ecoUndir_connect, kMean_ecoUndir_connect, kMax_ecoUndir_connect, kMin_ecoUndir_connect, kStd_ecoUndir_connect] = calcDegreeV2(A_ecoUndir_connect,networkParamsEcoUndir_connect)
clearvars -except k_ecoUndir_connect kMean_ecoUndir_connect kMax_ecoUndir_connect kMin_ecoUndir_connect kStd_ecoUndir_connect
save 'degreeEcoUndir_connect.mat'
clear

load 'networksEcoUndir_connect.mat'
[Cb_ecoUndir_connect,CbMean_ecoUndir_connect]=calcBetweenness(A_ecoUndir_connect,n_ecoUndir_connect,networkParamsEcoUndir_connect)
clearvars -except Cb_ecoUndir_connect CbMean_ecoUndir_connect
save 'betweennessEcoUndir_connect.mat'
clear

load 'networksEcoUndir_connect.mat'
load 'betweennessEcoUndir_connect.mat'
[CbMean_ecoUndir_connect,CbMax_ecoUndir_connect,CbMin_ecoUndir_connect,CbStd_ecoUndir_connect] = calcBetweennessMinMax(Cb_ecoUndir_connect,CbMean_ecoUndir_connect,networkParamsEcoUndir_connect)
clearvars -except CbMean_ecoUndir_connect CbMax_ecoUndir_connect CbMin_ecoUndir_connect CbStd_ecoUndir_connect
save 'betweennessStatsEcoUndir_connect.mat'
clear

load 'networksEcoUndir_connect.mat'
[C_ecoUndir_connect,Cmean_ecoUndir_connect,Cmin_ecoUndir_connect,Cmax_ecoUndir_connect,Cstd_ecoUndir_connect]=calcClusteringV2(A_ecoUndir_connect,n_ecoUndir_connect,networkParamsEcoUndir_connect)
clearvars -except C_ecoUndir_connect Cmean_ecoUndir_connect Cmin_ecoUndir_connect Cmax_ecoUndir_connect Cstd_ecoUndir_connect
save 'clusteringEcoUndir_connectV2.mat'
clear

load 'networksEcoUndir_connect.mat'
[lMean_ecoUndir_connect,lMax_ecoUndir_connect,lMin_ecoUndir_connect,lStd_ecoUndir_connect] = calcDijkstraV5(A_ecoUndir_connect,n_ecoUndir_connect,networkParamsEcoUndir_connect)
clearvars -except lMean_ecoUndir_connect lMax_ecoUndir_connect lMin_ecoUndir_connect lStd_ecoUndir_connect
save 'pathLengthEcoUndir_connect.mat'
clear

load 'networksEcoUndir_connect.mat'
[Emean_ecoUndir_connect,Emax_ecoUndir_connect,Emin_ecoUndir_connect,Estd_ecoUndir_connect] = calcEfficiencyInit(A_ecoUndir_connect,n_ecoUndir_connect,networkParamsEcoUndir_connect)
clearvars -except Emean_ecoUndir_connect Emax_ecoUndir_connect Emin_ecoUndir_connect Estd_ecoUndir_connect
save 'initEfficiencyEcoUndir_connect.mat'
clear