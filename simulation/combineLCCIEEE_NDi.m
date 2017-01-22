cd LCC_NDr

S1Ythan_NDr = zeros(100,1);
S10Ythan_NDr = zeros(100,1);
S25Ythan_NDr = zeros(100,1);
S50Ythan_NDr = zeros(100,1);
S75Ythan_NDr = zeros(100,1);

numDisconnect1Ythan_NDr = zeros(100,1);
numDisconnect10Ythan_NDr = zeros(100,1);
numDisconnect25Ythan_NDr = zeros(100,1);
numDisconnect50Ythan_NDr = zeros(100,1);
numDisconnect75Ythan_NDr = zeros(100,1);

t = 1;

for i = 1:1
    for j = 1:1
        for k = 1:100
            fileName = strcat('LCC_NDr_Ythan_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1Ythan_NDr(t) = sizeS(1);
            S10Ythan_NDr(t) = sizeS(2);
            S25Ythan_NDr(t) = sizeS(3);
            S50Ythan_NDr(t) = sizeS(4);
            S75Ythan_NDr(t) = sizeS(5);
            
            numDisconnect1Ythan_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10Ythan_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25Ythan_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50Ythan_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75Ythan_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1Ythan_NDr S10Ythan_NDr S25Ythan_NDr S50Ythan_NDr S75Ythan_NDr numDisconnect1Ythan_NDr numDisconnect10Ythan_NDr numDisconnect25Ythan_NDr numDisconnect50Ythan_NDr numDisconnect75Ythan_NDr
            
            t = t + 1;
        end
    end
end

clear t i j k

cd ../

save 'LCC_Ythan_NDr.mat'
