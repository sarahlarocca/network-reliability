load 'networksYthan.mat'
[k_Ythan, kMean_Ythan, kMax_Ythan, kMin_Ythan, kStd_Ythan] = calcDegreeV2(A_Ythan,networkParamsYthan);
clearvars -except k_Ythan kMean_Ythan kMax_Ythan kMin_Ythan kStd_Ythan
save 'degreeYthan.mat'
clear

load 'networksYthan.mat'
[Cb_Ythan,CbMean_Ythan]=calcBetweenness(A_Ythan,n_Ythan,networkParamsYthan);
clearvars -except Cb_Ythan CbMean_Ythan
save 'betweennessYthan.mat'
clear

load 'networksYthan.mat'
load 'betweennessYthan.mat'
[CbMean_Ythan,CbMax_Ythan,CbMin_Ythan,CbStd_Ythan] = calcBetweennessMinMax(Cb_Ythan,CbMean_Ythan,networkParamsYthan);
clearvars -except CbMean_Ythan CbMax_Ythan CbMin_Ythan CbStd_Ythan
save 'betweennessStatsYthan.mat'
clear

load 'networksYthan.mat'
[C_Ythan,Cmean_Ythan,Cmin_Ythan,Cmax_Ythan,Cstd_Ythan]=calcClusteringV2(A_Ythan,n_Ythan,networkParamsYthan);
clearvars -except C_Ythan Cmean_Ythan Cmin_Ythan Cmax_Ythan Cstd_Ythan
save 'clusteringYthanV2.mat'
clear

load 'networksYthan.mat'
[lMean_Ythan,lMax_Ythan,lMin_Ythan,lStd_Ythan] = calcDijkstraV5(A_Ythan,n_Ythan,networkParamsYthan);
clearvars -except lMean_Ythan lMax_Ythan lMin_Ythan lStd_Ythan
save 'pathLengthYthan.mat'
clear

load 'networksYthan.mat'
[Emean_Ythan,Emax_Ythan,Emin_Ythan,Estd_Ythan] = calcEfficiencyInit(A_Ythan,n_Ythan,networkParamsYthan);
clearvars -except Emean_Ythan Emax_Ythan Emin_Ythan Estd_Ythan
save 'initEfficiencyYthan.mat'
clear



load 'networksTerr.mat'
[k_Terr, kMean_Terr, kMax_Terr, kMin_Terr, kStd_Terr] = calcDegreeV2(A_Terr,networkParamsTerr);
clearvars -except k_Terr kMean_Terr kMax_Terr kMin_Terr kStd_Terr
save 'degreeTerr.mat'
clear

load 'networksTerr.mat'
[Cb_Terr,CbMean_Terr]=calcBetweenness(A_Terr,n_Terr,networkParamsTerr);
clearvars -except Cb_Terr CbMean_Terr
save 'betweennessTerr.mat'
clear

load 'networksTerr.mat'
load 'betweennessTerr.mat'
[CbMean_Terr,CbMax_Terr,CbMin_Terr,CbStd_Terr] = calcBetweennessMinMax(Cb_Terr,CbMean_Terr,networkParamsTerr);
clearvars -except CbMean_Terr CbMax_Terr CbMin_Terr CbStd_Terr
save 'betweennessStatsTerr.mat'
clear

load 'networksTerr.mat'
[C_Terr,Cmean_Terr,Cmin_Terr,Cmax_Terr,Cstd_Terr]=calcClusteringV2(A_Terr,n_Terr,networkParamsTerr);
clearvars -except C_Terr Cmean_Terr Cmin_Terr Cmax_Terr Cstd_Terr
save 'clusteringTerrV2.mat'
clear

load 'networksTerr.mat'
[lMean_Terr,lMax_Terr,lMin_Terr,lStd_Terr] = calcDijkstraV5(A_Terr,n_Terr,networkParamsTerr);
clearvars -except lMean_Terr lMax_Terr lMin_Terr lStd_Terr
save 'pathLengthTerr.mat'
clear

load 'networksTerr.mat'
[Emean_Terr,Emax_Terr,Emin_Terr,Estd_Terr] = calcEfficiencyInit(A_Terr,n_Terr,networkParamsTerr);
clearvars -except Emean_Terr Emax_Terr Emin_Terr Estd_Terr
save 'initEfficiencyTerr.mat'
clear



load 'networksEcoUCv2.mat'
[k_EcoUC, kMean_EcoUC, kMax_EcoUC, kMin_EcoUC, kStd_EcoUC] = calcDegreeV2(A_EcoUC,networkParamsEcoUC);
clearvars -except k_EcoUC kMean_EcoUC kMax_EcoUC kMin_EcoUC kStd_EcoUC
save 'degreeEcoUC.mat'
clear

load 'networksEcoUCv2.mat'
[Cb_EcoUC,CbMean_EcoUC]=calcBetweenness(A_EcoUC,n_EcoUC,networkParamsEcoUC);
clearvars -except Cb_EcoUC CbMean_EcoUC
save 'betweennessEcoUC.mat'
clear

load 'networksEcoUCv2.mat'
load 'betweennessEcoUC.mat'
[CbMean_EcoUC,CbMax_EcoUC,CbMin_EcoUC,CbStd_EcoUC] = calcBetweennessMinMax(Cb_EcoUC,CbMean_EcoUC,networkParamsEcoUC);
clearvars -except CbMean_EcoUC CbMax_EcoUC CbMin_EcoUC CbStd_EcoUC
save 'betweennessStatsEcoUC.mat'
clear

load 'networksEcoUCv2.mat'
[C_EcoUC,Cmean_EcoUC,Cmin_EcoUC,Cmax_EcoUC,Cstd_EcoUC]=calcClusteringV2(A_EcoUC,n_EcoUC,networkParamsEcoUC);
clearvars -except C_EcoUC Cmean_EcoUC Cmin_EcoUC Cmax_EcoUC Cstd_EcoUC
save 'clusteringEcoUCV2.mat'
clear

load 'networksEcoUCv2.mat'
[lMean_EcoUC,lMax_EcoUC,lMin_EcoUC,lStd_EcoUC] = calcDijkstraV5(A_EcoUC,n_EcoUC,networkParamsEcoUC);
clearvars -except lMean_EcoUC lMax_EcoUC lMin_EcoUC lStd_EcoUC
save 'pathLengthEcoUC.mat'
clear

load 'networksEcoUCv2.mat'
[Emean_EcoUC,Emax_EcoUC,Emin_EcoUC,Estd_EcoUC] = calcEfficiencyInit(A_EcoUC,n_EcoUC,networkParamsEcoUC);
clearvars -except Emean_EcoUC Emax_EcoUC Emin_EcoUC Estd_EcoUC
save 'initEfficiencyEcoUC.mat'
clear