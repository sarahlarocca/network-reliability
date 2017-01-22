function [failuresNBr] = nodeFailBetweennessRecalc(A,n,Cb)

% fail nodes from highest to lowest betweenness (based on initial betweenness)

Afail = A;
failuresNBr = zeros(1,n);
CbWorking = Cb;					                % initialize list of betweenness of working nodes

workingNodes = 1:n;                                             % initial list of working nodes

f = 1;

while ~isempty(workingNodes)
    maxkIndex = find(CbWorking==max(CbWorking));                 % find nodes with max degree
    randMaxk = floor((rand(1)*length(maxkIndex))+1);             % generate random number to choose which of the maxima to use
    failuresNBr(f) = maxkIndex(randMaxk);
    workingNodes = workingNodes(workingNodes~=failuresNBr(f));   % remove failed node from list of working nodes
    Afail(failuresNBr(f),:) = 0;                                 % remove node from dependency matrix
    Afail(:,failuresNBr(f)) = 0;                                 % remove node from dependency matrix
    [CbWorking] = betweenness(Afail,n);				 % recalculate betweenness
    f = f + 1;
end

