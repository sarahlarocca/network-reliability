cd networks/
load networksYthan.mat
cd ../
load failuresNDi_Ythan.mat
calcLCC(1,1,1:100,A_Ythan,n_Ythan,failuresNDi_Ythan,'NDi_Ythan_')
clear

cd networks/
load networksYthan.mat
cd ../
load failuresNDr_Ythan.mat
calcLCC(1,1,1:100,A_Ythan,n_Ythan,failuresNDr_Ythan,'NDr_Ythan_')
clear

cd networks/
load networksYthan.mat
cd ../
load failuresNBi_Ythan.mat
calcLCC(1,1,1:100,A_Ythan,n_Ythan,failuresNBi_Ythan,'NBi_Ythan_')
clear

cd networks/
load networksYthan.mat
cd ../
load failuresNBr_Ythan.mat
calcLCC(1,1,1,A_Ythan,n_Ythan,failuresNBr_Ythan,'NBr_Ythan_')
clear

cd networks/
load networksTerr.mat
cd ../
load failuresNR_Terr.mat
calcLCC(1,1,1:100,A_Terr,n_Terr,failuresNR_Terr,'NR_Terr_')
clear

cd networks/
load networksTerr.mat
cd ../
load failuresNDi_Terr.mat
calcLCC(1,1,1:100,A_Terr,n_Terr,failuresNDi_Terr,'NDi_Terr_')
clear

cd networks/
load networksTerr.mat
cd ../
load failuresNDr_Terr.mat
calcLCC(1,1,1:100,A_Terr,n_Terr,failuresNDr_Terr,'NDr_Terr_')
clear

cd networks/
load networksTerr.mat
cd ../
load failuresNBi_Terr.mat
calcLCC(1,1,1:100,A_Terr,n_Terr,failuresNBi_Terr,'NBi_Terr_')
clear

cd networks/
load networksTerr.mat
cd ../
load failuresNBr_Terr.mat
calcLCC(1,1,1,A_Terr,n_Terr,failuresNBr_Terr,'NBr_Terr_')
clear

cd networks/
load networksEco.mat
cd ../
load failuresNR_Eco.mat
calcLCC(1,1,1:100,A_Eco,n_Eco,failuresNR_Eco,'NR_Eco_')
clear

cd networks/
load networksEco.mat
cd ../
load failuresNDi_Eco.mat
calcLCC(1,1,1:100,A_Eco,n_Eco,failuresNDi_Eco,'NDi_Eco_')
clear

cd networks/
load networksEco.mat
cd ../
load failuresNDr_Eco.mat
calcLCC(1,1,1:100,A_Eco,n_Eco,failuresNDr_Eco,'NDr_Eco_')
clear

cd networks/
load networksEco.mat
cd ../
load failuresNBi_Eco.mat
calcLCC(1,1,1:100,A_Eco,n_Eco,failuresNBi_Eco,'NBi_Eco_')
clear

cd networks/
load networksEco.mat
cd ../
load failuresNBr_Eco.mat
calcLCC(1,1,1,A_Eco,n_Eco,failuresNBr_Eco,'NBr_Eco_')
clear



cd networks/
load networksEcoUndir_connect.mat
cd ../
load failuresNR_ecoUndir_connect.mat
calcLCC(1,1,1:100,A_ecoUndir_connect,n_ecoUndir_connect,failuresNR_ecoUndir_connect,'NR_ecoUndir_connect_')
clear
