load 'LCC_NBi.mat'
load 'size.mat'

S1Data_NBi = zeros(2000,1);
S10Data_NBi = zeros(2000,1);
S25Data_NBi = zeros(2000,1);
S50Data_NBi = zeros(2000,1);
S75Data_NBi = zeros(2000,1);

Srel1Data_NBi = zeros(2000,1);
Srel10Data_NBi = zeros(2000,1);
Srel25Data_NBi = zeros(2000,1);
Srel50Data_NBi = zeros(2000,1);
Srel75Data_NBi = zeros(2000,1);

numDisconnect1Data_NBi = zeros(2000,1);
numDisconnect10Data_NBi = zeros(2000,1);
numDisconnect25Data_NBi = zeros(2000,1);
numDisconnect50Data_NBi = zeros(2000,1);
numDisconnect75Data_NBi = zeros(2000,1);

t = 1;

for i = 1:100:199901
    
    S1Data_NBi(t) = mean(S1_NBi(i:i+99));
    S10Data_NBi(t) = mean(S10_NBi(i:i+99));
    S25Data_NBi(t) = mean(S25_NBi(i:i+99));
    S50Data_NBi(t) = mean(S50_NBi(i:i+99));
    S75Data_NBi(t) = mean(S75_NBi(i:i+99));
    
    Srel1Data_NBi(t) = mean(S1_NBi(i:i+99))/nData(t);
    Srel10Data_NBi(t) = mean(S10_NBi(i:i+99))/nData(t);
    Srel25Data_NBi(t) = mean(S25_NBi(i:i+99))/nData(t);
    Srel50Data_NBi(t) = mean(S50_NBi(i:i+99))/nData(t);
    Srel75Data_NBi(t) = mean(S75_NBi(i:i+99))/nData(t);
    
    numDisconnect1Data_NBi(t) = mean(numDisconnect1_NBi(i:i+99));
    numDisconnect10Data_NBi(t) = mean(numDisconnect10_NBi(i:i+99));
    numDisconnect25Data_NBi(t) = mean(numDisconnect25_NBi(i:i+99));
    numDisconnect50Data_NBi(t) = mean(numDisconnect50_NBi(i:i+99));
    numDisconnect75Data_NBi(t) = mean(numDisconnect75_NBi(i:i+99));
    
    t = t + 1;
end

