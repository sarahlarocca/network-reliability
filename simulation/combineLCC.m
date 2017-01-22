cd LCC

S1 = zeros(20000,1);
S10 = zeros(20000,1);
S25 = zeros(20000,1);
S50 = zeros(20000,1);
S75 = zeros(20000,1);

numDisconnect1 = zeros(20000,1);
numDisconnect10 = zeros(20000,1);
numDisconnect25 = zeros(20000,1);
numDisconnect50 = zeros(20000,1);
numDisconnect75 = zeros(20000,1);

t = 1;

for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_A500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_A700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_A900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_A950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_A975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_A1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_B500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_B700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_B1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end



for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_C500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_C700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_C900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_C950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_C975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_C1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end



for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_D500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_D700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_D900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_D950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_D975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_D1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end



for i = 1:10
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_E500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_E700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_E900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_E950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_E975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1:100
            fileName = strcat('LCC_E1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1(t) = sizeS(1);
            S10(t) = sizeS(2);
            S25(t) = sizeS(3);
            S50(t) = sizeS(4);
            S75(t) = sizeS(5);
            
            numDisconnect1(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1 S10 S25 S50 S75 numDisconnect1 numDisconnect10 numDisconnect25 numDisconnect50 numDisconnect75
            
            t = t + 1;
        end
    end
end