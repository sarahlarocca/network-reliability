function [Emean_,Emax_,Emin_,Estd_] = calcEfficiencyInit(A_,n_,networkParams)

m = networkParams(:,7);                 % number of networks to be generated
i = networkParams(:,8);                 % index of parameter combination

iMax = max(i);                          % total number of parameter combinations to be used for network generation

%initialize output variables
Emean_ = cell(iMax,1);                % mean degree for network
Emax_ = cell(iMax,1);                 % max degree for network
Emin_ = cell(iMax,1);                 % min degree for network
Estd_ = cell(iMax,1);                 % std dev degree for network 

for i = 1:iMax
    Emean_{i} = zeros(m(i),1);
    Emax_{i} = zeros(m(i),1);
    Emin_{i} = zeros(m(i),1);
    Estd_{i} = zeros(m(i),1);
end


for i = 1:iMax;
    for j = 1:m(i)
        d_ = zeros(n_(i),n_(i));
        for s = 1:n_(i)
            dTemp = dijkstraV3(A_{i}{j},s,n_(i));
            d_(s,:) = dTemp;
        end
        d_inv = 1./d_;
        Emean_{i}(j) = mean(d_inv(d_inv~=inf));
        Emax_{i}(j) = max(d_inv(d_inv~=inf));
        Emin_{i}(j) = min(d_inv(d_inv~=inf));
        Estd_{i}(j) = std(d_inv(d_inv~=inf));
        iter = [int2str(i),'_',int2str(j)]
    end    
end