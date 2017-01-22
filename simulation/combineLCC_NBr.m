cd LCC_NBr

S1_NBr = zeros(200,1);
S10_NBr = zeros(200,1);
S25_NBr = zeros(200,1);
S50_NBr = zeros(200,1);
S75_NBr = zeros(200,1);

numDisconnect1_NBr = zeros(200,1);
numDisconnect10_NBr = zeros(200,1);
numDisconnect25_NBr = zeros(200,1);
numDisconnect50_NBr = zeros(200,1);
numDisconnect75_NBr = zeros(200,1);

t = 1;

for i = 1:10
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_A500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_A700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_A900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_A950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_A975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_A1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:10
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_B500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_B700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_B1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);

            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end



for i = 1:10
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_C500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_C700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_C900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_C950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_C975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_C1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end



for i = 1:10
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_D500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_D700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end

end

for i = 1:2
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_D900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_D950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_D975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_D1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end



for i = 1:10
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_E500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:5
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_E700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:2
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_E900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_E950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_E975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end

for i = 1:1
    for j = 1:20
        for k = 1
            fileName = strcat('LCC_NBr_E1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            S1_NBr(t) = sizeS(1);
            S10_NBr(t) = sizeS(2);
            S25_NBr(t) = sizeS(3);
            S50_NBr(t) = sizeS(4);
            S75_NBr(t) = sizeS(5);
            
            numDisconnect1_NBr(t) = length(disconnectedComponents{1}) - 1;
            numDisconnect10_NBr(t) = length(disconnectedComponents{2}) - 1;
            numDisconnect25_NBr(t) = length(disconnectedComponents{3}) - 1;
            numDisconnect50_NBr(t) = length(disconnectedComponents{4}) - 1;
            numDisconnect75_NBr(t) = length(disconnectedComponents{5}) - 1;
            
            clearvars -except i j k t S1_NBr S10_NBr S25_NBr S50_NBr S75_NBr numDisconnect1_NBr numDisconnect10_NBr numDisconnect25_NBr numDisconnect50_NBr numDisconnect75_NBr
            
            t = t + 1;
        end
    end
end
