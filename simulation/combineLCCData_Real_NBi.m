load 'LCC_Ythan_NBr.mat'

S1Data_NBr = mean(S1Ythan_NBr);
S10Data_NBr = mean(S10Ythan_NBr);
S25Data_NBr = mean(S25Ythan_NBr);
S50Data_NBr = mean(S50Ythan_NBr);
S75Data_NBr = mean(S75Ythan_NBr);

numDisconnect1Data_NBr = mean(numDisconnect1Ythan_NBr);
numDisconnect10Data_NBr = mean(numDisconnect10Ythan_NBr);
numDisconnect25Data_NBr = mean(numDisconnect25Ythan_NBr);
numDisconnect50Data_NBr = mean(numDisconnect50Ythan_NBr);
numDisconnect75Data_NBr = mean(numDisconnect75Ythan_NBr);

clearvars -except S1Data_NBr S10Data_NBr S25Data_NBr S50Data_NBr S75Data_NBr numDisconnect1Data_NBr numDisconnect10Data_NBr numDisconnect25Data_NBr numDisconnect50Data_NBr numDisconnect75Data_NBr

save 'LCCdata_Ythan_NBr.mat'
