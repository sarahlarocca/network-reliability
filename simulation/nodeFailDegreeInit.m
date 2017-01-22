function [failuresNDi] = nodeFailDegreeInit(A,n,numFail)

% fail nodes from highest to lowest degree

failuresNDi = zeros(1,n);                                 % initialize list of failed nodes
kWorking = zeros(1,n);						% initialize list of degrees of working nodes

workingNodes = 1:n;                                             % initial list of working nodes

for i = 1:n
    kWorking(i) = (sum(A(i,:)) - 1);                            % calculate nodal degree for all nodes
end

f = 1;

while ~isempty(workingNodes)
    maxkIndex = find(kWorking==max(kWorking));                  % find nodes with max degree
    randMaxk = floor((rand(1)*length(maxkIndex))+1);            % generate random number to choose which of the maxima to use
    failuresNDi(f) = maxkIndex(randMaxk);
    workingNodes = workingNodes(workingNodes~=failuresNDi(f));   % remove failed node from list of working nodes
    kWorking(failuresNDi(f)) = -1;
    f = f + 1;
end
