load 'LCC.mat'
load 'size.mat'

S1Data = zeros(2000,1);
S10Data = zeros(2000,1);
S25Data = zeros(2000,1);
S50Data = zeros(2000,1);
S75Data = zeros(2000,1);

Srel1Data = zeros(2000,1);
Srel10Data = zeros(2000,1);
Srel25Data = zeros(2000,1);
Srel50Data = zeros(2000,1);
Srel75Data = zeros(2000,1);

numDisconnect1Data = zeros(2000,1);
numDisconnect10Data = zeros(2000,1);
numDisconnect25Data = zeros(2000,1);
numDisconnect50Data = zeros(2000,1);
numDisconnect75Data = zeros(2000,1);

t = 1;

for i = 1:100:199901
    
    S1Data(t) = mean(S1(i:i+99));
    S10Data(t) = mean(S10(i:i+99));
    S25Data(t) = mean(S25(i:i+99));
    S50Data(t) = mean(S50(i:i+99));
    S75Data(t) = mean(S75(i:i+99));
    
    Srel1Data(t) = mean(S1(i:i+99))/nData(t);
    Srel10Data(t) = mean(S10(i:i+99))/nData(t);
    Srel25Data(t) = mean(S25(i:i+99))/nData(t);
    Srel50Data(t) = mean(S50(i:i+99))/nData(t);
    Srel75Data(t) = mean(S75(i:i+99))/nData(t);
    
    numDisconnect1Data(t) = mean(numDisconnect1(i:i+99));
    numDisconnect10Data(t) = mean(numDisconnect10(i:i+99));
    numDisconnect25Data(t) = mean(numDisconnect25(i:i+99));
    numDisconnect50Data(t) = mean(numDisconnect50(i:i+99));
    numDisconnect75Data(t) = mean(numDisconnect75(i:i+99));
    
    t = t + 1;
end

