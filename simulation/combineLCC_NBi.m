cd LCC_NBi

S1_NBi = zeros(20000,1);
S10_NBi = zeros(20000,1);
S25_NBi = zeros(20000,1);
S50_NBi = zeros(20000,1);
S75_NBi = zeros(20000,1);

numDisconnect1_NBi = zeros(20000,1);
numDisconnect10_NBi = zeros(20000,1);
numDisconnect25_NBi = zeros(20000,1);
numDisconnect50_NBi = zeros(20000,1);
numDisconnect75_NBi = zeros(20000,1);

t = 1;

for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_A500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_A700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_A900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_A950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_A975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_A1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_B500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_B700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_B1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);

            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end



for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_C500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_C700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_C900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_C950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_C975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_C1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end



for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_D500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_D700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end

end

for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_D900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_D950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_D975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_D1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end



for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_E500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_E700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_E900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_E950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_E975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_NBi_E1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBi(t) = sizeS(1);
            S10_NBi(t) = sizeS(2);
            S25_NBi(t) = sizeS(3);
            S50_NBi(t) = sizeS(4);
            S75_NBi(t) = sizeS(5);
            
            numDisconnect1_NBi(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBi(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBi(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBi(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBi(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBi S10_NBi S25_NBi S50_NBi S75_NBi numDisconnect1_NBi numDisconnect10_NBi numDisconnect25_NBi numDisconnect50_NBi numDisconnect75_NBi
            
            t = t + 1;
        end
    end
end
