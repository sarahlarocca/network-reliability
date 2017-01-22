S1_NDr_full = zeros(200000,1);
S10_NDr_full = zeros(200000,1);
S25_NDr_full = zeros(200000,1);
S50_NDr_full = zeros(200000,1);
S75_NDr_full = zeros(200000,1);

numDisconnect1_NDr_full = zeros(200000,1);
numDisconnect10_NDr_full = zeros(200000,1);
numDisconnect25_NDr_full = zeros(200000,1);
numDisconnect50_NDr_full = zeros(200000,1);
numDisconnect75_NDr_full = zeros(200000,1);

r = 0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_A500.mat')
s = length(S1_NDr);

S1_NDr_full(1:(s+r)) = S1_NDr;
S10_NDr_full(1:(s+r)) = S10_NDr;
S25_NDr_full(1:(s+r)) = S25_NDr;
S50_NDr_full(1:(s+r)) = S50_NDr;
S75_NDr_full(1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_A700.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_A900.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_A950.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_A975.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_A1000.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_B500.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_B700.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_B1000.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_C500.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_C700.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_C900.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_C950.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_C975.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_C1000.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_D500.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_D700.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_D900.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_D950.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_D975.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_D1000.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_E500.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_E700.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_E900.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_E950.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_E975.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('LCC_NDr_E1000.mat')
s = length(S1_NDr);

S1_NDr_full(r+1:(s+r)) = S1_NDr;
S10_NDr_full(r+1:(s+r)) = S10_NDr;
S25_NDr_full(r+1:(s+r)) = S25_NDr;
S50_NDr_full(r+1:(s+r)) = S50_NDr;
S75_NDr_full(r+1:(s+r)) = S75_NDr;

numDisconnect1_NDr_full(r+1:(s+r)) = numDisconnect1_NDr;
numDisconnect10_NDr_full(r+1:(s+r)) = numDisconnect10_NDr;
numDisconnect25_NDr_full(r+1:(s+r)) = numDisconnect25_NDr;
numDisconnect50_NDr_full(r+1:(s+r)) = numDisconnect50_NDr;
numDisconnect75_NDr_full(r+1:(s+r)) = numDisconnect75_NDr;

r = s + r;

clearvars -except r S1_NDr_full S10_NDr_full S25_NDr_full S50_NDr_full S75_NDr_full numDisconnect1_NDr_full numDisconnect10_NDr_full numDisconnect25_NDr_full numDisconnect50_NDr_full numDisconnect75_NDr_full
