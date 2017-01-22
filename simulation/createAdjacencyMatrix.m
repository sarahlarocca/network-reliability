% Create adjacency matrix
n = max(max(IEEERTS96));
A = zeros(n,n);
for i = 1:n
    A(i,i) = 1;
end
for i = 1:length(IEEERTS96)
    A(IEEERTS96(i,1),IEEERTS96(i,2)) = 1;
    A(IEEERTS96(i,2),IEEERTS96(i,1)) = 1;    
end

A_IEEERTS96 = cell(1,1);
A_IEEERTS96{1} = cell(1,1);
A_IEEERTS96{1}{1} = A;

n_IEEERTS96 = n;