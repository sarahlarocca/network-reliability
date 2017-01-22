function [Cb] = betweenness(A,n)

Cb = zeros(1,n);

for s = 1:n
    S = [];
    P = cell(1,n);
    sigma = zeros(1,n);
    sigma(s) = 1;
    d = -1*ones(1,n);
    d(s) = 0;
    Q = [];
    Q = [Q s];
    while ~isempty(Q)
        v = Q(1);
        Q(1) = [];
        S = [v S];
        neighbors = [];                             % reset neighbors vector
        neighbors = find(A(v,:)==1);                % find neighbors of v
        neighbors = neighbors(neighbors ~= v);      % remove node v from list of neighbors
        for w = neighbors
            if d(w) < 0
                Q = [Q w];
                d(w) = d(v) + 1;
            end
            if d(w) == (d(v) + 1)
                sigma(w) = sigma(w) + sigma(v);
                P{w} = [P{w} v];
            end
        end
    end
    delta = zeros(1,n);
    while ~isempty(S)
        w = S(1);
        S(1) = [];
        for v = P{w}
            delta(v) = delta(v) + (sigma(v)/sigma(w))*(1 + delta(w));
        end
        if w ~= s
            Cb(w) = Cb(w) + delta(w);
        end
    end
end

% from Brandes "A Faster Algorithm for Betweenness Centrality"