function [chisq,degFree] = chisqDegreeDistV2(k,n,gamma,kappa)

Li = polylog(gamma,exp(-1/kappa));

nBins = max(k);

O = zeros(nBins,1);
for i = 1:n
    O(k(i)) = O(k(i)) + 1;
end

E = zeros(nBins,1);
for i = 1:nBins
    E(i) = n*((1/Li)*((i^(-gamma))*exp(-i/kappa)));
end

chisq = 0;
for i = 1:nBins
    chisq = chisq + ((O(i)-E(i))^2)/E(i);
end

degFree = nBins - 1;
