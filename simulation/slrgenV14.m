function [A,k,degreeCred,networkGenErr]=slrgenV14(n,gamma,kappa,maxEdgeAttempts,maxNetworkAttempts)

% OUTPUTS
% A:= (n x n) adjacency matrix where A(i,j) = 1 if an edge exists between node i and node j and 
%                                   A(i,j) = 0 if an edge doesn't exist between node i and node j
% INPUTS
% n:= number of desired nodes in the network
% gamma:= gamma
% kappa:= kappa

Li = polylog(gamma,exp(-1/kappa));  % calculate Li

numNetworkAttempts = 0;

while numNetworkAttempts < maxNetworkAttempts

    A = zeros(n,n);                     % initialize adjacency matrix 
    for i = 1:n
        A(i,i) = 1;
    end

    %--------------------------------------------------------------------------
    % GENERATE NODAL DEGREE

    k = zeros(1,n);                             % initialize degree matrix
    for i = 1:n
        k(i) = genDegree(n,gamma,kappa,Li);     % generate degree for node i based on input parameters
    end

    %--------------------------------------------------------------------------
    % CONNECT NODES

    degreeCred = k;                 % initialize matrix of remaining degree credits
    creditNodes = 1:n;              % initialize matrix of nodes with remaining degree credits

    while (length(creditNodes)) > 1
        connectProb = inf;          % initialize connection probability list
        numEdgeAttempts = 0;        % initialize number of attempts at connecting node with largest number of remaining degree credits

        while ((isempty(connectProb)) || (sum(connectProb == inf) > 0)) && (numEdgeAttempts < maxEdgeAttempts)

            % GENERATE NODE A------------------------------------------------------
            maxDegreeNode = find(degreeCred == max(degreeCred));
            if (length(maxDegreeNode)) > 1                                     % if there is a tie for maximum remaining degree credits
                maxDegreeIndex = floor(length(maxDegreeNode)*rand(1))+1;       % generate random number between 1 and length(maxDegreeNode)
                maxDegreeNode = maxDegreeNode(maxDegreeIndex);                 % randomly choose which node with max remaining degree credits to use
            end
            nodeA = maxDegreeNode;

            % GENERATE CONNECTION PROBABILITIES -----------------------------------
            nodeAcreditNodes = creditNodes;                                    % initialize list of nodes with remaining degree credits that are not connected to node A
            for i = 1:length(creditNodes)                                      
                if A(nodeA,creditNodes(i)) == 1
                    nodeAcreditNodes = nodeAcreditNodes(nodeAcreditNodes ~= creditNodes(i)); % remove nodes already connected to node A from list of nodes able to be connected to node A
                end
            end
            
            if ~isempty(nodeAcreditNodes)
                connectProb = zeros(1,length(nodeAcreditNodes));                   % initialize connection probability list
                for j = 1:length(nodeAcreditNodes)                 
                    connectProb(j) = degreeCred(nodeAcreditNodes(j))/sum(degreeCred(nodeAcreditNodes));       % connection probability: p = remaining degree credits for node l/total remaining degree credits
                end
                connectProb = cumsum(connectProb);
            else
                connectProb = [];
            end

            numEdgeAttempts = numEdgeAttempts + 1;

        end

        if numEdgeAttempts == maxEdgeAttempts                              % if node A cannot be connected to any other nodes
            numNetworkAttempts = numNetworkAttempts + 1;                   % increase count of attempts at generating a network
            break                                                          % break out of while loop
        end

        % GENERATE NODE B------------------------------------------------------
        randNum = rand(1);                                        % generate random number, U(0,1)

        connectIndex = 1;                                         % initialize connectNode index
        while (randNum > connectProb(connectIndex)) && (connectIndex < length(nodeAcreditNodes))
            connectIndex = connectIndex + 1;                      % find index that corresponds to randNum
        end
        nodeB = nodeAcreditNodes(connectIndex);

        while A(nodeA,nodeB) == 1                               % while an edge already exists between node A and node B (or node A == node B), regenerate nodeB
            randNum = rand(1);                                  % generate random number, U(0,1)
            connectIndex = 1;                                   % initialize connectNode index
            while (randNum > connectProb(connectIndex)) && (connectIndex < length(degreeCred))
                connectIndex = connectIndex + 1;
            end
            nodeB = creditNodes(connectIndex);
        end

        % CONNECT NODE A TO NODE B --------------------------------------------

        A(nodeA,nodeB) = 1;                             % assign an edge between node A and node B
        A(nodeB,nodeA) = 1;                             % assign an edge between node B and node A

        degreeCred(nodeA) = degreeCred(nodeA) - 1;      % decrease remaining degree credit for node A by 1
        degreeCred(nodeB) = degreeCred(nodeB) - 1;      % decrease remaining degree credit for node B by 1

        if degreeCred(nodeA) == 0                               % if no degree credits remain for node A
            creditNodes = creditNodes(creditNodes ~= nodeA);    % remove node A from list of nodes with remaining degree credits
        end

        if degreeCred(nodeB) == 0                               % if no degree credits remain for node A
            creditNodes = creditNodes(creditNodes ~= nodeB);    % remove node A from list of nodes with remaining degree credits
        end

    end
    
    if length(creditNodes) <= 1
        break
    end
    
end

if numNetworkAttempts == maxNetworkAttempts
    networkGenErr = 999;
else
    networkGenErr = 0;
end