cd /media/Files/JHU/Infrastructure/randomgraphs2011/current

pathwayLink = csvread('pathwayLinkV2.csv');

unq = unique(pathwayLink(:,1:2));

for i = 1:length(unq)
    pathwayLink(find(pathwayLink==unq(i))) = i;
end

pathwayLink = pathwayLink(:,1:2);

n = length(unq);
A = zeros(n,n);

for i = 1:n
    A(pathwayLink(i,1),pathwayLink(i,2)) = 1;
    A(i,i) = 1;
end

A_eco = cell(1,1);
A_eco{1} = cell(1,1);
A_eco{1}{1} = A;
n_eco = n;
networkParamsEco = [n 0 0 1000 1000 0 1 1];