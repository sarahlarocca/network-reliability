function [failuresNDi_] = simFailNDi(A_,n_,networkParams,numSim,saveOut)

% numSim:       number of times to repeat failure simulation for each network
% saveOut:      if == 1, save workspace variables

m = networkParams(:,7);                 % number of networks to be generated
i = networkParams(:,8);                 % index of parameter combination

iMax = max(i);                          % total number of parameter combinations to be used for network generation

failuresNDi_ = cell(iMax,1);
for i = 1:iMax
    failuresNDi_{i} = cell(m(i),1);
end

for i = 1:iMax
    for j = 1:m(i)
        failuresNDi_{i}{j} = cell(numSim,1);
    end
end

for i = 1:iMax
    for j = 1:m(i)
        for k = 1:numSim
            [failuresNDi_{i}{j}{k}] = nodeFailDegreeInit(A_{i}{j},n_(i));
        end
    end
end

if saveOut == 1
    dateString = datestr(date,'yyyymmdd');
    fileName = strcat('simFailNDi',dateString);
    save(fileName);
end
