function [C_,Cmean_,Cmin_,Cmax_,Cstd_]=calcClustering(A_,n_,networkParams)

m = networkParams(:,7);                 % number of networks to be generated
i = networkParams(:,8);                 % index of parameter combination

iMax = max(i);                          % total number of parameter combinations to be used for network generation

%initialize output variables
C_ = cell(iMax,1);                      % clustering coefficient
Cmean_ = cell(iMax,1);                  % mean clustering coefficient for network
Cmin_ = cell(iMax,1);                   % min clustering coefficient for network
Cmax_ = cell(iMax,1);                   % max clustering coefficient for network
Cstd_ = cell(iMax,1);                   % std clustering coefficient for network

for i = 1:iMax;
    for j = 1:m(i)
        C_{i}{j} = clusteringCoefficient(A_{i}{j},n_(i));
        Cmean_{i}{j} = mean(C_{i}{j});
        Cmin_{i}{j} = min(C_{i}{j});
        Cmax_{i}{j} = max(C_{i}{j});
        Cstd_{i}{j} = std(C_{i}{j});
    end    
end
