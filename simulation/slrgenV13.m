function [A,k,degreeCred]=slrgenV13(n,gamma,kappa,nodeAttemptsMax,linkAttemptsMax,attemptsMax)

% OUTPUTS
% A:= (n x n) adjacency matrix where A(i,j) = 1 if an edge exists between node i and node j and 
%                                   A(i,j) = 0 if an edge doesn't exist between node i and node j
% INPUTS
% n:= number of desired nodes in the network
% gamma:= gamma
% kappa:= kappa

Li = polylog(gamma,exp(-1/kappa));

%--------------------------------------------------------------------------
numAttempts = 0;
numLinkAttempts = 0;
while (numAttempts < attemptsMax) && (numLinkAttempts ~= inf)
    
    A = zeros(n,n);             % initialize adjacency matrix 
    k = zeros(1,n);             % initialize degree matrix
    degreeCred = zeros(1,n);    % initialize matrix of remaining degree credits
    creditNodes = [];           % initialize matrix of nodes with remaining degree credits

    % FIRST TWO NODES IN NETWORK
    k(1) = genDegree(n,gamma,kappa,Li);         % generate degree for node 1
    k(2) = genDegree(n,gamma,kappa,Li);         % generate degree for node 2
    while (k(1) + k(2)) == 2                     % if node 1 and node 2 are both degree 1, regenerate degrees
        k(1) = genDegree(n,gamma,kappa,Li);     % generate degree for node 1
        k(2) = genDegree(n,gamma,kappa,Li);     % generate degree for node 2
    end

    degreeCred(1) = k(1);                       % assign degree credits for node 1
    degreeCred(2) = k(2);                       % assign degree credits for node 2

    A(1,2) = 1;                                 % assign edge between node 1 and node 2
    A(2,1) = 1;                                 % assign edge between node 2 and node 1

    creditNodes = [1 2];                        % add nodes 1 and 2 to list of nodes with remaining degree credits

    degreeCred(1) = degreeCred(1) - 1;          % decrease degree credits by 1 for node 1
    degreeCred(2) = degreeCred(2) - 1;          % decrease degree credits by 1 for node 2

    if degreeCred(1) == 0                       % if no degree credits remain for node 1, remove it from list of nodes with remaining degree credits
        creditNodes = creditNodes(creditNodes ~= 1);
    end
    if degreeCred(2) == 0                       % if no degree credits remain for node 2, remove it from list of nodes with remaining degree credits
        creditNodes = creditNodes(creditNodes ~= 2);
    end

    %--------------------------------------------------------------------------
    % ADD REMAINING NODES TO NETWORK

    for i = 3:n                                 % for the remaining nodes
        numNodeAttempts = 0;                    % number of attempts at adding node

        kPrev = k;                              % k prior to adding node i
        degreeCredPrev = degreeCred;            % degreeCred prior to adding node i
        APrev = A;                              % A prior to adding node i
        creditNodesPrev = creditNodes;          % creditNodes prior to adding node i

        k(i) = genDegree(n,gamma,kappa,Li);     % generate degree for node i
        connectIndex = floor((rand(1)*length(creditNodes))+1);      % generate a random number from U(1,length(creditNodes)) to choose position of connecting node
        connectNode = creditNodes(connectIndex);                    % choose node to connect to from list of nodes with remaining degree credits     

        degreeCred(i) = k(i);                   % assign degree credits for node i

        A(i,connectNode) = 1;                   % assign edge between node i and connectNode
        A(connectNode,i) = 1;                   % assign edge between connectNode and node i

        creditNodes = [creditNodes i];          % add node i to the list of nodes with remaining degree credits

        degreeCred(i) = degreeCred(i) - 1;                          % decrease degree credits by 1 for node i
        degreeCred(connectNode) = degreeCred(connectNode) - 1;      % decrease degree credits by 1 for connectNode

        if degreeCred(i) == 0                                       % if no degree credits remain for node i, remove it from list of nodes with remaining degree credits
            creditNodes = creditNodes(creditNodes ~= i);
        end
        if degreeCred(connectNode) == 0                             % if no degree credits remain for connectNode, remove it from list of nodes with remaining degree credits
            creditNodes = creditNodes(creditNodes ~= connectNode);
        end

        while isempty(creditNodes) && (numNodeAttempts < nodeAttemptsMax)      % while addition of node i leaves no nodes with remaining degree credits, add a new node i
            k = kPrev;                              % reset k to previous state
            degreeCred = degreeCredPrev;            % reset degreeCred to previous state
            A = APrev;                              % reset A to previous state
            creditNodes = creditNodesPrev;          % reset creditNodes to previous state

            k(i) = genDegree(n,gamma,kappa,Li);     % generate degree for node i
            connectIndex = floor((rand(1)*length(creditNodes))+1);      % generate a random number from U(1,length(creditNodes)) to choose position of connecting node
            connectNode = creditNodes(connectIndex);                    % choose node to connect to from list of nodes with remaining degree credits     

            degreeCred(i) = k(i);                   % assign degree credits for node i

            A(i,connectNode) = 1;                   % assign edge between node i and connectNode
            A(connectNode,i) = 1;                   % assign edge between connectNode and node i

            creditNodes = [creditNodes i];          % add node i to the list of nodes with remaining degree credits

            degreeCred(i) = degreeCred(i) - 1;                          % decrease degree credits by 1 for node i
            degreeCred(connectNode) = degreeCred(connectNode) - 1;      % decrease degree credits by 1 for connectNode

            if degreeCred(i) == 0                                       % if no degree credits remain for node i, remove it from list of nodes with remaining degree credits
                creditNodes = creditNodes(creditNodes ~= i);
            end
            if degreeCred(connectNode) == 0                             % if no degree credits remain for connectNode, remove it from list of nodes with remaining degree credits
                creditNodes = creditNodes(creditNodes ~= connectNode);
            end

            numNodeAttempts = numNodeAttempts + 1;                      % number of attempts at assigning node
        end
    end

    numLinkAttempts = 0;
    while ((sum(degreeCred))>1) && (numLinkAttempts < linkAttemptsMax)
        %nodeA = max(creditNodes);    % generate a random number from U(1,length(creditNodes)) to choose position of node A
        indexNodeA = floor((rand(1)*length(creditNodes))+1);    % generate a random number from U(1,length(creditNodes)) to choose position of node B
        indexNodeB = floor((rand(1)*length(creditNodes))+1);    % generate a random number from U(1,length(creditNodes)) to choose position of node B
        nodeA = creditNodes(indexNodeA);
        nodeB = creditNodes(indexNodeB);
        if and(nodeA~=nodeB,A(nodeA,nodeB)~=1)          % if node A and node B aren't the same node
                                                        % and there isn't already an edge between node A and node B
            A(nodeA,nodeB) = 1;                         % insert an edge between node A and node B
            A(nodeA,nodeB) = 1;                         % insert an edge between node B and node A
            degreeCred(nodeA) = degreeCred(nodeA) - 1;  % decrease degree credits of node A by 1
            degreeCred(nodeB) = degreeCred(nodeB) - 1;  % decrease degree credits of node B by 1
            if degreeCred(nodeA) == 0                   % if no degree credits remain for node A, remove node A from list of available nodes
                creditNodes = creditNodes(creditNodes ~= nodeA);
            end
            if degreeCred(nodeB) == 0                   % if no degree credits remain for node B, remove node B from list of available nodes
                creditNodes = creditNodes(creditNodes ~= nodeB);
            end
        end
        numLinkAttempts = numLinkAttempts + 1;
    end
    
    if (sum(degreeCred))<=1
        numLinkAttempts = inf;
    end

    numAttempts = numAttempts + 1
end