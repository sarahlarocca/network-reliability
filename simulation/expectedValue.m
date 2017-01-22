function [E] = expectedValue(gamma,kappa,n)

Li = polylog(gamma,exp(-1/kappa));
E = 0;
for i = 1:(n-1)
    E = E + i*(1/Li)*(i^(-gamma))*(exp(-i/kappa));
end