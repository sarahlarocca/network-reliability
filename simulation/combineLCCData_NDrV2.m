load 'LCCdata_NDr.mat'
load 'size.mat'

S1Data_NDr = zeros(2000,1);
S10Data_NDr = zeros(2000,1);
S25Data_NDr = zeros(2000,1);
S50Data_NDr = zeros(2000,1);
S75Data_NDr = zeros(2000,1);

numDisconnect1Data_NDr = zeros(2000,1);
numDisconnect10Data_NDr = zeros(2000,1);
numDisconnect25Data_NDr = zeros(2000,1);
numDisconnect50Data_NDr = zeros(2000,1);
numDisconnect75Data_NDr = zeros(2000,1);

t = 1;

for i = 1:100:199901
    
    S1Data_NDr(t) = mean(S1_NDr_full(i:i+99));
    S10Data_NDr(t) = mean(S10_NDr_full(i:i+99));
    S25Data_NDr(t) = mean(S25_NDr_full(i:i+99));
    S50Data_NDr(t) = mean(S50_NDr_full(i:i+99));
    S75Data_NDr(t) = mean(S75_NDr_full(i:i+99));
    
    numDisconnect1Data_NDr(t) = mean(numDisconnect1_NDr_full(i:i+99));
    numDisconnect10Data_NDr(t) = mean(numDisconnect10_NDr_full(i:i+99));
    numDisconnect25Data_NDr(t) = mean(numDisconnect25_NDr_full(i:i+99));
    numDisconnect50Data_NDr(t) = mean(numDisconnect50_NDr_full(i:i+99));
    numDisconnect75Data_NDr(t) = mean(numDisconnect75_NDr_full(i:i+99));
    
    t = t + 1;
end

