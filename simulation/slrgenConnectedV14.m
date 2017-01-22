function [A,k,degreeCred,networkCon,networkGenErr] = slrgenConnectedV14(n,gamma,kappa,maxEdgeAttempts,maxNetworkAttempts)

[A,k,degreeCred,networkGenErr]=slrgenV14(n,gamma,kappa,maxEdgeAttempts,maxNetworkAttempts);
if networkGenErr == 999
    connected = 0;
else
[connected, networkCon] = networkConnect(A,n);     
end

i=1;

while (~connected)
[A,k,degreeCred,networkGenErr]=slrgenV14(n,gamma,kappa,maxEdgeAttempts,maxNetworkAttempts);
    if networkGenErr == 999
        connected = 0;
    else
        [connected, networkCon] = networkConnect(A,n);
    end
    i = i + 1
end