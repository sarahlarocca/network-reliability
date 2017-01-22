function calcLCCundirected(paramIndex,networkIndex,failSimIndex,A_,n_,failuresNR_,networkType)

% i = parameter combination index
% j = network number
% k = failure simulation number
% l = node failure number

for i = paramIndex                             % for network parameter combination i
    for j = networkIndex                       % for networks j
        for k = failSimIndex                   % for failure simulations k
            
            Afailure = A_{i}{j};
            n = n_(i);
            
            for t = 1:n
                for r = 1:n
                    if (Afailure(t,r) == 1)
                       Afailure(r,t) = 1;
                    end
                end
            end

            failureLevels = [1 floor(0.10*n) floor(0.25*n) floor(0.5*n) floor(0.75*n)];
            lIndex = 1;

            disconnectedComponents = cell(5,1);
            S = cell(5,1);
            sizeS = zeros(5,1);
            
            for l = failureLevels                                 % for all node failures
                Afailure(failuresNR_{i}{j}{k}(1:l),:) = 0;
                Afailure(:,failuresNR_{i}{j}{k}(1:l)) = 0;
                for q = 1:n
                    Afailure(q,q) = 1;
                end
       
                [S{lIndex},sizeS(lIndex),disconnectedComponents{lIndex}] = connectedComponents(Afailure,n);

                lIndex = lIndex + 1;
            end 
            
            fileName = strcat('LCC_',networkType,int2str(i),'_',int2str(j),'_',int2str(k));
            save(fileName, 'S', 'sizeS', 'disconnectedComponents');
            iter = [int2str(i),'_',int2str(j),'_',int2str(k)]
            clear S sizeS disconnectedComponents;
            
        end
    end
end