function [C] = clusteringCoefficientV3(A,n)

C = zeros(1,n);

for i = 1:n                                             % for all nodes
    neighbors = [];                                     % reset neighbors vector
    neighbors = find(A(i,:)==1);                        % find neighbors of node i
    neighbors = neighbors(neighbors ~= i);              % remove node i from list of neighbors
    numNeighbors = length(neighbors);                   % number of neighbors of node i (k(i))
    edgeCount = 0;                                      % reset edge count (E(i))
    for j = 1:numNeighbors
        for k = 1:numNeighbors
            if (j ~= k) && (A(neighbors(j),neighbors(k)) == 1)
                edgeCount = edgeCount + 1;
            end
        end
    end
    switch numNeighbors
        case 0
            C(1,i) = 0;
        case 1
            C(1,i) = 0;
        otherwise
            C(1,i) = (edgeCount)/(numNeighbors*(numNeighbors - 1));
    end
end