function [cFailures] = cascade(A,n,failures,failureType,failureLevels,loadMeasure,alpha)

% A := adjacency matrix of initial network
% n := size of initial network
% failures := vector of failures
% failureType := type of failures: node or edge
% failureLevels := number of elements to fail
% loadMeasure := surrogate measure for load: betweenness
% alpha := component failure tolerance

AcFail = cell(1,length(failureLevels));             % initialize failed adjacency matrix

switch failureType
    case 'edge'
        cFailures = cell(1,1);                      % initialize matrix of cascading failures
        cFailures{1} = cell(1,1);
        i = 1;
        for l = failureLevels
            AcFail{i} = A;                          % initialize adjacency matrix for cascading failures
            for q = 1:l
                AcFail{i}(failures(q,1),failures(q,2)) = 0;     % remove initially failed nodes from network
                AcFail{i}(failures(q,2),failures(q,1)) = 0;
            end
            switch loadMeasure
                case 'betweenness'
                    loadInit = edgeBetweenness(A,n);    % calculate initial "load"
                    cascadeDone = 0;
                    k = 1;
                    while cascadeDone == 0
                        CbFail = edgeBetweenness(AcFail{i},n);               % calculate new "load"
                        cFailures{i}{k} = []; 
                        for j1 = 1:n                                       % for all edges in the network
                            for j2 = 1:n
                                if CbFail(j1,j2) > loadInit(j1,j2)*(1 + alpha)    % if the new "load" exceeds capacity
                                    cFailures{i}{k} = [cFailures{i}{k}; j1 j2];    % add edge to list of failed nodes
                                    AcFail{i}(j1,j2) = 0;                            % remove edge from network
                                    AcFail{i}(j2,j1) = 0;                            % remove edge from network
                                end
                            end
                        end
                        if isempty(cFailures{i}{k})
                            cascadeDone = 1;
                        end
                        k = k + 1;
                    end
            end
            i = i + 1;
        end
        
    case 'node'
        cFailures = cell(1,1);                      % initialize matrix of cascading failures
        cFailures{1} = cell(1,1);
        i = 1;
        
        for l = failureLevels
            AcFail{i} = A;                         % initialize adjacency matrix for cascading failures
            AcFail{i}(failures(1:l),:) = 0;        % remove initially failed nodes from network
            AcFail{i}(:,failures(1:l)) = 0;
            
            switch loadMeasure
                case 'betweenness'
                    loadInit = betweenness(A,n);  % calculate initial "load"
                    cascadeDone = 0;
                    k = 1;                      % initialize index for cascade iteration number
                    while cascadeDone == 0
                        CbFail = betweenness(AcFail{i},n);               % calculate new "load"
                        cFailures{i}{k} = [];                               
                        for j = 1:n                                         % for all nodes in the networks
                            if CbFail(j) > loadInit(j)*(1 + alpha)    % if the new "load" exceeds capacity
                                cFailures{i}{k} = [cFailures{i}{k} j];      % add node to list of failed nodes
                                AcFail{i}(j,:) = 0;                            % remove node from network
                                AcFail{i}(:,j) = 0;                            % remove node from network
                            end
                        end
                        if isempty(cFailures{i}{k})
                            cascadeDone = 1;
                        end
                        k = k + 1;
                    end
            end
            i = i + 1;
        end
end