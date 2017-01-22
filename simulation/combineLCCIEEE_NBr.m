cd LCC_NBr

S1Ythan_NBr = zeros(1,1);
S10Ythan_NBr = zeros(1,1);
S25Ythan_NBr = zeros(1,1);
S50Ythan_NBr = zeros(1,1);
S75Ythan_NBr = zeros(1,1);

numDisconnect1Ythan_NBr = zeros(1,1);
numDisconnect10Ythan_NBr = zeros(1,1);
numDisconnect25Ythan_NBr = zeros(1,1);
numDisconnect50Ythan_NBr = zeros(1,1);
numDisconnect75Ythan_NBr = zeros(1,1);

t = 1;

for i = 1:1
    for j = 1:1
        for k = 1:1
            fileName = strcat('LCC_NBr_Ythan_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1Ythan_NBr(t) = sizeS(1);
            S10Ythan_NBr(t) = sizeS(2);
            S25Ythan_NBr(t) = sizeS(3);
            S50Ythan_NBr(t) = sizeS(4);
            S75Ythan_NBr(t) = sizeS(5);
            
            numDisconnect1Ythan_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10Ythan_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25Ythan_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50Ythan_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75Ythan_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1Ythan_NBr S10Ythan_NBr S25Ythan_NBr S50Ythan_NBr S75Ythan_NBr numDisconnect1Ythan_NBr numDisconnect10Ythan_NBr numDisconnect25Ythan_NBr numDisconnect50Ythan_NBr numDisconnect75Ythan_NBr
            
            t = t + 1;
        end
    end
end

clear t i j k

cd ../

save 'LCC_Ythan_NBr.mat'
