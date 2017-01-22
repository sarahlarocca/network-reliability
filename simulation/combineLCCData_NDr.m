load 'LCC_NDr.mat'
load 'size.mat'

S1Data_NDr = zeros(2000,1);
S10Data_NDr = zeros(2000,1);
S25Data_NDr = zeros(2000,1);
S50Data_NDr = zeros(2000,1);
S75Data_NDr = zeros(2000,1);

Srel1Data_NDr = zeros(2000,1);
Srel10Data_NDr = zeros(2000,1);
Srel25Data_NDr = zeros(2000,1);
Srel50Data_NDr = zeros(2000,1);
Srel75Data_NDr = zeros(2000,1);

numDisconnect1Data_NDr = zeros(2000,1);
numDisconnect10Data_NDr = zeros(2000,1);
numDisconnect25Data_NDr = zeros(2000,1);
numDisconnect50Data_NDr = zeros(2000,1);
numDisconnect75Data_NDr = zeros(2000,1);

t = 1;

for i = 1:100:199901
    
    S1Data_NDr(t) = mean(S1_NDr(i:i+99));
    S10Data_NDr(t) = mean(S10_NDr(i:i+99));
    S25Data_NDr(t) = mean(S25_NDr(i:i+99));
    S50Data_NDr(t) = mean(S50_NDr(i:i+99));
    S75Data_NDr(t) = mean(S75_NDr(i:i+99));
    
    Srel1Data_NDr(t) = mean(S1_NDr(i:i+99))/nData(t);
    Srel10Data_NDr(t) = mean(S10_NDr(i:i+99))/nData(t);
    Srel25Data_NDr(t) = mean(S25_NDr(i:i+99))/nData(t);
    Srel50Data_NDr(t) = mean(S50_NDr(i:i+99))/nData(t);
    Srel75Data_NDr(t) = mean(S75_NDr(i:i+99))/nData(t);
    
    numDisconnect1Data_NDr(t) = mean(numDisconnect1_NDr(i:i+99));
    numDisconnect10Data_NDr(t) = mean(numDisconnect10_NDr(i:i+99));
    numDisconnect25Data_NDr(t) = mean(numDisconnect25_NDr(i:i+99));
    numDisconnect50Data_NDr(t) = mean(numDisconnect50_NDr(i:i+99));
    numDisconnect75Data_NDr(t) = mean(numDisconnect75_NDr(i:i+99));
    
    t = t + 1;
end

