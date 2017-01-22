function [failuresNR] = nodeFailRandV2(n,numFail)

% fail nodes randomly

failuresNR = zeros(1,numFail);                                  % initialize list of failed nodes

workingNodes = 1:n;                                             % initial list of working nodes

for f = 1:numFail
    failNodeIndex = floor((rand(1)*length(workingNodes))+1);    % generate index of failed node from list of working nodes
    failuresNR(f) = workingNodes(failNodeIndex);                % failed node
    workingNodes = workingNodes(workingNodes~=failuresNR(f));   % remove failed node from list of working nodes
end