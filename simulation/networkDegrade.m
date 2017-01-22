cd /media/Files/JHU/Infrastructure/networks2012/
load networksTerr.mat

cd /media/Files/JHU/Infrastructure/networks2012/matlabCode

% Calculate initial degree

kInit = sum(A_terr{1}{1}) - 1;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A_terr_fail = cell(n_terr,1);

for i = 1:n_terr
    tmp = A_terr{1}{1};
    tmp(i,:) = [];
    tmp(:,i) = [];
    A_terr_fail{i} = tmp;
    
    % Calculate size of largest connected component
    [Scomp,sizeS,disconnectedComponents] = connectedComponents(A_terr_fail{i},n_terr - 1);
    S(i) = sizeS;
    
    % Calculate degree
    k = sum(A_terr_fail{i}) - 1;
	kMean(i) = mean(k);
    kStd(i) = std(k);
    kMin(i) = min(k);
    kMax(i) = max(k);

    
    % Calculate betweenness

    Cb = betweenness(A_terr_fail{i},n_terr-1);
    CbMean(i) = mean(Cb);
    CbStd(i) = std(Cb);
    CbMin(i) = min(Cb);
    CbMax(i) = max(Cb);    
        
    % Calculate clustering
    C = clusteringCoefficientV3(A_terr_fail{i},n_terr-1);
    Cmean(i) = mean(C);
    Cstd(i) = std(C);
    Cmin(i) = min(C);
    Cmax(i) = max(C);

    % Calculate path length
    for s = 1:n_terr-1
        dTemp = dijkstraV3(A_terr_fail{i},s,n_terr-1);
        d(s,:) = dTemp;
    end
    lMean(i) = mean(d(d~=0 & d ~= inf));
    lStd(i) = std(d(d~=0 & d ~= inf));
    lMin(i) = min(d(d~=0 & d ~= inf));
    lMax(i) = max(d(d~=0 & d ~= inf));
      
end

degradeStats(:,1) = kMean;
degradeStats(:,2) = kMin;
degradeStats(:,3) = kMax;
degradeStats(:,4) = kStd;
degradeStats(:,5) = CbMean;
degradeStats(:,6) = CbMin;
degradeStats(:,6) = CbMax;
degradeStats(:,8) = CbStd;
degradeStats(:,9) = Cmean;
degradeStats(:,10) = Cmin;
degradeStats(:,11) = Cmax;
degradeStats(:,12) = Cstd;
degradeStats(:,13) = lMean;
degradeStats(:,14) = lMin;
degradeStats(:,15) = lMax;
degradeStats(:,16) = lStd;

cd ../
save 'degradedNetworkStats.txt' degradeStats '-ascii' '-tabs'


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cd matlabCode/

numDegradedNetworks = 62;
numSim = 1000;
n = 61;

for i = 1:numDegradedNetworks
    for j = 1:numSim
        failuresNR_degradedNetworks{i}{j} = nodeFailRandV2(n,n);
    end
end



S_real_10 = cell(62,1);
S_real_25 = cell(62,1);
S_real_50 = cell(62,1);
S_real_75 = cell(62,1);

for i = 1:62
    S_real_10{i} = zeros(1000,1);
    S_real_25{i} = zeros(1000,1);
    S_real_50{i} = zeros(1000,1);
    S_real_75{i} = zeros(1000,1);
end

for i = 1:numDegradedNetworks
    for j = 1:numSim          
        Afailure = A_terr_fail{i};
        failureLevels = [floor(0.10*n) floor(0.25*n) floor(0.5*n) floor(0.75*n)];
        lIndex = 1;
        for l = failureLevels                                 % for all node failures
            Afailure(failuresNR_degradedNetworks{i}{j}(1:l),:) = 0;
            Afailure(:,failuresNR_degradedNetworks{i}{j}(1:l)) = 0;
            for q = 1:n
                Afailure(q,q) = 1;
            end
            [S,sizeS,disconnectedComponents] = connectedComponents(Afailure,n);
            sizeS_real(lIndex) = sizeS;
            lIndex = lIndex + 1;
        end
        S_real_10{i}(j) = sizeS_real(1);
        S_real_25{i}(j) = sizeS_real(2);
        S_real_50{i}(j) = sizeS_real(3);
        S_real_75{i}(j) = sizeS_real(4);
    end
end

for i = 1:numDegradedNetworks
    S10_real(i) = mean(S_real_10{i});
	S25_real(i) = mean(S_real_25{i});
	S50_real(i) = mean(S_real_50{i});
	S75_real(i) = mean(S_real_75{i});
end



j = 0;
while (j < 62)
  tmp = sort(S10_real);
  tmp = find(S10_real == tmp(j+1));
  nodeOrder_S10_real((j + 1):(j + length(tmp))) = tmp;
  j = j + length(tmp);
end



j = 0;
while (j < 62)
  tmp = sort(S25_real);
  tmp = find(S25_real == tmp(j+1));
  nodeOrder_S25_real((j + 1):(j + length(tmp))) = tmp;
  j = j + length(tmp);
end



j = 0;
while (j < 62)
  tmp = sort(S50_real);
  tmp = find(S50_real == tmp(j+1));
  nodeOrder_S50_real((j + 1):(j + length(tmp))) = tmp;
  j = j + length(tmp);
end



j = 0;
while (j < 62)
  tmp = sort(S75_real);
  tmp = find(S75_real == tmp(j+1));
  nodeOrder_S75_real((j + 1):(j + length(tmp))) = tmp;
  j = j + length(tmp);
end

cd degradedNetworks/
save 'S10_actual_degrade.txt' 'S10_real' '-ascii' '-tabs'
save 'S25_actual_degrade.txt' 'S25_real' '-ascii' '-tabs'
save 'S50_actual_degrade.txt' 'S50_real' '-ascii' '-tabs'
save 'S75_actual_degrade.txt' 'S75_real' '-ascii' '-tabs'
save 'kInit_degrade.txt' 'kInit' '-ascii' '-tabs'