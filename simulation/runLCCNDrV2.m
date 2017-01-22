addpath('/media/files/jhu/infrastructure/networks2012/matlabCode/')
addpath('/media/files/jhu/infrastructure/networks2012/data/networks/')
addpath('/media/files/jhu/infrastructure/networks2012/data/failures/')
cd /media/files/jhu/infrastructure/networks2012/data/LCC/


load networksA500.mat
load failuresNDr_A500.mat
calcLCC(1:10,1:20,1:100,A_A500,n_A500,failuresNDr_A500,'NDr_A500_')
clear

load networksA700.mat
load failuresNDr_A700.mat
calcLCC(1:5,1:20,1:100,A_A700,n_A700,failuresNDr_A700,'NDr_A700_')
clear

load networksA900.mat
load failuresNDr_A900.mat
calcLCC(1:2,1:20,1:100,A_A900,n_A900,failuresNDr_A900,'NDr_A900_')
clear

load networksA950.mat
load failuresNDr_A950.mat
calcLCC(1:1,1:20,1:100,A_A950,n_A950,failuresNDr_A950,'NDr_A950_')
clear

load networksA975.mat
load failuresNDr_A975.mat
calcLCC(1:1,1:20,1:100,A_A975,n_A975,failuresNDr_A975,'NDr_A975_')
clear

load networksA1000.mat
load failuresNDr_A1000.mat
calcLCC(1:1,1:20,1:100,A_A1000,n_A1000,failuresNDr_A1000,'NDr_A1000_')
clear

load networksB500.mat
load failuresNDr_B500.mat
calcLCC(8:10,1:20,1:100,A_B500,n_B500,failuresNDr_B500,'NDr_B500_')
clear

load networksB700.mat
load failuresNDr_B700.mat
calcLCC(1:5,1:20,1:100,A_B700,n_B700,failuresNDr_B700,'NDr_B700_')
clear

load networksB1000.mat
load failuresNDr_B1000.mat
calcLCC(2:5,1:20,1:100,A_B1000,n_B1000,failuresNDr_B1000,'NDr_B1000_')
clear

load networksC500.mat
load failuresNDr_C500.mat
calcLCC(8:10,1:20,1:100,A_C500,n_C500,failuresNDr_C500,'NDr_C500_')
clear

load networksC700.mat
load failuresNDr_C700.mat
calcLCC(1:5,1:20,1:100,A_C700,n_C700,failuresNDr_C700,'NDr_C700_')
clear

load networksC900.mat
load failuresNDr_C900.mat
calcLCC(1:2,1:20,1:100,A_C900,n_C900,failuresNDr_C900,'NDr_C900_')
clear

load networksC950.mat
load failuresNDr_C950.mat
calcLCC(1:1,1:20,1:100,A_C950,n_C950,failuresNDr_C950,'NDr_C950_')
clear

load networksC975.mat
load failuresNDr_C975.mat
calcLCC(1:1,1:20,1:100,A_C975,n_C975,failuresNDr_C975,'NDr_C975_')
clear

load networksC1000.mat
load failuresNDr_C1000.mat
calcLCC(1:1,1:20,1:100,A_C1000,n_C1000,failuresNDr_C1000,'NDr_C1000_')
clear

load networksD500.mat
load failuresNDr_D500.mat
calcLCC(1:10,1:20,1:100,A_D500,n_D500,failuresNDr_D500,'NDr_D500_')
clear

load networksD700.mat
load failuresNDr_D700.mat
calcLCC(1:5,1:20,1:100,A_D700,n_D700,failuresNDr_D700,'NDr_D700_')
clear

load networksD900.mat
load failuresNDr_D900.mat
calcLCC(1:2,1:20,1:100,A_D900,n_D900,failuresNDr_D900,'NDr_D900_')
clear

load networksD950.mat
load failuresNDr_D950.mat
calcLCC(1:1,1:20,1:100,A_D950,n_D950,failuresNDr_D950,'NDr_D950_')
clear

load networksD975.mat
load failuresNDr_D975.mat
calcLCC(1:1,1:20,1:100,A_D975,n_D975,failuresNDr_D975,'NDr_D975_')
clear

load networksD1000.mat
load failuresNDr_D1000.mat
calcLCC(1:1,1:20,1:100,A_D1000,n_D1000,failuresNDr_D1000,'NDr_D1000_')
clear

load networksE500.mat
load failuresNDr_E500.mat
calcLCC(1:10,1:20,1:100,A_E500,n_E500,failuresNDr_E500,'NDr_E500_')
clear

load networksE700.mat
load failuresNDr_E700.mat
calcLCC(1:5,1:20,1:100,A_E700,n_E700,failuresNDr_E700,'NDr_E700_')
clear

load networksE900.mat
load failuresNDr_E900.mat
calcLCC(1:2,1:20,1:100,A_E900,n_E900,failuresNDr_E900,'NDr_E900_')
clear

load networksE950.mat
load failuresNDr_E950.mat
calcLCC(1:1,1:20,1:100,A_E950,n_E950,failuresNDr_E950,'NDr_E950_')
clear

load networksE975.mat
load failuresNDr_E975.mat
calcLCC(1:1,1:20,1:100,A_E975,n_E975,failuresNDr_E975,'NDr_E975_')
clear

load networksE1000.mat
load failuresNDr_E1000.mat
calcLCC(1:1,1:20,1:100,A_E1000,n_E1000,failuresNDr_E1000,'NDr_E1000_')
clear
