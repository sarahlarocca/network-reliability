cd LCC

S1EcoConnect = zeros(100,1);
S10EcoConnect = zeros(100,1);
S25EcoConnect = zeros(100,1);
S50EcoConnect = zeros(100,1);
S75EcoConnect = zeros(100,1);

numDisconnect1EcoConnect = zeros(100,1);
numDisconnect10EcoConnect = zeros(100,1);
numDisconnect25EcoConnect = zeros(100,1);
numDisconnect50EcoConnect = zeros(100,1);
numDisconnect75EcoConnect = zeros(100,1);

t = 1;

for i = 1:1
    for j = 1:1
        for k = 1:100
            fileName = strcat('LCC_NR_EcoConnect_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1EcoConnect(t) = sizeS(1);
            S10EcoConnect(t) = sizeS(2);
            S25EcoConnect(t) = sizeS(3);
            S50EcoConnect(t) = sizeS(4);
            S75EcoConnect(t) = sizeS(5);
            
            numDisconnect1EcoConnect(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10EcoConnect(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25EcoConnect(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50EcoConnect(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75EcoConnect(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1EcoConnect S10EcoConnect S25EcoConnect S50EcoConnect S75EcoConnect numDisconnect1EcoConnect numDisconnect10EcoConnect numDisconnect25EcoConnect numDisconnect50EcoConnect numDisconnect75EcoConnect
            
            t = t + 1;
        end
    end
end