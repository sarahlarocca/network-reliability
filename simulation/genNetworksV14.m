function [A_,k_,degreeCred_,networkCon_,networkGenErr_,n_]=genNetworksV14(networkParams)

n = networkParams(:,1);                 % number of nodes in network
gamma = networkParams(:,2);        
kappa = networkParams(:,3);      
maxEdgeAttempts = networkParams(:,4);
maxNetworkAttempts = networkParams(:,5);
m = networkParams(:,7);                 % number of networks to be generated
i = networkParams(:,8);                 % index of parameter combination

iMax = max(i);                          % total number of parameter combinations to be used for network generation

%initialize output variables
A_ = cell(iMax,1);
k_ = cell(iMax,1);
degreeCred_ = cell(iMax,1);
networkCon_ = cell(iMax,1);
networkGenErr_ = cell(iMax,1);

for i = 1:iMax;
    A_{i} = cell(m(i),1);               % allocate cell arrays to contain all networks generated from a given set of parameters
    k_{i} = cell(m(i),1);
    degreeCred_{i} = cell(m(i),1);
    networkCon_{i} = cell(m(i),1);
    networkGenErr_{i} = cell(m(i),1);
    for j = 1:m(i)
        [A_{i}{j},k_{i}{j},degreeCred_{i}{j},networkCon_{i}{j},networkGenErr_{i}{j}] = slrgenConnectedV14(n(i),gamma(i),kappa(i),maxEdgeAttempts(i),maxNetworkAttempts(i));
    end    
end

n_ = n;