%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(20000,1);
S10_NDr = zeros(20000,1);
S25_NDr = zeros(20000,1);
S50_NDr = zeros(20000,1);
S75_NDr = zeros(20000,1);

numDisconnect1_NDr = zeros(20000,1);
numDisconnect10_NDr = zeros(20000,1);
numDisconnect25_NDr = zeros(20000,1);
numDisconnect50_NDr = zeros(20000,1);
numDisconnect75_NDr = zeros(20000,1);

t = 1;

for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_A500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_A500.mat')
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(10000,1);
S10_NDr = zeros(10000,1);
S25_NDr = zeros(10000,1);
S50_NDr = zeros(10000,1);
S75_NDr = zeros(10000,1);

numDisconnect1_NDr = zeros(10000,1);
numDisconnect10_NDr = zeros(10000,1);
numDisconnect25_NDr = zeros(10000,1);
numDisconnect50_NDr = zeros(10000,1);
numDisconnect75_NDr = zeros(10000,1);

t = 1;

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_A700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_A700.mat')
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(4000,1);
S10_NDr = zeros(4000,1);
S25_NDr = zeros(4000,1);
S50_NDr = zeros(4000,1);
S75_NDr = zeros(4000,1);

numDisconnect1_NDr = zeros(4000,1);
numDisconnect10_NDr = zeros(4000,1);
numDisconnect25_NDr = zeros(4000,1);
numDisconnect50_NDr = zeros(4000,1);
numDisconnect75_NDr = zeros(4000,1);

t = 1;
for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_A900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end

save('LCC_NDr_A900.mat')
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(2000,1);
S10_NDr = zeros(2000,1);
S25_NDr = zeros(2000,1);
S50_NDr = zeros(2000,1);
S75_NDr = zeros(2000,1);

numDisconnect1_NDr = zeros(2000,1);
numDisconnect10_NDr = zeros(2000,1);
numDisconnect25_NDr = zeros(2000,1);
numDisconnect50_NDr = zeros(2000,1);
numDisconnect75_NDr = zeros(2000,1);

t = 1;

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_A950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_A950.mat')
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(2000,1);
S10_NDr = zeros(2000,1);
S25_NDr = zeros(2000,1);
S50_NDr = zeros(2000,1);
S75_NDr = zeros(2000,1);

numDisconnect1_NDr = zeros(2000,1);
numDisconnect10_NDr = zeros(2000,1);
numDisconnect25_NDr = zeros(2000,1);
numDisconnect50_NDr = zeros(2000,1);
numDisconnect75_NDr = zeros(2000,1);

t = 1;

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_A975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end

save('LCC_NDr_A975.mat')
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(2000,1);
S10_NDr = zeros(2000,1);
S25_NDr = zeros(2000,1);
S50_NDr = zeros(2000,1);
S75_NDr = zeros(2000,1);

numDisconnect1_NDr = zeros(2000,1);
numDisconnect10_NDr = zeros(2000,1);
numDisconnect25_NDr = zeros(2000,1);
numDisconnect50_NDr = zeros(2000,1);
numDisconnect75_NDr = zeros(2000,1);

t = 1;

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_A1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_A1000.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(20000,1);
S10_NDr = zeros(20000,1);
S25_NDr = zeros(20000,1);
S50_NDr = zeros(20000,1);
S75_NDr = zeros(20000,1);

numDisconnect1_NDr = zeros(20000,1);
numDisconnect10_NDr = zeros(20000,1);
numDisconnect25_NDr = zeros(20000,1);
numDisconnect50_NDr = zeros(20000,1);
numDisconnect75_NDr = zeros(20000,1);

t = 1;

for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_B500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_B500.mat')
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(10000,1);
S10_NDr = zeros(10000,1);
S25_NDr = zeros(10000,1);
S50_NDr = zeros(10000,1);
S75_NDr = zeros(10000,1);

numDisconnect1_NDr = zeros(10000,1);
numDisconnect10_NDr = zeros(10000,1);
numDisconnect25_NDr = zeros(10000,1);
numDisconnect50_NDr = zeros(10000,1);
numDisconnect75_NDr = zeros(10000,1);

t = 1;

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_B700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_B700.mat')
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(10000,1);
S10_NDr = zeros(10000,1);
S25_NDr = zeros(10000,1);
S50_NDr = zeros(10000,1);
S75_NDr = zeros(10000,1);

numDisconnect1_NDr = zeros(10000,1);
numDisconnect10_NDr = zeros(10000,1);
numDisconnect25_NDr = zeros(10000,1);
numDisconnect50_NDr = zeros(10000,1);
numDisconnect75_NDr = zeros(10000,1);

t = 1;
for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_B1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);

            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_B1000.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(20000,1);
S10_NDr = zeros(20000,1);
S25_NDr = zeros(20000,1);
S50_NDr = zeros(20000,1);
S75_NDr = zeros(20000,1);

numDisconnect1_NDr = zeros(20000,1);
numDisconnect10_NDr = zeros(20000,1);
numDisconnect25_NDr = zeros(20000,1);
numDisconnect50_NDr = zeros(20000,1);
numDisconnect75_NDr = zeros(20000,1);

t = 1;


for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_C500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_C500.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(10000,1);
S10_NDr = zeros(10000,1);
S25_NDr = zeros(10000,1);
S50_NDr = zeros(10000,1);
S75_NDr = zeros(10000,1);

numDisconnect1_NDr = zeros(10000,1);
numDisconnect10_NDr = zeros(10000,1);
numDisconnect25_NDr = zeros(10000,1);
numDisconnect50_NDr = zeros(10000,1);
numDisconnect75_NDr = zeros(10000,1);

t = 1;
for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_C700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_C700.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(4000,1);
S10_NDr = zeros(4000,1);
S25_NDr = zeros(4000,1);
S50_NDr = zeros(4000,1);
S75_NDr = zeros(4000,1);

numDisconnect1_NDr = zeros(4000,1);
numDisconnect10_NDr = zeros(4000,1);
numDisconnect25_NDr = zeros(4000,1);
numDisconnect50_NDr = zeros(4000,1);
numDisconnect75_NDr = zeros(4000,1);

t = 1;
for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_C900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_C900.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(2000,1);
S10_NDr = zeros(2000,1);
S25_NDr = zeros(2000,1);
S50_NDr = zeros(2000,1);
S75_NDr = zeros(2000,1);

numDisconnect1_NDr = zeros(2000,1);
numDisconnect10_NDr = zeros(2000,1);
numDisconnect25_NDr = zeros(2000,1);
numDisconnect50_NDr = zeros(2000,1);
numDisconnect75_NDr = zeros(2000,1);

t = 1;
for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_C950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_C950.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(2000,1);
S10_NDr = zeros(2000,1);
S25_NDr = zeros(2000,1);
S50_NDr = zeros(2000,1);
S75_NDr = zeros(2000,1);

numDisconnect1_NDr = zeros(2000,1);
numDisconnect10_NDr = zeros(2000,1);
numDisconnect25_NDr = zeros(2000,1);
numDisconnect50_NDr = zeros(2000,1);
numDisconnect75_NDr = zeros(2000,1);

t = 1;
for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_C975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_C975.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(2000,1);
S10_NDr = zeros(2000,1);
S25_NDr = zeros(2000,1);
S50_NDr = zeros(2000,1);
S75_NDr = zeros(2000,1);

numDisconnect1_NDr = zeros(2000,1);
numDisconnect10_NDr = zeros(2000,1);
numDisconnect25_NDr = zeros(2000,1);
numDisconnect50_NDr = zeros(2000,1);
numDisconnect75_NDr = zeros(2000,1);

t = 1;
for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_C1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_C1000.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(20000,1);
S10_NDr = zeros(20000,1);
S25_NDr = zeros(20000,1);
S50_NDr = zeros(20000,1);
S75_NDr = zeros(20000,1);

numDisconnect1_NDr = zeros(20000,1);
numDisconnect10_NDr = zeros(20000,1);
numDisconnect25_NDr = zeros(20000,1);
numDisconnect50_NDr = zeros(20000,1);
numDisconnect75_NDr = zeros(20000,1);

t = 1;

for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_D500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_D500.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(10000,1);
S10_NDr = zeros(10000,1);
S25_NDr = zeros(10000,1);
S50_NDr = zeros(10000,1);
S75_NDr = zeros(10000,1);

numDisconnect1_NDr = zeros(10000,1);
numDisconnect10_NDr = zeros(10000,1);
numDisconnect25_NDr = zeros(10000,1);
numDisconnect50_NDr = zeros(10000,1);
numDisconnect75_NDr = zeros(10000,1);

t = 1;
for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_D700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end

end
save('LCC_NDr_D700.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(4000,1);
S10_NDr = zeros(4000,1);
S25_NDr = zeros(4000,1);
S50_NDr = zeros(4000,1);
S75_NDr = zeros(4000,1);

numDisconnect1_NDr = zeros(4000,1);
numDisconnect10_NDr = zeros(4000,1);
numDisconnect25_NDr = zeros(4000,1);
numDisconnect50_NDr = zeros(4000,1);
numDisconnect75_NDr = zeros(4000,1);

t = 1;
for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_D900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_D900.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(2000,1);
S10_NDr = zeros(2000,1);
S25_NDr = zeros(2000,1);
S50_NDr = zeros(2000,1);
S75_NDr = zeros(2000,1);

numDisconnect1_NDr = zeros(2000,1);
numDisconnect10_NDr = zeros(2000,1);
numDisconnect25_NDr = zeros(2000,1);
numDisconnect50_NDr = zeros(2000,1);
numDisconnect75_NDr = zeros(2000,1);

t = 1;
for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_D950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_D950.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(2000,1);
S10_NDr = zeros(2000,1);
S25_NDr = zeros(2000,1);
S50_NDr = zeros(2000,1);
S75_NDr = zeros(2000,1);

numDisconnect1_NDr = zeros(2000,1);
numDisconnect10_NDr = zeros(2000,1);
numDisconnect25_NDr = zeros(2000,1);
numDisconnect50_NDr = zeros(2000,1);
numDisconnect75_NDr = zeros(2000,1);

t = 1;
for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_D975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_D975.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(2000,1);
S10_NDr = zeros(2000,1);
S25_NDr = zeros(2000,1);
S50_NDr = zeros(2000,1);
S75_NDr = zeros(2000,1);

numDisconnect1_NDr = zeros(2000,1);
numDisconnect10_NDr = zeros(2000,1);
numDisconnect25_NDr = zeros(2000,1);
numDisconnect50_NDr = zeros(2000,1);
numDisconnect75_NDr = zeros(2000,1);

t = 1;
for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_D1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_D1000.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(20000,1);
S10_NDr = zeros(20000,1);
S25_NDr = zeros(20000,1);
S50_NDr = zeros(20000,1);
S75_NDr = zeros(20000,1);

numDisconnect1_NDr = zeros(20000,1);
numDisconnect10_NDr = zeros(20000,1);
numDisconnect25_NDr = zeros(20000,1);
numDisconnect50_NDr = zeros(20000,1);
numDisconnect75_NDr = zeros(20000,1);

t = 1;


for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_E500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_E500.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(10000,1);
S10_NDr = zeros(10000,1);
S25_NDr = zeros(10000,1);
S50_NDr = zeros(10000,1);
S75_NDr = zeros(10000,1);

numDisconnect1_NDr = zeros(10000,1);
numDisconnect10_NDr = zeros(10000,1);
numDisconnect25_NDr = zeros(10000,1);
numDisconnect50_NDr = zeros(10000,1);
numDisconnect75_NDr = zeros(10000,1);

t = 1;
for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_E700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_E700.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(4000,1);
S10_NDr = zeros(4000,1);
S25_NDr = zeros(4000,1);
S50_NDr = zeros(4000,1);
S75_NDr = zeros(4000,1);

numDisconnect1_NDr = zeros(4000,1);
numDisconnect10_NDr = zeros(4000,1);
numDisconnect25_NDr = zeros(4000,1);
numDisconnect50_NDr = zeros(4000,1);
numDisconnect75_NDr = zeros(4000,1);

t = 1;
for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_E900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_E900.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(2000,1);
S10_NDr = zeros(2000,1);
S25_NDr = zeros(2000,1);
S50_NDr = zeros(2000,1);
S75_NDr = zeros(2000,1);

numDisconnect1_NDr = zeros(2000,1);
numDisconnect10_NDr = zeros(2000,1);
numDisconnect25_NDr = zeros(2000,1);
numDisconnect50_NDr = zeros(2000,1);
numDisconnect75_NDr = zeros(2000,1);

t = 1;
for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_E950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_E950.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(2000,1);
S10_NDr = zeros(2000,1);
S25_NDr = zeros(2000,1);
S50_NDr = zeros(2000,1);
S75_NDr = zeros(2000,1);

numDisconnect1_NDr = zeros(2000,1);
numDisconnect10_NDr = zeros(2000,1);
numDisconnect25_NDr = zeros(2000,1);
numDisconnect50_NDr = zeros(2000,1);
numDisconnect75_NDr = zeros(2000,1);

t = 1;
for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_E975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_E975.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S1_NDr = zeros(2000,1);
S10_NDr = zeros(2000,1);
S25_NDr = zeros(2000,1);
S50_NDr = zeros(2000,1);
S75_NDr = zeros(2000,1);

numDisconnect1_NDr = zeros(2000,1);
numDisconnect10_NDr = zeros(2000,1);
numDisconnect25_NDr = zeros(2000,1);
numDisconnect50_NDr = zeros(2000,1);
numDisconnect75_NDr = zeros(2000,1);

t = 1;
for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDr_E1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDr(t) = sizeS(1);
            S10_NDr(t) = sizeS(2);
            S25_NDr(t) = sizeS(3);
            S50_NDr(t) = sizeS(4);
            S75_NDr(t) = sizeS(5);
            
            numDisconnect1_NDr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDr S10_NDr S25_NDr S50_NDr S75_NDr numDisconnect1_NDr numDisconnect10_NDr numDisconnect25_NDr numDisconnect50_NDr numDisconnect75_NDr
            
            t = t + 1
        end
    end
end
save('LCC_NDr_E1000.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
