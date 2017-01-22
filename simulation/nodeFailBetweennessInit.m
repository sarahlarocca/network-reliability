function [failuresNBi] = nodeFailBetweennessInit(Cb,n)

% fail nodes from highest to lowest betweenness (based on initial betweenness)

failuresNBi = zeros(1,n);
CbWorking = Cb;					                % initialize list of betweenness of working nodes

workingNodes = 1:n;                                             % initial list of working nodes

f = 1;

while ~isempty(workingNodes)
    maxkIndex = find(CbWorking==max(CbWorking));                  % find nodes with max degree
    randMaxk = floor((rand(1)*length(maxkIndex))+1);            % generate random number to choose which of the maxima to use
    failuresNBi(f) = maxkIndex(randMaxk);
    workingNodes = workingNodes(workingNodes~=failuresNBi(f));   % remove failed node from list of working nodes
    CbWorking(failuresNBi(f)) = -1;
    f = f + 1;
end
