cd /media/files/jhu/infrastructure/networks2012/realNetworks/data/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load LCC_NDi_Ythan_1_1_1.mat

S1Ythan_NDi = sizeS(1);
S10Ythan_NDi = sizeS(2);
S25Ythan_NDi = sizeS(3);
S50Ythan_NDi = sizeS(4);
S75Ythan_NDi = sizeS(5);

numDisconnect1Ythan_NDi = length(disconnectedComponents{1}) - 1;
numDisconnect10Ythan_NDi = length(disconnectedComponents{2}) - 1;
numDisconnect25Ythan_NDi = length(disconnectedComponents{3}) - 1;
numDisconnect50Ythan_NDi = length(disconnectedComponents{4}) - 1;
numDisconnect75Ythan_NDi = length(disconnectedComponents{5}) - 1;

clear sizeS S disconnectedComponents
save 'LCC_Ythan_NDi.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load LCC_NDr_Ythan_1_1_1.mat

S1Ythan_NDr = sizeS(1);
S10Ythan_NDr = sizeS(2);
S25Ythan_NDr = sizeS(3);
S50Ythan_NDr = sizeS(4);
S75Ythan_NDr = sizeS(5);

numDisconnect1Ythan_NDr = length(disconnectedComponents{1}) - 1;
numDisconnect10Ythan_NDr = length(disconnectedComponents{2}) - 1;
numDisconnect25Ythan_NDr = length(disconnectedComponents{3}) - 1;
numDisconnect50Ythan_NDr = length(disconnectedComponents{4}) - 1;
numDisconnect75Ythan_NDr = length(disconnectedComponents{5}) - 1;

clear sizeS S disconnectedComponents
save 'LCC_Ythan_NDr.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load LCC_NBi_Ythan_1_1_1.mat

S1Ythan_NBi = sizeS(1);
S10Ythan_NBi = sizeS(2);
S25Ythan_NBi = sizeS(3);
S50Ythan_NBi = sizeS(4);
S75Ythan_NBi = sizeS(5);

numDisconnect1Ythan_NBi = length(disconnectedComponents{1}) - 1;
numDisconnect10Ythan_NBi = length(disconnectedComponents{2}) - 1;
numDisconnect25Ythan_NBi = length(disconnectedComponents{3}) - 1;
numDisconnect50Ythan_NBi = length(disconnectedComponents{4}) - 1;
numDisconnect75Ythan_NBi = length(disconnectedComponents{5}) - 1;

clear sizeS S disconnectedComponents
save 'LCC_Ythan_NBi.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load LCC_NBr_Ythan_1_1_1.mat

S1Ythan_NBr = sizeS(1);
S10Ythan_NBr = sizeS(2);
S25Ythan_NBr = sizeS(3);
S50Ythan_NBr = sizeS(4);
S75Ythan_NBr = sizeS(5);

numDisconnect1Ythan_NBr = length(disconnectedComponents{1}) - 1;
numDisconnect10Ythan_NBr = length(disconnectedComponents{2}) - 1;
numDisconnect25Ythan_NBr = length(disconnectedComponents{3}) - 1;
numDisconnect50Ythan_NBr = length(disconnectedComponents{4}) - 1;
numDisconnect75Ythan_NBr = length(disconnectedComponents{5}) - 1;

clear sizeS S disconnectedComponents
save 'LCC_Ythan_NBr.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load LCC_NDi_EcoUC_1_1_1.mat

S1EcoUC_NDi = sizeS(1);
S10EcoUC_NDi = sizeS(2);
S25EcoUC_NDi = sizeS(3);
S50EcoUC_NDi = sizeS(4);
S75EcoUC_NDi = sizeS(5);

numDisconnect1EcoUC_NDi = length(disconnectedComponents{1}) - 1;
numDisconnect10EcoUC_NDi = length(disconnectedComponents{2}) - 1;
numDisconnect25EcoUC_NDi = length(disconnectedComponents{3}) - 1;
numDisconnect50EcoUC_NDi = length(disconnectedComponents{4}) - 1;
numDisconnect75EcoUC_NDi = length(disconnectedComponents{5}) - 1;

clear sizeS S disconnectedComponents
save 'LCC_EcoUC_NDi.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load LCC_NDr_EcoUC_1_1_1.mat

S1EcoUC_NDr = sizeS(1);
S10EcoUC_NDr = sizeS(2);
S25EcoUC_NDr = sizeS(3);
S50EcoUC_NDr = sizeS(4);
S75EcoUC_NDr = sizeS(5);

numDisconnect1EcoUC_NDr = length(disconnectedComponents{1}) - 1;
numDisconnect10EcoUC_NDr = length(disconnectedComponents{2}) - 1;
numDisconnect25EcoUC_NDr = length(disconnectedComponents{3}) - 1;
numDisconnect50EcoUC_NDr = length(disconnectedComponents{4}) - 1;
numDisconnect75EcoUC_NDr = length(disconnectedComponents{5}) - 1;

clear sizeS S disconnectedComponents
save 'LCC_EcoUC_NDr.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load LCC_NBi_EcoUC_1_1_1.mat

S1EcoUC_NBi = sizeS(1);
S10EcoUC_NBi = sizeS(2);
S25EcoUC_NBi = sizeS(3);
S50EcoUC_NBi = sizeS(4);
S75EcoUC_NBi = sizeS(5);

numDisconnect1EcoUC_NBi = length(disconnectedComponents{1}) - 1;
numDisconnect10EcoUC_NBi = length(disconnectedComponents{2}) - 1;
numDisconnect25EcoUC_NBi = length(disconnectedComponents{3}) - 1;
numDisconnect50EcoUC_NBi = length(disconnectedComponents{4}) - 1;
numDisconnect75EcoUC_NBi = length(disconnectedComponents{5}) - 1;

clear sizeS S disconnectedComponents
save 'LCC_EcoUC_NBi.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load LCC_NBr_EcoUC_1_1_1.mat

S1EcoUC_NBr = sizeS(1);
S10EcoUC_NBr = sizeS(2);
S25EcoUC_NBr = sizeS(3);
S50EcoUC_NBr = sizeS(4);
S75EcoUC_NBr = sizeS(5);

numDisconnect1EcoUC_NBr = length(disconnectedComponents{1}) - 1;
numDisconnect10EcoUC_NBr = length(disconnectedComponents{2}) - 1;
numDisconnect25EcoUC_NBr = length(disconnectedComponents{3}) - 1;
numDisconnect50EcoUC_NBr = length(disconnectedComponents{4}) - 1;
numDisconnect75EcoUC_NBr = length(disconnectedComponents{5}) - 1;

clear sizeS S disconnectedComponents
save 'LCC_EcoUC_NBr.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load LCC_NDi_Terr_1_1_1.mat

S1Terr_NDi = sizeS(1);
S10Terr_NDi = sizeS(2);
S25Terr_NDi = sizeS(3);
S50Terr_NDi = sizeS(4);
S75Terr_NDi = sizeS(5);

numDisconnect1Terr_NDi = length(disconnectedComponents{1}) - 1;
numDisconnect10Terr_NDi = length(disconnectedComponents{2}) - 1;
numDisconnect25Terr_NDi = length(disconnectedComponents{3}) - 1;
numDisconnect50Terr_NDi = length(disconnectedComponents{4}) - 1;
numDisconnect75Terr_NDi = length(disconnectedComponents{5}) - 1;

clear sizeS S disconnectedComponents
save 'LCC_Terr_NDi.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load LCC_NDr_Terr_1_1_1.mat

S1Terr_NDr = sizeS(1);
S10Terr_NDr = sizeS(2);
S25Terr_NDr = sizeS(3);
S50Terr_NDr = sizeS(4);
S75Terr_NDr = sizeS(5);

numDisconnect1Terr_NDr = length(disconnectedComponents{1}) - 1;
numDisconnect10Terr_NDr = length(disconnectedComponents{2}) - 1;
numDisconnect25Terr_NDr = length(disconnectedComponents{3}) - 1;
numDisconnect50Terr_NDr = length(disconnectedComponents{4}) - 1;
numDisconnect75Terr_NDr = length(disconnectedComponents{5}) - 1;

clear sizeS S disconnectedComponents
save 'LCC_Terr_NDr.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load LCC_NBi_Terr_1_1_1.mat

S1Terr_NBi = sizeS(1);
S10Terr_NBi = sizeS(2);
S25Terr_NBi = sizeS(3);
S50Terr_NBi = sizeS(4);
S75Terr_NBi = sizeS(5);

numDisconnect1Terr_NBi = length(disconnectedComponents{1}) - 1;
numDisconnect10Terr_NBi = length(disconnectedComponents{2}) - 1;
numDisconnect25Terr_NBi = length(disconnectedComponents{3}) - 1;
numDisconnect50Terr_NBi = length(disconnectedComponents{4}) - 1;
numDisconnect75Terr_NBi = length(disconnectedComponents{5}) - 1;

clear sizeS S disconnectedComponents
save 'LCC_Terr_NBi.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load LCC_NBr_Terr_1_1_1.mat

S1Terr_NBr = sizeS(1);
S10Terr_NBr = sizeS(2);
S25Terr_NBr = sizeS(3);
S50Terr_NBr = sizeS(4);
S75Terr_NBr = sizeS(5);

numDisconnect1Terr_NBr = length(disconnectedComponents{1}) - 1;
numDisconnect10Terr_NBr = length(disconnectedComponents{2}) - 1;
numDisconnect25Terr_NBr = length(disconnectedComponents{3}) - 1;
numDisconnect50Terr_NBr = length(disconnectedComponents{4}) - 1;
numDisconnect75Terr_NBr = length(disconnectedComponents{5}) - 1;

clear sizeS S disconnectedComponents
save 'LCC_Terr_NBr.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%