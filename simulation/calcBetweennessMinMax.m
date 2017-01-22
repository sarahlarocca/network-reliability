function [CbMean_,CbMax_,CbMin_,CbStd_] = calcBetweennessMinMax(Cb_,CbMean_,networkParams)

m = networkParams(:,7);                 % number of networks to be generated
i = networkParams(:,8);                 % index of parameter combination

iMax = max(i);                          % total number of parameter combinations to be used for network generation

%initialize output variables
CbMax_ = cell(iMax,1);                 % max betweenness centrality for network
CbMin_ = cell(iMax,1);                 % min betweenness centrality for network
CbStd_ = cell(iMax,1);                 % std dev betweenness centrality for network

for i = 1:iMax;
    for j = 1:m(i)
        CbMax_{i}{j} = max(Cb_{i}{j});
        CbMin_{i}{j} = min(Cb_{i}{j});
        CbStd_{i}{j} = std(Cb_{i}{j});
    end    
end

CbMean_ = CbMean_';