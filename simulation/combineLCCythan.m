cd LCC

S1Ythan = zeros(100,1);
S10Ythan = zeros(100,1);
S25Ythan = zeros(100,1);
S50Ythan = zeros(100,1);
S75Ythan = zeros(100,1);

numDisconnect1Ythan = zeros(100,1);
numDisconnect10Ythan = zeros(100,1);
numDisconnect25Ythan = zeros(100,1);
numDisconnect50Ythan = zeros(100,1);
numDisconnect75Ythan = zeros(100,1);

t = 1;

for i = 1:1
    for j = 1:1
        for k = 1:100
            fileName = strcat('LCC_Ythan_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1Ythan(t) = sizeS(1);
            S10Ythan(t) = sizeS(2);
            S25Ythan(t) = sizeS(3);
            S50Ythan(t) = sizeS(4);
            S75Ythan(t) = sizeS(5);
            
            numDisconnect1Ythan(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10Ythan(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25Ythan(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50Ythan(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75Ythan(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1Ythan S10Ythan S25Ythan S50Ythan S75Ythan numDisconnect1Ythan numDisconnect10Ythan numDisconnect25Ythan numDisconnect50Ythan numDisconnect75Ythan
            
            t = t + 1;
        end
    end
end