function [A,k,degreeCred,networkCon,networkGenErr] = slrgenConnectedV14a(n,gamma,kappa,maxEdgeAttempts,maxNetworkAttempts,tolerance)

[A,k,degreeCred,networkGenErr]=slrgenV14(n,gamma,kappa,maxEdgeAttempts,maxNetworkAttempts);
if networkGenErr == 999
    connected = 0;
    networkCon = 0;
else
[connected, networkCon] = networkConnectV3(A,n,k);     
end

i=1;

while (sum(networkCon) < (n - tolerance))
[A,k,degreeCred,networkGenErr]=slrgenV14(n,gamma,kappa,maxEdgeAttempts,maxNetworkAttempts);
    if networkGenErr == 999
        connected = 0;
        networkCon = 0;
    else
        [connected, networkCon] = networkConnectV3(A,n,k);
    end
    i = i + 1
end