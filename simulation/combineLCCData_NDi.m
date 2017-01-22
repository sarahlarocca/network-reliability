load 'LCC_NDi.mat'
load 'size.mat'

S1Data_NDi = zeros(2000,1);
S10Data_NDi = zeros(2000,1);
S25Data_NDi = zeros(2000,1);
S50Data_NDi = zeros(2000,1);
S75Data_NDi = zeros(2000,1);

Srel1Data_NDi = zeros(2000,1);
Srel10Data_NDi = zeros(2000,1);
Srel25Data_NDi = zeros(2000,1);
Srel50Data_NDi = zeros(2000,1);
Srel75Data_NDi = zeros(2000,1);

numDisconnect1Data_NDi = zeros(2000,1);
numDisconnect10Data_NDi = zeros(2000,1);
numDisconnect25Data_NDi = zeros(2000,1);
numDisconnect50Data_NDi = zeros(2000,1);
numDisconnect75Data_NDi = zeros(2000,1);

t = 1;

for i = 1:100:199901
    
    S1Data_NDi(t) = mean(S1_NDi(i:i+99));
    S10Data_NDi(t) = mean(S10_NDi(i:i+99));
    S25Data_NDi(t) = mean(S25_NDi(i:i+99));
    S50Data_NDi(t) = mean(S50_NDi(i:i+99));
    S75Data_NDi(t) = mean(S75_NDi(i:i+99));
    
    Srel1Data_NDi(t) = mean(S1_NDi(i:i+99))/nData(t);
    Srel10Data_NDi(t) = mean(S10_NDi(i:i+99))/nData(t);
    Srel25Data_NDi(t) = mean(S25_NDi(i:i+99))/nData(t);
    Srel50Data_NDi(t) = mean(S50_NDi(i:i+99))/nData(t);
    Srel75Data_NDi(t) = mean(S75_NDi(i:i+99))/nData(t);
    
    numDisconnect1Data_NDi(t) = mean(numDisconnect1_NDi(i:i+99));
    numDisconnect10Data_NDi(t) = mean(numDisconnect10_NDi(i:i+99));
    numDisconnect25Data_NDi(t) = mean(numDisconnect25_NDi(i:i+99));
    numDisconnect50Data_NDi(t) = mean(numDisconnect50_NDi(i:i+99));
    numDisconnect75Data_NDi(t) = mean(numDisconnect75_NDi(i:i+99));
    
    t = t + 1;
end

