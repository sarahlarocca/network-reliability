cd('/media/files/jhu/infrastructure/networks2012/') 
addpath('/media/files/jhu/infrastructure/networks2012/realNetworks/')
addpath('/media/files/jhu/infrastructure/networks2012/matlabCode/')

load 'networksYthan.mat'
[failuresNDi_Ythan] = simFailNDi(A_Ythan,n_Ythan,networkParamsYthan,1,0);
clearvars -except failuresNDi_Ythan
save 'failuresNDi_Ythan.mat'
clear

load 'networksYthan.mat'
[failuresNDr_Ythan] = simFailNDrV2(A_Ythan,n_Ythan,networkParamsYthan,1,0);
clearvars -except failuresNDr_Ythan
save 'failuresNDr_Ythan.mat'
clear

load 'networksYthan.mat'
[Cb_Ythan,CbMean_Ythan]=calcBetweenness(A_Ythan,n_Ythan,networkParamsYthan);
[failuresNBi_Ythan] = simFailNBi(Cb_Ythan,n_Ythan,networkParamsYthan,1,0);
clearvars -except failuresNBi_Ythan
save 'failuresNBi_Ythan.mat'
clear

load 'networksYthan.mat'
[Cb_Ythan,CbMean_Ythan]=calcBetweenness(A_Ythan,n_Ythan,networkParamsYthan);
[failuresNBr_Ythan] = simFailNBr(A_Ythan,n_Ythan,Cb_Ythan,networkParamsYthan,1,0);
clearvars -except failuresNBr_Ythan
save 'failuresNBr_Ythan.mat'
clear



load 'networksTerr.mat'
[failuresNDi_Terr] = simFailNDi(A_Terr,n_Terr,networkParamsTerr,1,0);
clearvars -except failuresNDi_Terr
save 'failuresNDi_Terr.mat'
clear

load 'networksTerr.mat'
[failuresNDr_Terr] = simFailNDr(A_Terr,n_Terr,networkParamsTerr,1,0);
clearvars -except failuresNDr_Terr
save 'failuresNDr_Terr.mat'
clear

load 'networksTerr.mat'
[Cb_Terr,CbMean_Terr]=calcBetweenness(A_Terr,n_Terr,networkParamsTerr);
[failuresNBi_Terr] = simFailNBi(Cb_Terr,n_Terr,networkParamsTerr,1,0);
clearvars -except failuresNBi_Terr
save 'failuresNBi_Terr.mat'
clear

load 'networksTerr.mat'
[Cb_Terr,CbMean_Terr]=calcBetweenness(A_Terr,n_Terr,networkParamsTerr);
[failuresNBr_Terr] = simFailNBr(A_Terr,n_Terr,Cb_Terr,networkParamsTerr,1,0);
clearvars -except failuresNBr_Terr
save 'failuresNBr_Terr.mat'
clear



load 'networksEcoUCv2.mat'
[failuresNDi_EcoUC] = simFailNDi(A_EcoUC,n_EcoUC,networkParamsEcoUC,1,0);
clearvars -except failuresNDi_EcoUC
save 'failuresNDi_EcoUC.mat'
clear

load 'networksEcoUCv2.mat'
[failuresNDr_EcoUC] = simFailNDr(A_EcoUC,n_EcoUC,networkParamsEcoUC,1,0);
clearvars -except failuresNDr_EcoUC
save 'failuresNDr_EcoUC.mat'
clear

load 'networksEcoUCv2.mat'
[Cb_EcoUC,CbMean_EcoUC]=calcBetweenness(A_EcoUC,n_EcoUC,networkParamsEcoUC);
[failuresNBi_EcoUC] = simFailNBi(Cb_EcoUC,n_EcoUC,networkParamsEcoUC,1,0);
clearvars -except failuresNBi_EcoUC
save 'failuresNBi_EcoUC.mat'
clear

load 'networksEcoUCv2.mat'
[Cb_EcoUC,CbMean_EcoUC]=calcBetweenness(A_EcoUC,n_EcoUC,networkParamsEcoUC);
[failuresNBr_EcoUC] = simFailNBr(A_EcoUC,n_EcoUC,Cb_EcoUC,networkParamsEcoUC,1,0);
clearvars -except failuresNBr_EcoUC
save 'failuresNBr_EcoUC.mat'
clear
