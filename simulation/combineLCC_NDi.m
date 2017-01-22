cd LCC_NDi

S1_NDi = zeros(20000,1);
S10_NDi = zeros(20000,1);
S25_NDi = zeros(20000,1);
S50_NDi = zeros(20000,1);
S75_NDi = zeros(20000,1);

numDisconnect1_NDi = zeros(20000,1);
numDisconnect10_NDi = zeros(20000,1);
numDisconnect25_NDi = zeros(20000,1);
numDisconnect50_NDi = zeros(20000,1);
numDisconnect75_NDi = zeros(20000,1);

t = 1;

for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_A500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_A700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_A900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_A950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_A975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_A1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_B500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_B700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_B1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);

            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end



for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_C500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_C700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_C900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_C950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_C975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_C1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end



for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_D500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_D700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end

end

for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_D900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_D950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_D975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_D1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end



for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_E500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_E700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_E900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_E950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_E975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NDi_E1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NDi(t) = sizeS(1);
            S10_NDi(t) = sizeS(2);
            S25_NDi(t) = sizeS(3);
            S50_NDi(t) = sizeS(4);
            S75_NDi(t) = sizeS(5);
            
            numDisconnect1_NDi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NDi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NDi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NDi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NDi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NDi S10_NDi S25_NDi S50_NDi S75_NDi numDisconnect1_NDi numDisconnect10_NDi numDisconnect25_NDi numDisconnect50_NDi numDisconnect75_NDi
            
            t = t + 1;
        end
    end
end
