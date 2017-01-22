function [k_, kMean_, kMax_, kMin_, kStd_] = calcDegreeV2(A_,networkParams)

m = networkParams(:,7);                 % number of networks to be generated
i = networkParams(:,8);                 % index of parameter combination

iMax = max(i);                          % total number of parameter combinations to be used for network generation

%initialize output variables
k_ = cell(iMax,1);
kMean_ = cell(iMax,1);                % mean degree for network
kMax_ = cell(iMax,1);                 % max degree for network
kMin_ = cell(iMax,1);                 % min degree for network
kStd_ = cell(iMax,1);                 % std dev degree for network

for i = 1:iMax
    for j = 1:m(i)
        k_{i}{j} = sum(A_{i}{j}) - 1;
        kMean_{i}{j} = mean(k_{i}{j});
        kMax_{i}{j} = max(k_{i}{j});
        kMin_{i}{j} = min(k_{i}{j});
        kStd_{i}{j} = std(k_{i}{j});
    end    
end