function [failuresER] = edgeFailRandV2(numFail,edges)

% fail nodes randomly

failuresER = zeros(numFail,2);                                  % initial list of failed edge pairs

workingEdges = edges;                                           % initial list of working edge pairs

for f = 1:numFail
    failEdgeIndex = floor((rand(1)*size(workingEdges,1))+1);    % generate index of failed node from list of working nodes
    failuresER(f,:) = workingEdges(failEdgeIndex,:);            % failed edge
    workingEdges(failEdgeIndex,:) = [];                         % remove failed node from list of working nodes
end