function [failuresNDr_] = simFailNDrV2(A_,n_,networkParams,numSim,saveOut)

% numSim:       number of times to repeat failure simulation for each network
% saveOut:      if == 1, save workspace variables

m = networkParams(:,7);                 % number of networks to be generated
i = networkParams(:,8);                 % index of parameter combination

iMax = max(i);                          % total number of parameter combinations to be used for network generation

failuresNDr_ = cell(iMax,1);
for i = 1:iMax
    failuresNDr_{i} = cell(m(i),1);
end

for i = 1:iMax
    for j = 1:m(i)
        failuresNDr_{i}{j} = cell(numSim,1);
    end
end

for i = 1:iMax
    for j = 1:m(i)
        for k = 1:numSim
            [failuresNDr_{i}{j}{k}] = nodeFailDegreeRecalc(A_{i}{j},n_(i));
            disp(strcat(int2str(i),'_',int2str(j),'_',int2str(k)))
        end
    end
end

if saveOut == 1
    dateString = datestr(date,'yyyymmdd');
    fileName = strcat('simFailNDr',dateString);
    save(fileName);
end
