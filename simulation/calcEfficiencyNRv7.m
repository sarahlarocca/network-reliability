function calcEfficiencyNRv7(paramIndex,networkIndex,failSimIndex,A_,n_,failuresNR_,networkType)

% i = parameter combination index
% j = network number
% k = failure simulation number
% l = node failure number

for i = paramIndex                             % for network parameter combination i
    for j = networkIndex                       % for networks j
        for k = failSimIndex                   % for failure simulations k
            
            Afailure = A_{i}{j};
            n = n_(i);

            dFailuresNR = cell(n,1);
            
            failureLevels = [1 floor(0.10*n) floor(0.25*n) floor(0.5*n) floor(0.75*n)];
            lIndex = 1;
            EmeanNR = zeros(length(failureLevels),1);
            EminNR = zeros(length(failureLevels),1);
            EmaxNR = zeros(length(failureLevels),1);
            EstdNR = zeros(length(failureLevels),1);
            Enr = [EmeanNR; EminNR; EmaxNR; EstdNR]; 
            
            for l = failureLevels                                 % for all node failures
                Afailure(failuresNR_{i}{j}{k}(1:l),:) = 0;
                Afailure(:,failuresNR_{i}{j}{k}(1:l)) = 0;
                dFailuresNR = zeros(n,n);
                for q = 1:n
                    Afailure(q,q) = 1;
                end
                
                for s = 1:n
                    dFailuresNRtemp = dijkstraV3(Afailure,s,n);
                    dFailuresNR(s,:) = dFailuresNRtemp;
                end
                
                dFailuresNRinv = 1./dFailuresNR;
                EmeanNR(lIndex) = mean(dFailuresNRinv(dFailuresNRinv~=Inf));
                EminNR(lIndex) = min(dFailuresNRinv(dFailuresNRinv~=Inf));
                EmaxNR(lIndex) = max(dFailuresNRinv(dFailuresNRinv~=Inf));
                EstdNR(lIndex) = std(dFailuresNRinv(dFailuresNRinv~=Inf));
                
                lIndex = lIndex + 1;
            end 
            
            Enr = [EmeanNR; EminNR; EmaxNR; EstdNR];
            fileName = strcat('Enr_',networkType,int2str(i),'_',int2str(j),'_',int2str(k));
            save(fileName, 'Enr');
            iter = [int2str(i),'_',int2str(j),'_',int2str(k)]
            clear EmeanNR EminNR EmaxNR EstdNR Enr;
            
        end
    end
end
