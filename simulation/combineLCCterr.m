cd LCC

S1Eco = zeros(100,1);
S10Eco = zeros(100,1);
S25Eco = zeros(100,1);
S50Eco = zeros(100,1);
S75Eco = zeros(100,1);

numDisconnect1Eco = zeros(100,1);
numDisconnect10Eco = zeros(100,1);
numDisconnect25Eco = zeros(100,1);
numDisconnect50Eco = zeros(100,1);
numDisconnect75Eco = zeros(100,1);

t = 1;

for i = 1:1
    for j = 1:1
        for k = 1:100
            fileName = strcat('LCC_NR_Eco_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1Eco(t) = sizeS(1);
            S10Eco(t) = sizeS(2);
            S25Eco(t) = sizeS(3);
            S50Eco(t) = sizeS(4);
            S75Eco(t) = sizeS(5);
            
            numDisconnect1Eco(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10Eco(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25Eco(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50Eco(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75Eco(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1Eco S10Eco S25Eco S50Eco S75Eco numDisconnect1Eco numDisconnect10Eco numDisconnect25Eco numDisconnect50Eco numDisconnect75Eco
            
            t = t + 1;
        end
    end
end