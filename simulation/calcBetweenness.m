function [Cb_,CbMean_]=calcBetweenness(A_,n_,networkParams)

m = networkParams(:,7);                 % number of networks to be generated
i = networkParams(:,8);                 % index of parameter combination

iMax = max(i);                          % total number of parameter combinations to be used for network generation

%initialize output variables
Cb_ = cell(iMax,1);                     % betweenness centrality
CbMean_ = cell(iMax,1);                 % mean betweenness centrality for network

for i = 1:iMax;
    for j = 1:m(i)
        Cb_{i}{j} = betweenness(A_{i}{j},n_(i));
        CbMean_{i}{j} = mean(Cb_{i}{j});
    end    
end

Cb_ = Cb_';
CbMean_ = CbMean_';