function [connected, networkCon] = networkConnect(A,n)

visited = zeros(1,n);           % initialize vector of visited nodes; 0 = not visited, 1 = visited
Q = [];                         % initialize queue

v = floor((rand(1)*n)+1);       % choose start node
visited(v) = 1;                 % mark start node as visited
Q = v;                          % add start node to queue

while ~isempty(Q);
    u = Q(1);   
    Wu = find(A(u,:));
    Wu = Wu(Wu ~= u);
    for w = Wu
        if (visited(w) == 0)
            Q = [Q w];
            visited(w) = 1;
        end
    end
    Q = Q(2:length(Q));
end

networkCon = visited;
if sum(networkCon) == n
    connected = 1;
else
    connected = 0;
end