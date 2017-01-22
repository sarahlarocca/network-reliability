addpath('/media/files/jhu/infrastructure/networks2012/realNetworks/')
addpath('/media/files/jhu/infrastructure/networks2012/realNetworks/data/')
addpath('/media/files/jhu/infrastructure/networks2012/matlabCode/')

load networksYthan.mat
load failuresNDi_Ythan.mat
calcLCC(1,1,1,A_Ythan,n_Ythan,failuresNDi_Ythan,'NDi_Ythan_')
clear

load networksYthan.mat
load failuresNDr_Ythan.mat
calcLCC(1,1,1,A_Ythan,n_Ythan,failuresNDr_Ythan,'NDr_Ythan_')
clear

load networksYthan.mat
load failuresNBi_Ythan.mat
calcLCC(1,1,1,A_Ythan,n_Ythan,failuresNBi_Ythan,'NBi_Ythan_')
clear

load networksYthan.mat
load failuresNBr_Ythan.mat
calcLCC(1,1,1,A_Ythan,n_Ythan,failuresNBr_Ythan,'NBr_Ythan_')
clear



load networksTerr.mat
load failuresNDi_Terr.mat
calcLCC(1,1,1,A_Terr,n_Terr,failuresNDi_Terr,'NDi_Terr_')
clear

load networksTerr.mat
load failuresNDr_Terr.mat
calcLCC(1,1,1,A_Terr,n_Terr,failuresNDr_Terr,'NDr_Terr_')
clear

load networksTerr.mat
load failuresNBi_Terr.mat
calcLCC(1,1,1,A_Terr,n_Terr,failuresNBi_Terr,'NBi_Terr_')
clear

load networksTerr.mat
load failuresNBr_Terr.mat
calcLCC(1,1,1,A_Terr,n_Terr,failuresNBr_Terr,'NBr_Terr_')
clear



load networksEcoUCv2.mat
load failuresNDi_EcoUC.mat
calcLCC(1,1,1,A_EcoUC,n_EcoUC,failuresNDi_EcoUC,'NDi_EcoUC_')
clear

load networksEcoUCv2.mat
load failuresNDr_EcoUC.mat
calcLCC(1,1,1,A_EcoUC,n_EcoUC,failuresNDr_EcoUC,'NDr_EcoUC_')
clear

load networksEcoUCv2.mat
load failuresNBi_EcoUC.mat
calcLCC(1,1,1,A_EcoUC,n_EcoUC,failuresNBi_EcoUC,'NBi_EcoUC_')
clear

load networksEcoUCv2.mat
load failuresNBr_EcoUC.mat
calcLCC(1,1,1,A_EcoUC,n_EcoUC,failuresNBr_EcoUC,'NBr_EcoUC_')
clear
