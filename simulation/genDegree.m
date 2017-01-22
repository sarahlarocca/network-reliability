function [k] = genDegree(n,gamma,kappa,Li)

% INPUTS
% n:= number of desired nodes in the network
% gamma:= gamma
% kappa:= kappa

Y = floor((n-1)*rand(1))+1;
U = rand(1);
fY = (1/Li)*(Y^(-gamma))*exp(-Y/kappa);
tY = (1/Li)*exp(-1/kappa);
while U >= fY/tY
    Y = floor((n-1)*rand(1))+1;
    U = rand(1);
    fY = (1/Li)*(Y^(-gamma))*exp(-Y/kappa);
    tY = (1/Li)*exp(-1/kappa);
end
k = Y;