function [lMean_,lMax_,lMin_,lStd_] = calcDijkstraV5(A_,n_,networkParams)

m = networkParams(:,7);                 % number of networks to be generated
i = networkParams(:,8);                 % index of parameter combination

iMax = max(i);                          % total number of parameter combinations to be used for network generation

%initialize output variables
lMean_ = cell(iMax,1);                % mean degree for network
lMax_ = cell(iMax,1);                 % max degree for network
lMin_ = cell(iMax,1);                 % min degree for network
lStd_ = cell(iMax,1);                 % std dev degree for network 

for i = 1:iMax
    lMean_{i} = zeros(m(i),1);
    lMax_{i} = zeros(m(i),1);
    lMin_{i} = zeros(m(i),1);
    lStd_{i} = zeros(m(i),1);
end


for i = 1:iMax;
    for j = 1:m(i)
        d_ = zeros(n_(i),n_(i));
        for s = 1:n_(i)
            dTemp = dijkstraV3(A_{i}{j},s,n_(i));
            d_(s,:) = dTemp;
        end
        lMean_{i}(j) = mean(d_(d_~=0 & d_~= inf));
        lMax_{i}(j) = max(d_(d_~=0 & d_~= inf));
        lMin_{i}(j) = min(d_(d_~=0 & d_~= inf));
        lStd_{i}(j) = std(d_(d_~=0 & d_~= inf));
    end    
end