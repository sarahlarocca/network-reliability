function [failuresNDr] = nodeFailDegreeRecalc(A,n)

Afail = A;
failuresNDr = zeros(1,n);                                        % initialize list of failed nodes
kWorking = zeros(1,n);						 % initialize list of degrees of working nodes

workingNodes = 1:n;                                              % initial list of working nodes

for i = 1:n
    kWorking(i) = (sum(Afail(i,:)) - 1);                         % calculate nodal degree for all nodes
end

f = 1;

while ~isempty(workingNodes)
    maxkIndex = find(kWorking==max(kWorking));                   % find nodes with max degree
    randMaxk = floor((rand(1)*length(maxkIndex))+1);             % generate random number to choose which of the maxima to use
    failuresNDr(f) = maxkIndex(randMaxk);
    workingNodes = workingNodes(workingNodes~=failuresNDr(f));   % remove failed node from list of working nodes
    Afail(failuresNDr(f),:) = 0;                                 % remove node from dependency matrix
    Afail(:,failuresNDr(f)) = 0;                                % remove node from dependency matrix
    for i = 1:n
        kWorking(i) = (sum(Afail(i,:)) - 1);                     % calculate nodal degree for all nodes
    end
    f = f + 1;
end
