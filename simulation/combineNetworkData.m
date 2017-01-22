%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DATA INDICES

paramIndexData = zeros(2000,1);
networkIndexData = zeros(2000,1);

t = 1;
for i = 1:100
    for j = 1:20
        paramIndexData(t) = i;
        networkIndexData(t) = j;
        t = t + 1;
    end
end

save 'indices.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SIZE

nData = zeros(2000,1);

t = 1;

load 'networksA500.mat'
for i = 1:10
    for j = 1:20
        nData(t) = n_A500(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksA700.mat'
for i = 1:5
    for j = 1:20
        nData(t) = n_A700(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksA900.mat'
for i = 1:2
    for j = 1:20
        nData(t) = n_A900(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksA950.mat'
for i = 1:1
    for j = 1:20
        nData(t) = n_A950(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksA975.mat'
for i = 1:1
    for j = 1:20
        nData(t) = n_A975(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksA1000.mat'
for i = 1:1
    for j = 1:20
        nData(t) = n_A1000(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksB500.mat'
for i = 1:10
    for j = 1:20
        nData(t) = n_B500(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksB700.mat'
for i = 1:5
    for j = 1:20
        nData(t) = n_B700(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksB1000.mat'
for i = 1:5
    for j = 1:20
        nData(t) = n_B1000(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksC500.mat'
for i = 1:10
    for j = 1:20
        nData(t) = n_C500(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksC700.mat'
for i = 1:5
    for j = 1:20
        nData(t) = n_C700(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksC900.mat'
for i = 1:2
    for j = 1:20
        nData(t) = n_C900(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksC950.mat'
for i = 1:1
    for j = 1:20
        nData(t) = n_C950(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksC975.mat'
for i = 1:1
    for j = 1:20
        nData(t) = n_C975(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksC1000.mat'
for i = 1:1
    for j = 1:20
        nData(t) = n_C1000(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksD500.mat'
for i = 1:10
    for j = 1:20
        nData(t) = n_D500(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksD700.mat'
for i = 1:5
    for j = 1:20
        nData(t) = n_D700(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksD900.mat'
for i = 1:2
    for j = 1:20
        nData(t) = n_D900(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksD950.mat'
for i = 1:1
    for j = 1:20
        nData(t) = n_D950(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksD975.mat'
for i = 1:1
    for j = 1:20
        nData(t) = n_D975(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksD1000.mat'
for i = 1:1
    for j = 1:20
        nData(t) = n_D1000(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksE500.mat'
for i = 1:10
    for j = 1:20
        nData(t) = n_E500(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksE700.mat'
for i = 1:5
    for j = 1:20
        nData(t) = n_E700(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksE900.mat'
for i = 1:2
    for j = 1:20
        nData(t) = n_E900(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksE950.mat'
for i = 1:1
    for j = 1:20
        nData(t) = n_E950(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksE975.mat'
for i = 1:1
    for j = 1:20
        nData(t) = n_E975(i);
        t = t + 1;
    end
end
clearvars -except nData t

load 'networksE1000.mat'
for i = 1:1
    for j = 1:20
        nData(t) = n_E1000(i);
        t = t + 1;
    end
end
clearvars -except nData t

save 'size.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DEGREE

kMeanData = zeros(2000,1);
kMinData = zeros(2000,1);
kMaxData = zeros(2000,1);
kStdData = zeros(2000,1);

t = 1;

load 'degreeA500.mat'
for i = 1:10
    for j = 1:20
        kMeanData(t) = kMean_A500{i}{j};
        kMinData(t) = kMin_A500{i}{j};
        kMaxData(t) = kMax_A500{i}{j};
        kStdData(t) = kStd_A500{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeA700.mat'
for i = 1:5
    for j = 1:20
        kMeanData(t) = kMean_A700{i}{j};
        kMinData(t) = kMin_A700{i}{j};
        kMaxData(t) = kMax_A700{i}{j};
        kStdData(t) = kStd_A700{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeA900.mat'
for i = 1:2
    for j = 1:20
        kMeanData(t) = kMean_A900{i}{j};
        kMinData(t) = kMin_A900{i}{j};
        kMaxData(t) = kMax_A900{i}{j};
        kStdData(t) = kStd_A900{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeA950.mat'
for i = 1:1
    for j = 1:20
        kMeanData(t) = kMean_A950{i}{j};
        kMinData(t) = kMin_A950{i}{j};
        kMaxData(t) = kMax_A950{i}{j};
        kStdData(t) = kStd_A950{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeA975.mat'
for i = 1:1
    for j = 1:20
        kMeanData(t) = kMean_A975{i}{j};
        kMinData(t) = kMin_A975{i}{j};
        kMaxData(t) = kMax_A975{i}{j};
        kStdData(t) = kStd_A975{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeA1000.mat'
for i = 1:1
    for j = 1:20
        kMeanData(t) = kMean_A1000{i}{j};
        kMinData(t) = kMin_A1000{i}{j};
        kMaxData(t) = kMax_A1000{i}{j};
        kStdData(t) = kStd_A1000{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeB500.mat'
for i = 1:10
    for j = 1:20
        kMeanData(t) = kMean_B500{i}{j};
        kMinData(t) = kMin_B500{i}{j};
        kMaxData(t) = kMax_B500{i}{j};
        kStdData(t) = kStd_B500{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeB700.mat'
for i = 1:5
    for j = 1:20
        kMeanData(t) = kMean_B700{i}{j};
        kMinData(t) = kMin_B700{i}{j};
        kMaxData(t) = kMax_B700{i}{j};
        kStdData(t) = kStd_B700{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeB1000.mat'
for i = 1:5
    for j = 1:20
        kMeanData(t) = kMean_B1000{i}{j};
        kMinData(t) = kMin_B1000{i}{j};
        kMaxData(t) = kMax_B1000{i}{j};
        kStdData(t) = kStd_B1000{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeC500.mat'
for i = 1:10
    for j = 1:20
        kMeanData(t) = kMean_C500{i}{j};
        kMinData(t) = kMin_C500{i}{j};
        kMaxData(t) = kMax_C500{i}{j};
        kStdData(t) = kStd_C500{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeC700.mat'
for i = 1:5
    for j = 1:20
        kMeanData(t) = kMean_C700{i}{j};
        kMinData(t) = kMin_C700{i}{j};
        kMaxData(t) = kMax_C700{i}{j};
        kStdData(t) = kStd_C700{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeC900.mat'
for i = 1:2
    for j = 1:20
        kMeanData(t) = kMean_C900{i}{j};
        kMinData(t) = kMin_C900{i}{j};
        kMaxData(t) = kMax_C900{i}{j};
        kStdData(t) = kStd_C900{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeC950.mat'
for i = 1:1
    for j = 1:20
        kMeanData(t) = kMean_C950{i}{j};
        kMinData(t) = kMin_C950{i}{j};
        kMaxData(t) = kMax_C950{i}{j};
        kStdData(t) = kStd_C950{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeC975.mat'
for i = 1:1
    for j = 1:20
        kMeanData(t) = kMean_C975{i}{j};
        kMinData(t) = kMin_C975{i}{j};
        kMaxData(t) = kMax_C975{i}{j};
        kStdData(t) = kStd_C975{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeC1000.mat'
for i = 1:1
    for j = 1:20
        kMeanData(t) = kMean_C1000{i}{j};
        kMinData(t) = kMin_C1000{i}{j};
        kMaxData(t) = kMax_C1000{i}{j};
        kStdData(t) = kStd_C1000{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeD500.mat'
for i = 1:10
    for j = 1:20
        kMeanData(t) = kMean_D500{i}{j};
        kMinData(t) = kMin_D500{i}{j};
        kMaxData(t) = kMax_D500{i}{j};
        kStdData(t) = kStd_D500{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeD700.mat'
for i = 1:5
    for j = 1:20
        kMeanData(t) = kMean_D700{i}{j};
        kMinData(t) = kMin_D700{i}{j};
        kMaxData(t) = kMax_D700{i}{j};
        kStdData(t) = kStd_D700{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeD900.mat'
for i = 1:2
    for j = 1:20
        kMeanData(t) = kMean_D900{i}{j};
        kMinData(t) = kMin_D900{i}{j};
        kMaxData(t) = kMax_D900{i}{j};
        kStdData(t) = kStd_D900{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeD950.mat'
for i = 1:1
    for j = 1:20
        kMeanData(t) = kMean_D950{i}{j};
        kMinData(t) = kMin_D950{i}{j};
        kMaxData(t) = kMax_D950{i}{j};
        kStdData(t) = kStd_D950{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeD975.mat'
for i = 1:1
    for j = 1:20
        kMeanData(t) = kMean_D975{i}{j};
        kMinData(t) = kMin_D975{i}{j};
        kMaxData(t) = kMax_D975{i}{j};
        kStdData(t) = kStd_D975{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeD1000.mat'
for i = 1:1
    for j = 1:20
        kMeanData(t) = kMean_D1000{i}{j};
        kMinData(t) = kMin_D1000{i}{j};
        kMaxData(t) = kMax_D1000{i}{j};
        kStdData(t) = kStd_D1000{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeE500.mat'
for i = 1:10
    for j = 1:20
        kMeanData(t) = kMean_E500{i}{j};
        kMinData(t) = kMin_E500{i}{j};
        kMaxData(t) = kMax_E500{i}{j};
        kStdData(t) = kStd_E500{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeE700.mat'
for i = 1:5
    for j = 1:20
        kMeanData(t) = kMean_E700{i}{j};
        kMinData(t) = kMin_E700{i}{j};
        kMaxData(t) = kMax_E700{i}{j};
        kStdData(t) = kStd_E700{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeE900.mat'
for i = 1:2
    for j = 1:20
        kMeanData(t) = kMean_E900{i}{j};
        kMinData(t) = kMin_E900{i}{j};
        kMaxData(t) = kMax_E900{i}{j};
        kStdData(t) = kStd_E900{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeE950.mat'
for i = 1:1
    for j = 1:20
        kMeanData(t) = kMean_E950{i}{j};
        kMinData(t) = kMin_E950{i}{j};
        kMaxData(t) = kMax_E950{i}{j};
        kStdData(t) = kStd_E950{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeE975.mat'
for i = 1:1
    for j = 1:20
        kMeanData(t) = kMean_E975{i}{j};
        kMinData(t) = kMin_E975{i}{j};
        kMaxData(t) = kMax_E975{i}{j};
        kStdData(t) = kStd_E975{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

load 'degreeE1000.mat'
for i = 1:1
    for j = 1:20
        kMeanData(t) = kMean_E1000{i}{j};
        kMinData(t) = kMin_E1000{i}{j};
        kMaxData(t) = kMax_E1000{i}{j};
        kStdData(t) = kStd_E1000{i}{j};
        t = t + 1;
    end
end
clearvars -except kMeanData kMinData kMaxData kStdData t

save 'degree.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BETWEENNESS

CbMeanData = zeros(2000,1);
CbMinData = zeros(2000,1);
CbMaxData = zeros(2000,1);
CbStdData = zeros(2000,1);

t = 1;

load 'betweennessStatsA500.mat'
for i = 1:10
    for j = 1:20
        CbMeanData(t) = CbMean_A500{i}{j};
        CbMinData(t) = CbMin_A500{i}{j};
        CbMaxData(t) = CbMax_A500{i}{j};
        CbStdData(t) = CbStd_A500{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsA700.mat'
for i = 1:5
    for j = 1:20
        CbMeanData(t) = CbMean_A700{i}{j};
        CbMinData(t) = CbMin_A700{i}{j};
        CbMaxData(t) = CbMax_A700{i}{j};
        CbStdData(t) = CbStd_A700{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsA900.mat'
for i = 1:2
    for j = 1:20
        CbMeanData(t) = CbMean_A900{i}{j};
        CbMinData(t) = CbMin_A900{i}{j};
        CbMaxData(t) = CbMax_A900{i}{j};
        CbStdData(t) = CbStd_A900{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsA950.mat'
for i = 1:1
    for j = 1:20
        CbMeanData(t) = CbMean_A950{i}{j};
        CbMinData(t) = CbMin_A950{i}{j};
        CbMaxData(t) = CbMax_A950{i}{j};
        CbStdData(t) = CbStd_A950{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsA975.mat'
for i = 1:1
    for j = 1:20
        CbMeanData(t) = CbMean_A975{i}{j};
        CbMinData(t) = CbMin_A975{i}{j};
        CbMaxData(t) = CbMax_A975{i}{j};
        CbStdData(t) = CbStd_A975{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsA1000.mat'
for i = 1:1
    for j = 1:20
        CbMeanData(t) = CbMean_A1000{i}{j};
        CbMinData(t) = CbMin_A1000{i}{j};
        CbMaxData(t) = CbMax_A1000{i}{j};
        CbStdData(t) = CbStd_A1000{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsB500.mat'
for i = 1:10
    for j = 1:20
        CbMeanData(t) = CbMean_B500{i}{j};
        CbMinData(t) = CbMin_B500{i}{j};
        CbMaxData(t) = CbMax_B500{i}{j};
        CbStdData(t) = CbStd_B500{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsB700.mat'
for i = 1:5
    for j = 1:20
        CbMeanData(t) = CbMean_B700{i}{j};
        CbMinData(t) = CbMin_B700{i}{j};
        CbMaxData(t) = CbMax_B700{i}{j};
        CbStdData(t) = CbStd_B700{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsB1000.mat'
for i = 1:5
    for j = 1:20
        CbMeanData(t) = CbMean_B1000{i}{j};
        CbMinData(t) = CbMin_B1000{i}{j};
        CbMaxData(t) = CbMax_B1000{i}{j};
        CbStdData(t) = CbStd_B1000{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t


load 'betweennessStatsC500.mat'
for i = 1:10
    for j = 1:20
        CbMeanData(t) = CbMean_C500{i}{j};
        CbMinData(t) = CbMin_C500{i}{j};
        CbMaxData(t) = CbMax_C500{i}{j};
        CbStdData(t) = CbStd_C500{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsC700.mat'
for i = 1:5
    for j = 1:20
        CbMeanData(t) = CbMean_C700{i}{j};
        CbMinData(t) = CbMin_C700{i}{j};
        CbMaxData(t) = CbMax_C700{i}{j};
        CbStdData(t) = CbStd_C700{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsC900.mat'
for i = 1:2
    for j = 1:20
        CbMeanData(t) = CbMean_C900{i}{j};
        CbMinData(t) = CbMin_C900{i}{j};
        CbMaxData(t) = CbMax_C900{i}{j};
        CbStdData(t) = CbStd_C900{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsC950.mat'
for i = 1:1
    for j = 1:20
        CbMeanData(t) = CbMean_C950{i}{j};
        CbMinData(t) = CbMin_C950{i}{j};
        CbMaxData(t) = CbMax_C950{i}{j};
        CbStdData(t) = CbStd_C950{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsC975.mat'
for i = 1:1
    for j = 1:20
        CbMeanData(t) = CbMean_C975{i}{j};
        CbMinData(t) = CbMin_C975{i}{j};
        CbMaxData(t) = CbMax_C975{i}{j};
        CbStdData(t) = CbStd_C975{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsC1000.mat'
for i = 1:1
    for j = 1:20
        CbMeanData(t) = CbMean_C1000{i}{j};
        CbMinData(t) = CbMin_C1000{i}{j};
        CbMaxData(t) = CbMax_C1000{i}{j};
        CbStdData(t) = CbStd_C1000{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t


load 'betweennessStatsD500.mat'
for i = 1:10
    for j = 1:20
        CbMeanData(t) = CbMean_D500{i}{j};
        CbMinData(t) = CbMin_D500{i}{j};
        CbMaxData(t) = CbMax_D500{i}{j};
        CbStdData(t) = CbStd_D500{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsD700.mat'
for i = 1:5
    for j = 1:20
        CbMeanData(t) = CbMean_D700{i}{j};
        CbMinData(t) = CbMin_D700{i}{j};
        CbMaxData(t) = CbMax_D700{i}{j};
        CbStdData(t) = CbStd_D700{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsD900.mat'
for i = 1:2
    for j = 1:20
        CbMeanData(t) = CbMean_D900{i}{j};
        CbMinData(t) = CbMin_D900{i}{j};
        CbMaxData(t) = CbMax_D900{i}{j};
        CbStdData(t) = CbStd_D900{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsD950.mat'
for i = 1:1
    for j = 1:20
        CbMeanData(t) = CbMean_D950{i}{j};
        CbMinData(t) = CbMin_D950{i}{j};
        CbMaxData(t) = CbMax_D950{i}{j};
        CbStdData(t) = CbStd_D950{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsD975.mat'
for i = 1:1
    for j = 1:20
        CbMeanData(t) = CbMean_D975{i}{j};
        CbMinData(t) = CbMin_D975{i}{j};
        CbMaxData(t) = CbMax_D975{i}{j};
        CbStdData(t) = CbStd_D975{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsD1000.mat'
for i = 1:1
    for j = 1:20
        CbMeanData(t) = CbMean_D1000{i}{j};
        CbMinData(t) = CbMin_D1000{i}{j};
        CbMaxData(t) = CbMax_D1000{i}{j};
        CbStdData(t) = CbStd_D1000{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t


load 'betweennessStatsE500.mat'
for i = 1:10
    for j = 1:20
        CbMeanData(t) = CbMean_E500{i}{j};
        CbMinData(t) = CbMin_E500{i}{j};
        CbMaxData(t) = CbMax_E500{i}{j};
        CbStdData(t) = CbStd_E500{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsE700.mat'
for i = 1:5
    for j = 1:20
        CbMeanData(t) = CbMean_E700{i}{j};
        CbMinData(t) = CbMin_E700{i}{j};
        CbMaxData(t) = CbMax_E700{i}{j};
        CbStdData(t) = CbStd_E700{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsE900.mat'
for i = 1:2
    for j = 1:20
        CbMeanData(t) = CbMean_E900{i}{j};
        CbMinData(t) = CbMin_E900{i}{j};
        CbMaxData(t) = CbMax_E900{i}{j};
        CbStdData(t) = CbStd_E900{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsE950.mat'
for i = 1:1
    for j = 1:20
        CbMeanData(t) = CbMean_E950{i}{j};
        CbMinData(t) = CbMin_E950{i}{j};
        CbMaxData(t) = CbMax_E950{i}{j};
        CbStdData(t) = CbStd_E950{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsE975.mat'
for i = 1:1
    for j = 1:20
        CbMeanData(t) = CbMean_E975{i}{j};
        CbMinData(t) = CbMin_E975{i}{j};
        CbMaxData(t) = CbMax_E975{i}{j};
        CbStdData(t) = CbStd_E975{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

load 'betweennessStatsE1000.mat'
for i = 1:1
    for j = 1:20
        CbMeanData(t) = CbMean_E1000{i}{j};
        CbMinData(t) = CbMin_E1000{i}{j};
        CbMaxData(t) = CbMax_E1000{i}{j};
        CbStdData(t) = CbStd_E1000{i}{j};
        t = t + 1;
    end
end
clearvars -except CbMeanData CbMinData CbMaxData CbStdData t

save 'betweenness.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CLUSTERING

CmeanData = zeros(2000,1);
CminData = zeros(2000,1);
CmaxData = zeros(2000,1);
CstdData = zeros(2000,1);

t = 1;

load 'clusteringA500.mat'
for i = 1:10
    for j = 1:20
        CmeanData(t) = Cmean_A500{i}{j};
        CminData(t) = Cmin_A500{i}{j};
        CmaxData(t) = Cmax_A500{i}{j};
        CstdData(t) = Cstd_A500{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringA700.mat'
for i = 1:5
    for j = 1:20
        CmeanData(t) = Cmean_A700{i}{j};
        CminData(t) = Cmin_A700{i}{j};
        CmaxData(t) = Cmax_A700{i}{j};
        CstdData(t) = Cstd_A700{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringA900.mat'
for i = 1:2
    for j = 1:20
        CmeanData(t) = Cmean_A900{i}{j};
        CminData(t) = Cmin_A900{i}{j};
        CmaxData(t) = Cmax_A900{i}{j};
        CstdData(t) = Cstd_A900{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringA950.mat'
for i = 1:1
    for j = 1:20
        CmeanData(t) = Cmean_A950{i}{j};
        CminData(t) = Cmin_A950{i}{j};
        CmaxData(t) = Cmax_A950{i}{j};
        CstdData(t) = Cstd_A950{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringA975.mat'
for i = 1:1
    for j = 1:20
        CmeanData(t) = Cmean_A975{i}{j};
        CminData(t) = Cmin_A975{i}{j};
        CmaxData(t) = Cmax_A975{i}{j};
        CstdData(t) = Cstd_A975{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringA1000.mat'
for i = 1:1
    for j = 1:20
        CmeanData(t) = Cmean_A1000{i}{j};
        CminData(t) = Cmin_A1000{i}{j};
        CmaxData(t) = Cmax_A1000{i}{j};
        CstdData(t) = Cstd_A1000{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringB500.mat'
for i = 1:10
    for j = 1:20
        CmeanData(t) = Cmean_B500{i}{j};
        CminData(t) = Cmin_B500{i}{j};
        CmaxData(t) = Cmax_B500{i}{j};
        CstdData(t) = Cstd_B500{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringB700.mat'
for i = 1:5
    for j = 1:20
        CmeanData(t) = Cmean_B700{i}{j};
        CminData(t) = Cmin_B700{i}{j};
        CmaxData(t) = Cmax_B700{i}{j};
        CstdData(t) = Cstd_B700{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringB1000.mat'
for i = 1:5
    for j = 1:20
        CmeanData(t) = Cmean_B1000{i}{j};
        CminData(t) = Cmin_B1000{i}{j};
        CmaxData(t) = Cmax_B1000{i}{j};
        CstdData(t) = Cstd_B1000{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringC500.mat'
for i = 1:10
    for j = 1:20
        CmeanData(t) = Cmean_C500{i}{j};
        CminData(t) = Cmin_C500{i}{j};
        CmaxData(t) = Cmax_C500{i}{j};
        CstdData(t) = Cstd_C500{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringC700.mat'
for i = 1:5
    for j = 1:20
        CmeanData(t) = Cmean_C700{i}{j};
        CminData(t) = Cmin_C700{i}{j};
        CmaxData(t) = Cmax_C700{i}{j};
        CstdData(t) = Cstd_C700{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringC900.mat'
for i = 1:2
    for j = 1:20
        CmeanData(t) = Cmean_C900{i}{j};
        CminData(t) = Cmin_C900{i}{j};
        CmaxData(t) = Cmax_C900{i}{j};
        CstdData(t) = Cstd_C900{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t


load 'clusteringC950.mat'
for i = 1:1
    for j = 1:20
        CmeanData(t) = Cmean_C950{i}{j};
        CminData(t) = Cmin_C950{i}{j};
        CmaxData(t) = Cmax_C950{i}{j};
        CstdData(t) = Cstd_C950{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringC975.mat'
for i = 1:1
    for j = 1:20
        CmeanData(t) = Cmean_C975{i}{j};
        CminData(t) = Cmin_C975{i}{j};
        CmaxData(t) = Cmax_C975{i}{j};
        CstdData(t) = Cstd_C975{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringC1000.mat'
for i = 1:1
    for j = 1:20
        CmeanData(t) = Cmean_C1000{i}{j};
        CminData(t) = Cmin_C1000{i}{j};
        CmaxData(t) = Cmax_C1000{i}{j};
        CstdData(t) = Cstd_C1000{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringD500.mat'
for i = 1:10
    for j = 1:20
        CmeanData(t) = Cmean_D500{i}{j};
        CminData(t) = Cmin_D500{i}{j};
        CmaxData(t) = Cmax_D500{i}{j};
        CstdData(t) = Cstd_D500{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringD700.mat'
for i = 1:5
    for j = 1:20
        CmeanData(t) = Cmean_D700{i}{j};
        CminData(t) = Cmin_D700{i}{j};
        CmaxData(t) = Cmax_D700{i}{j};
        CstdData(t) = Cstd_D700{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringD900.mat'
for i = 1:2
    for j = 1:20
        CmeanData(t) = Cmean_D900{i}{j};
        CminData(t) = Cmin_D900{i}{j};
        CmaxData(t) = Cmax_D900{i}{j};
        CstdData(t) = Cstd_D900{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t


load 'clusteringD950.mat'
for i = 1:1
    for j = 1:20
        CmeanData(t) = Cmean_D950{i}{j};
        CminData(t) = Cmin_D950{i}{j};
        CmaxData(t) = Cmax_D950{i}{j};
        CstdData(t) = Cstd_D950{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringD975.mat'
for i = 1:1
    for j = 1:20
        CmeanData(t) = Cmean_D975{i}{j};
        CminData(t) = Cmin_D975{i}{j};
        CmaxData(t) = Cmax_D975{i}{j};
        CstdData(t) = Cstd_D975{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringD1000.mat'
for i = 1:1
    for j = 1:20
        CmeanData(t) = Cmean_D1000{i}{j};
        CminData(t) = Cmin_D1000{i}{j};
        CmaxData(t) = Cmax_D1000{i}{j};
        CstdData(t) = Cstd_D1000{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringE500.mat'
for i = 1:10
    for j = 1:20
        CmeanData(t) = Cmean_E500{i}{j};
        CminData(t) = Cmin_E500{i}{j};
        CmaxData(t) = Cmax_E500{i}{j};
        CstdData(t) = Cstd_E500{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringE700.mat'
for i = 1:5
    for j = 1:20
        CmeanData(t) = Cmean_E700{i}{j};
        CminData(t) = Cmin_E700{i}{j};
        CmaxData(t) = Cmax_E700{i}{j};
        CstdData(t) = Cstd_E700{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringE900.mat'
for i = 1:2
    for j = 1:20
        CmeanData(t) = Cmean_E900{i}{j};
        CminData(t) = Cmin_E900{i}{j};
        CmaxData(t) = Cmax_E900{i}{j};
        CstdData(t) = Cstd_E900{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t


load 'clusteringE950.mat'
for i = 1:1
    for j = 1:20
        CmeanData(t) = Cmean_E950{i}{j};
        CminData(t) = Cmin_E950{i}{j};
        CmaxData(t) = Cmax_E950{i}{j};
        CstdData(t) = Cstd_E950{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringE975.mat'
for i = 1:1
    for j = 1:20
        CmeanData(t) = Cmean_E975{i}{j};
        CminData(t) = Cmin_E975{i}{j};
        CmaxData(t) = Cmax_E975{i}{j};
        CstdData(t) = Cstd_E975{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

load 'clusteringE1000.mat'
for i = 1:1
    for j = 1:20
        CmeanData(t) = Cmean_E1000{i}{j};
        CminData(t) = Cmin_E1000{i}{j};
        CmaxData(t) = Cmax_E1000{i}{j};
        CstdData(t) = Cstd_E1000{i}{j};
        t = t + 1;
    end
end
clearvars -except CmeanData CminData CmaxData CstdData t

save 'clustering.mat'
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PATH LENGTH

lMeanData = zeros(2000,1);
lMinData = zeros(2000,1);
lMaxData = zeros(2000,1);
lStdData = zeros(2000,1);

t = 1;

load 'pathLengthA500.mat'
for i = 1:10
    for j = 1:20
        lMeanData(t) = lMean_A500{i}(j);
        lMinData(t) = lMin_A500{i}(j);
        lMaxData(t) = lMax_A500{i}(j);
        lStdData(t) = lStd_A500{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthA700.mat'
for i = 1:5
    for j = 1:20
        lMeanData(t) = lMean_A700{i}(j);
        lMinData(t) = lMin_A700{i}(j);
        lMaxData(t) = lMax_A700{i}(j);
        lStdData(t) = lStd_A700{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthA900.mat'
for i = 1:2
    for j = 1:20
        lMeanData(t) = lMean_A900{i}(j);
        lMinData(t) = lMin_A900{i}(j);
        lMaxData(t) = lMax_A900{i}(j);
        lStdData(t) = lStd_A900{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthA950.mat'
for i = 1:1
    for j = 1:20
        lMeanData(t) = lMean_A950{i}(j);
        lMinData(t) = lMin_A950{i}(j);
        lMaxData(t) = lMax_A950{i}(j);
        lStdData(t) = lStd_A950{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthA975.mat'
for i = 1:1
    for j = 1:20
        lMeanData(t) = lMean_A975{i}(j);
        lMinData(t) = lMin_A975{i}(j);
        lMaxData(t) = lMax_A975{i}(j);
        lStdData(t) = lStd_A975{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthA1000.mat'
for i = 1:1
    for j = 1:20
        lMeanData(t) = lMean_A1000{i}(j);
        lMinData(t) = lMin_A1000{i}(j);
        lMaxData(t) = lMax_A1000{i}(j);
        lStdData(t) = lStd_A1000{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthB500.mat'
for i = 1:10
    for j = 1:20
        lMeanData(t) = lMean_B500{i}(j);
        lMinData(t) = lMin_B500{i}(j);
        lMaxData(t) = lMax_B500{i}(j);
        lStdData(t) = lStd_B500{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthB700.mat'
for i = 1:5
    for j = 1:20
        lMeanData(t) = lMean_B700{i}(j);
        lMinData(t) = lMin_B700{i}(j);
        lMaxData(t) = lMax_B700{i}(j);
        lStdData(t) = lStd_B700{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthB1000.mat'
for i = 1:5
    for j = 1:20
        lMeanData(t) = lMean_B1000{i}(j);
        lMinData(t) = lMin_B1000{i}(j);
        lMaxData(t) = lMax_B1000{i}(j);
        lStdData(t) = lStd_B1000{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t


load 'pathLengthC500.mat'
for i = 1:10
    for j = 1:20
        lMeanData(t) = lMean_C500{i}(j);
        lMinData(t) = lMin_C500{i}(j);
        lMaxData(t) = lMax_C500{i}(j);
        lStdData(t) = lStd_C500{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthC700.mat'
for i = 1:5
    for j = 1:20
        lMeanData(t) = lMean_C700{i}(j);
        lMinData(t) = lMin_C700{i}(j);
        lMaxData(t) = lMax_C700{i}(j);
        lStdData(t) = lStd_C700{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthC900.mat'
for i = 1:2
    for j = 1:20
        lMeanData(t) = lMean_C900{i}(j);
        lMinData(t) = lMin_C900{i}(j);
        lMaxData(t) = lMax_C900{i}(j);
        lStdData(t) = lStd_C900{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthC950.mat'
for i = 1:1
    for j = 1:20
        lMeanData(t) = lMean_C950{i}(j);
        lMinData(t) = lMin_C950{i}(j);
        lMaxData(t) = lMax_C950{i}(j);
        lStdData(t) = lStd_C950{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthC975.mat'
for i = 1:1
    for j = 1:20
        lMeanData(t) = lMean_C975{i}(j);
        lMinData(t) = lMin_C975{i}(j);
        lMaxData(t) = lMax_C975{i}(j);
        lStdData(t) = lStd_C975{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthC1000.mat'
for i = 1:1
    for j = 1:20
        lMeanData(t) = lMean_C1000{i}(j);
        lMinData(t) = lMin_C1000{i}(j);
        lMaxData(t) = lMax_C1000{i}(j);
        lStdData(t) = lStd_C1000{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t


load 'pathLengthD500.mat'
for i = 1:10
    for j = 1:20
        lMeanData(t) = lMean_D500{i}(j);
        lMinData(t) = lMin_D500{i}(j);
        lMaxData(t) = lMax_D500{i}(j);
        lStdData(t) = lStd_D500{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthD700.mat'
for i = 1:5
    for j = 1:20
        lMeanData(t) = lMean_D700{i}(j);
        lMinData(t) = lMin_D700{i}(j);
        lMaxData(t) = lMax_D700{i}(j);
        lStdData(t) = lStd_D700{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthD900.mat'
for i = 1:2
    for j = 1:20
        lMeanData(t) = lMean_D900{i}(j);
        lMinData(t) = lMin_D900{i}(j);
        lMaxData(t) = lMax_D900{i}(j);
        lStdData(t) = lStd_D900{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthD950.mat'
for i = 1:1
    for j = 1:20
        lMeanData(t) = lMean_D950{i}(j);
        lMinData(t) = lMin_D950{i}(j);
        lMaxData(t) = lMax_D950{i}(j);
        lStdData(t) = lStd_D950{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthD975.mat'
for i = 1:1
    for j = 1:20
        lMeanData(t) = lMean_D975{i}(j);
        lMinData(t) = lMin_D975{i}(j);
        lMaxData(t) = lMax_D975{i}(j);
        lStdData(t) = lStd_D975{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthD1000.mat'
for i = 1:1
    for j = 1:20
        lMeanData(t) = lMean_D1000{i}(j);
        lMinData(t) = lMin_D1000{i}(j);
        lMaxData(t) = lMax_D1000{i}(j);
        lStdData(t) = lStd_D1000{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthE500.mat'
for i = 1:10
    for j = 1:20
        lMeanData(t) = lMean_E500{i}(j);
        lMinData(t) = lMin_E500{i}(j);
        lMaxData(t) = lMax_E500{i}(j);
        lStdData(t) = lStd_E500{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthE700.mat'
for i = 1:5
    for j = 1:20
        lMeanData(t) = lMean_E700{i}(j);
        lMinData(t) = lMin_E700{i}(j);
        lMaxData(t) = lMax_E700{i}(j);
        lStdData(t) = lStd_E700{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthE900.mat'
for i = 1:2
    for j = 1:20
        lMeanData(t) = lMean_E900{i}(j);
        lMinData(t) = lMin_E900{i}(j);
        lMaxData(t) = lMax_E900{i}(j);
        lStdData(t) = lStd_E900{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthE950.mat'
for i = 1:1
    for j = 1:20
        lMeanData(t) = lMean_E950{i}(j);
        lMinData(t) = lMin_E950{i}(j);
        lMaxData(t) = lMax_E950{i}(j);
        lStdData(t) = lStd_E950{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthE975.mat'
for i = 1:1
    for j = 1:20
        lMeanData(t) = lMean_E975{i}(j);
        lMinData(t) = lMin_E975{i}(j);
        lMaxData(t) = lMax_E975{i}(j);
        lStdData(t) = lStd_E975{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

load 'pathLengthE1000.mat'
for i = 1:1
    for j = 1:20
        lMeanData(t) = lMean_E1000{i}(j);
        lMinData(t) = lMin_E1000{i}(j);
        lMaxData(t) = lMax_E1000{i}(j);
        lStdData(t) = lStd_E1000{i}(j);
        t = t + 1;
    end
end
clearvars -except lMeanData lMinData lMaxData lStdData t

save 'pathLength.mat'
clear
