
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EFFICIENCY CHANGE

E1diffMeanData = zeros(2000,1);
E1diffMinData = zeros(2000,1);
E1diffMaxData = zeros(2000,1);
E1diffStdData = zeros(2000,1);

E10diffMeanData = zeros(2000,1);
E10diffMinData = zeros(2000,1);
E10diffMaxData = zeros(2000,1);
E10diffStdData = zeros(2000,1);

E25diffMeanData = zeros(2000,1);
E25diffMinData = zeros(2000,1);
E25diffMaxData = zeros(2000,1);
E25diffStdData = zeros(2000,1);

E50diffMeanData = zeros(2000,1);
E50diffMinData = zeros(2000,1);
E50diffMaxData = zeros(2000,1);
E50diffStdData = zeros(2000,1);

E75diffMeanData = zeros(2000,1);
E75diffMinData = zeros(2000,1);
E75diffMaxData = zeros(2000,1);
E75diffStdData = zeros(2000,1);

Enr1MeanTmp = zeros(30,1);
Enr10MeanTmp = zeros(30,1);
Enr25MeanTmp = zeros(30,1);
Enr50MeanTmp = zeros(30,1);
Enr75MeanTmp = zeros(30,1);
Enr1MinTmp = zeros(30,1);
Enr10MinTmp = zeros(30,1);
Enr25MinTmp = zeros(30,1);
Enr50MinTmp = zeros(30,1);
Enr75MinTmp = zeros(30,1);
Enr1MaxTmp = zeros(30,1);
Enr10MaxTmp = zeros(30,1);
Enr25MaxTmp = zeros(30,1);
Enr50MaxTmp = zeros(30,1);
Enr75MaxTmp = zeros(30,1);
Enr1StdTmp = zeros(30,1);
Enr10StdTmp = zeros(30,1);
Enr25StdTmp = zeros(30,1);
Enr50StdTmp = zeros(30,1);
Enr75StdTmp = zeros(30,1);


t = 1;

load 'initEfficiencyA500.mat'
cd efficiency/
for i = 1:10
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_A500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_A500 Emin_A500 Emax_A500 Estd_A500
        end
        
        E1diffMeanData(t) = (Emean_A500{i}(j) - mean(Enr1MeanTmp))/(Emean_A500{i}(j));
        E1diffMinData(t) = (Emin_A500{i}(j) - mean(Enr1MinTmp))/(Emin_A500{i}(j));
        E1diffMaxData(t) = (Emax_A500{i}(j) - mean(Enr1MaxTmp))/(Emax_A500{i}(j));
        E1diffStdData(t) = (Estd_A500{i}(j) - mean(Enr1StdTmp))/(Estd_A500{i}(j));
        
        E10diffMeanData(t) = (Emean_A500{i}(j) - mean(Enr10MeanTmp))/(Emean_A500{i}(j));
        E10diffMinData(t) = (Emin_A500{i}(j) - mean(Enr10MinTmp))/(Emin_A500{i}(j));
        E10diffMaxData(t) = (Emax_A500{i}(j) - mean(Enr10MaxTmp))/(Emax_A500{i}(j));
        E10diffStdData(t) = (Estd_A500{i}(j) - mean(Enr10StdTmp))/(Estd_A500{i}(j));

        E25diffMeanData(t) = (Emean_A500{i}(j) - mean(Enr25MeanTmp))/(Emean_A500{i}(j));
        E25diffMinData(t) = (Emin_A500{i}(j) - mean(Enr25MinTmp))/(Emin_A500{i}(j));
        E25diffMaxData(t) = (Emax_A500{i}(j) - mean(Enr25MaxTmp))/(Emax_A500{i}(j));
        E25diffStdData(t) = (Estd_A500{i}(j) - mean(Enr25StdTmp))/(Estd_A500{i}(j));
       
        E50diffMeanData(t) = (Emean_A500{i}(j) - mean(Enr50MeanTmp))/(Emean_A500{i}(j));
        E50diffMinData(t) = (Emin_A500{i}(j) - mean(Enr50MinTmp))/(Emin_A500{i}(j));
        E50diffMaxData(t) = (Emax_A500{i}(j) - mean(Enr50MaxTmp))/(Emax_A500{i}(j));
        E50diffStdData(t) = (Estd_A500{i}(j) - mean(Enr50StdTmp))/(Estd_A500{i}(j));
        
        E75diffMeanData(t) = (Emean_A500{i}(j) - mean(Enr75MeanTmp))/(Emean_A500{i}(j));
        E75diffMinData(t) = (Emin_A500{i}(j) - mean(Enr75MinTmp))/(Emin_A500{i}(j));
        E75diffMaxData(t) = (Emax_A500{i}(j) - mean(Enr75MaxTmp))/(Emax_A500{i}(j));
        E75diffStdData(t) = (Estd_A500{i}(j) - mean(Enr75StdTmp))/(Estd_A500{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyA700.mat'
cd efficiency/
for i = 1:5
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_A700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_A700 Emin_A700 Emax_A700 Estd_A700
        end
        
        E1diffMeanData(t) = (Emean_A700{i}(j) - mean(Enr1MeanTmp))/(Emean_A700{i}(j));
        E1diffMinData(t) = (Emin_A700{i}(j) - mean(Enr1MinTmp))/(Emin_A700{i}(j));
        E1diffMaxData(t) = (Emax_A700{i}(j) - mean(Enr1MaxTmp))/(Emax_A700{i}(j));
        E1diffStdData(t) = (Estd_A700{i}(j) - mean(Enr1StdTmp))/(Estd_A700{i}(j));

        E10diffMeanData(t) = (Emean_A700{i}(j) - mean(Enr10MeanTmp))/(Emean_A700{i}(j));
        E10diffMinData(t) = (Emin_A700{i}(j) - mean(Enr10MinTmp))/(Emin_A700{i}(j));
        E10diffMaxData(t) = (Emax_A700{i}(j) - mean(Enr10MaxTmp))/(Emax_A700{i}(j));
        E10diffStdData(t) = (Estd_A700{i}(j) - mean(Enr10StdTmp))/(Estd_A700{i}(j));        
        
        E25diffMeanData(t) = (Emean_A700{i}(j) - mean(Enr25MeanTmp))/(Emean_A700{i}(j));
        E25diffMinData(t) = (Emin_A700{i}(j) - mean(Enr25MinTmp))/(Emin_A700{i}(j));
        E25diffMaxData(t) = (Emax_A700{i}(j) - mean(Enr25MaxTmp))/(Emax_A700{i}(j));
        E25diffStdData(t) = (Estd_A700{i}(j) - mean(Enr25StdTmp))/(Estd_A700{i}(j));
       
        E50diffMeanData(t) = (Emean_A700{i}(j) - mean(Enr50MeanTmp))/(Emean_A700{i}(j));
        E50diffMinData(t) = (Emin_A700{i}(j) - mean(Enr50MinTmp))/(Emin_A700{i}(j));
        E50diffMaxData(t) = (Emax_A700{i}(j) - mean(Enr50MaxTmp))/(Emax_A700{i}(j));
        E50diffStdData(t) = (Estd_A700{i}(j) - mean(Enr50StdTmp))/(Estd_A700{i}(j));
        
        E75diffMeanData(t) = (Emean_A700{i}(j) - mean(Enr75MeanTmp))/(Emean_A700{i}(j));
        E75diffMinData(t) = (Emin_A700{i}(j) - mean(Enr75MinTmp))/(Emin_A700{i}(j));
        E75diffMaxData(t) = (Emax_A700{i}(j) - mean(Enr75MaxTmp))/(Emax_A700{i}(j));
        E75diffStdData(t) = (Estd_A700{i}(j) - mean(Enr75StdTmp))/(Estd_A700{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t

cd ../
load 'initEfficiencyA900.mat'
cd efficiency/
for i = 1:2
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_A900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_A900 Emin_A900 Emax_A900 Estd_A900
        end
        
        E1diffMeanData(t) = (Emean_A900{i}(j) - mean(Enr1MeanTmp))/(Emean_A900{i}(j));
        E1diffMinData(t) = (Emin_A900{i}(j) - mean(Enr1MinTmp))/(Emin_A900{i}(j));
        E1diffMaxData(t) = (Emax_A900{i}(j) - mean(Enr1MaxTmp))/(Emax_A900{i}(j));
        E1diffStdData(t) = (Estd_A900{i}(j) - mean(Enr1StdTmp))/(Estd_A900{i}(j));

        E10diffMeanData(t) = (Emean_A900{i}(j) - mean(Enr10MeanTmp))/(Emean_A900{i}(j));
        E10diffMinData(t) = (Emin_A900{i}(j) - mean(Enr10MinTmp))/(Emin_A900{i}(j));
        E10diffMaxData(t) = (Emax_A900{i}(j) - mean(Enr10MaxTmp))/(Emax_A900{i}(j));
        E10diffStdData(t) = (Estd_A900{i}(j) - mean(Enr10StdTmp))/(Estd_A900{i}(j));        
        
        E25diffMeanData(t) = (Emean_A900{i}(j) - mean(Enr25MeanTmp))/(Emean_A900{i}(j));
        E25diffMinData(t) = (Emin_A900{i}(j) - mean(Enr25MinTmp))/(Emin_A900{i}(j));
        E25diffMaxData(t) = (Emax_A900{i}(j) - mean(Enr25MaxTmp))/(Emax_A900{i}(j));
        E25diffStdData(t) = (Estd_A900{i}(j) - mean(Enr25StdTmp))/(Estd_A900{i}(j));
       
        E50diffMeanData(t) = (Emean_A900{i}(j) - mean(Enr50MeanTmp))/(Emean_A900{i}(j));
        E50diffMinData(t) = (Emin_A900{i}(j) - mean(Enr50MinTmp))/(Emin_A900{i}(j));
        E50diffMaxData(t) = (Emax_A900{i}(j) - mean(Enr50MaxTmp))/(Emax_A900{i}(j));
        E50diffStdData(t) = (Estd_A900{i}(j) - mean(Enr50StdTmp))/(Estd_A900{i}(j));
        
        E75diffMeanData(t) = (Emean_A900{i}(j) - mean(Enr75MeanTmp))/(Emean_A900{i}(j));
        E75diffMinData(t) = (Emin_A900{i}(j) - mean(Enr75MinTmp))/(Emin_A900{i}(j));
        E75diffMaxData(t) = (Emax_A900{i}(j) - mean(Enr75MaxTmp))/(Emax_A900{i}(j));
        E75diffStdData(t) = (Estd_A900{i}(j) - mean(Enr75StdTmp))/(Estd_A900{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t

cd ../
load 'initEfficiencyA950.mat'
cd efficiency/
for i = 1:1
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_A950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_A950 Emin_A950 Emax_A950 Estd_A950
        end
        
        E1diffMeanData(t) = (Emean_A950{i}(j) - mean(Enr1MeanTmp))/(Emean_A950{i}(j));
        E1diffMinData(t) = (Emin_A950{i}(j) - mean(Enr1MinTmp))/(Emin_A950{i}(j));
        E1diffMaxData(t) = (Emax_A950{i}(j) - mean(Enr1MaxTmp))/(Emax_A950{i}(j));
        E1diffStdData(t) = (Estd_A950{i}(j) - mean(Enr1StdTmp))/(Estd_A950{i}(j));
        
        E10diffMeanData(t) = (Emean_A950{i}(j) - mean(Enr10MeanTmp))/(Emean_A950{i}(j));
        E10diffMinData(t) = (Emin_A950{i}(j) - mean(Enr10MinTmp))/(Emin_A950{i}(j));
        E10diffMaxData(t) = (Emax_A950{i}(j) - mean(Enr10MaxTmp))/(Emax_A950{i}(j));
        E10diffStdData(t) = (Estd_A950{i}(j) - mean(Enr10StdTmp))/(Estd_A950{i}(j));        

        E25diffMeanData(t) = (Emean_A950{i}(j) - mean(Enr25MeanTmp))/(Emean_A950{i}(j));
        E25diffMinData(t) = (Emin_A950{i}(j) - mean(Enr25MinTmp))/(Emin_A950{i}(j));
        E25diffMaxData(t) = (Emax_A950{i}(j) - mean(Enr25MaxTmp))/(Emax_A950{i}(j));
        E25diffStdData(t) = (Estd_A950{i}(j) - mean(Enr25StdTmp))/(Estd_A950{i}(j));
       
        E50diffMeanData(t) = (Emean_A950{i}(j) - mean(Enr50MeanTmp))/(Emean_A950{i}(j));
        E50diffMinData(t) = (Emin_A950{i}(j) - mean(Enr50MinTmp))/(Emin_A950{i}(j));
        E50diffMaxData(t) = (Emax_A950{i}(j) - mean(Enr50MaxTmp))/(Emax_A950{i}(j));
        E50diffStdData(t) = (Estd_A950{i}(j) - mean(Enr50StdTmp))/(Estd_A950{i}(j));
        
        E75diffMeanData(t) = (Emean_A950{i}(j) - mean(Enr75MeanTmp))/(Emean_A950{i}(j));
        E75diffMinData(t) = (Emin_A950{i}(j) - mean(Enr75MinTmp))/(Emin_A950{i}(j));
        E75diffMaxData(t) = (Emax_A950{i}(j) - mean(Enr75MaxTmp))/(Emax_A950{i}(j));
        E75diffStdData(t) = (Estd_A950{i}(j) - mean(Enr75StdTmp))/(Estd_A950{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyA975.mat'
cd efficiency/
for i = 1:1
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_A975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_A975 Emin_A975 Emax_A975 Estd_A975
        end
        
        E1diffMeanData(t) = (Emean_A975{i}(j) - mean(Enr1MeanTmp))/(Emean_A975{i}(j));
        E1diffMinData(t) = (Emin_A975{i}(j) - mean(Enr1MinTmp))/(Emin_A975{i}(j));
        E1diffMaxData(t) = (Emax_A975{i}(j) - mean(Enr1MaxTmp))/(Emax_A975{i}(j));
        E1diffStdData(t) = (Estd_A975{i}(j) - mean(Enr1StdTmp))/(Estd_A975{i}(j));
        
        E10diffMeanData(t) = (Emean_A975{i}(j) - mean(Enr10MeanTmp))/(Emean_A975{i}(j));
        E10diffMinData(t) = (Emin_A975{i}(j) - mean(Enr10MinTmp))/(Emin_A975{i}(j));
        E10diffMaxData(t) = (Emax_A975{i}(j) - mean(Enr10MaxTmp))/(Emax_A975{i}(j));
        E10diffStdData(t) = (Estd_A975{i}(j) - mean(Enr10StdTmp))/(Estd_A975{i}(j));

        E25diffMeanData(t) = (Emean_A975{i}(j) - mean(Enr25MeanTmp))/(Emean_A975{i}(j));
        E25diffMinData(t) = (Emin_A975{i}(j) - mean(Enr25MinTmp))/(Emin_A975{i}(j));
        E25diffMaxData(t) = (Emax_A975{i}(j) - mean(Enr25MaxTmp))/(Emax_A975{i}(j));
        E25diffStdData(t) = (Estd_A975{i}(j) - mean(Enr25StdTmp))/(Estd_A975{i}(j));
       
        E50diffMeanData(t) = (Emean_A975{i}(j) - mean(Enr50MeanTmp))/(Emean_A975{i}(j));
        E50diffMinData(t) = (Emin_A975{i}(j) - mean(Enr50MinTmp))/(Emin_A975{i}(j));
        E50diffMaxData(t) = (Emax_A975{i}(j) - mean(Enr50MaxTmp))/(Emax_A975{i}(j));
        E50diffStdData(t) = (Estd_A975{i}(j) - mean(Enr50StdTmp))/(Estd_A975{i}(j));
        
        E75diffMeanData(t) = (Emean_A975{i}(j) - mean(Enr75MeanTmp))/(Emean_A975{i}(j));
        E75diffMinData(t) = (Emin_A975{i}(j) - mean(Enr75MinTmp))/(Emin_A975{i}(j));
        E75diffMaxData(t) = (Emax_A975{i}(j) - mean(Enr75MaxTmp))/(Emax_A975{i}(j));
        E75diffStdData(t) = (Estd_A975{i}(j) - mean(Enr75StdTmp))/(Estd_A975{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t

cd ../
load 'initEfficiencyA1000.mat'
cd efficiency/
for i = 1:1
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_A1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_A1000 Emin_A1000 Emax_A1000 Estd_A1000
        end
        
        E1diffMeanData(t) = (Emean_A1000{i}(j) - mean(Enr1MeanTmp))/(Emean_A1000{i}(j));
        E1diffMinData(t) = (Emin_A1000{i}(j) - mean(Enr1MinTmp))/(Emin_A1000{i}(j));
        E1diffMaxData(t) = (Emax_A1000{i}(j) - mean(Enr1MaxTmp))/(Emax_A1000{i}(j));
        E1diffStdData(t) = (Estd_A1000{i}(j) - mean(Enr1StdTmp))/(Estd_A1000{i}(j));

        E10diffMeanData(t) = (Emean_A1000{i}(j) - mean(Enr10MeanTmp))/(Emean_A1000{i}(j));
        E10diffMinData(t) = (Emin_A1000{i}(j) - mean(Enr10MinTmp))/(Emin_A1000{i}(j));
        E10diffMaxData(t) = (Emax_A1000{i}(j) - mean(Enr10MaxTmp))/(Emax_A1000{i}(j));
        E10diffStdData(t) = (Estd_A1000{i}(j) - mean(Enr10StdTmp))/(Estd_A1000{i}(j));        
        
        E25diffMeanData(t) = (Emean_A1000{i}(j) - mean(Enr25MeanTmp))/(Emean_A1000{i}(j));
        E25diffMinData(t) = (Emin_A1000{i}(j) - mean(Enr25MinTmp))/(Emin_A1000{i}(j));
        E25diffMaxData(t) = (Emax_A1000{i}(j) - mean(Enr25MaxTmp))/(Emax_A1000{i}(j));
        E25diffStdData(t) = (Estd_A1000{i}(j) - mean(Enr25StdTmp))/(Estd_A1000{i}(j));
       
        E50diffMeanData(t) = (Emean_A1000{i}(j) - mean(Enr50MeanTmp))/(Emean_A1000{i}(j));
        E50diffMinData(t) = (Emin_A1000{i}(j) - mean(Enr50MinTmp))/(Emin_A1000{i}(j));
        E50diffMaxData(t) = (Emax_A1000{i}(j) - mean(Enr50MaxTmp))/(Emax_A1000{i}(j));
        E50diffStdData(t) = (Estd_A1000{i}(j) - mean(Enr50StdTmp))/(Estd_A1000{i}(j));
        
        E75diffMeanData(t) = (Emean_A1000{i}(j) - mean(Enr75MeanTmp))/(Emean_A1000{i}(j));
        E75diffMinData(t) = (Emin_A1000{i}(j) - mean(Enr75MinTmp))/(Emin_A1000{i}(j));
        E75diffMaxData(t) = (Emax_A1000{i}(j) - mean(Enr75MaxTmp))/(Emax_A1000{i}(j));
        E75diffStdData(t) = (Estd_A1000{i}(j) - mean(Enr75StdTmp))/(Estd_A1000{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t

cd ../
load 'initEfficiencyB500.mat'
cd efficiency/
for i = 1:10
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_B500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_B500 Emin_B500 Emax_B500 Estd_B500
        end
        
        E1diffMeanData(t) = (Emean_B500{i}(j) - mean(Enr1MeanTmp))/(Emean_B500{i}(j));
        E1diffMinData(t) = (Emin_B500{i}(j) - mean(Enr1MinTmp))/(Emin_B500{i}(j));
        E1diffMaxData(t) = (Emax_B500{i}(j) - mean(Enr1MaxTmp))/(Emax_B500{i}(j));
        E1diffStdData(t) = (Estd_B500{i}(j) - mean(Enr1StdTmp))/(Estd_B500{i}(j));

        E10diffMeanData(t) = (Emean_B500{i}(j) - mean(Enr10MeanTmp))/(Emean_B500{i}(j));
        E10diffMinData(t) = (Emin_B500{i}(j) - mean(Enr10MinTmp))/(Emin_B500{i}(j));
        E10diffMaxData(t) = (Emax_B500{i}(j) - mean(Enr10MaxTmp))/(Emax_B500{i}(j));
        E10diffStdData(t) = (Estd_B500{i}(j) - mean(Enr10StdTmp))/(Estd_B500{i}(j));        
        
        E25diffMeanData(t) = (Emean_B500{i}(j) - mean(Enr25MeanTmp))/(Emean_B500{i}(j));
        E25diffMinData(t) = (Emin_B500{i}(j) - mean(Enr25MinTmp))/(Emin_B500{i}(j));
        E25diffMaxData(t) = (Emax_B500{i}(j) - mean(Enr25MaxTmp))/(Emax_B500{i}(j));
        E25diffStdData(t) = (Estd_B500{i}(j) - mean(Enr25StdTmp))/(Estd_B500{i}(j));
       
        E50diffMeanData(t) = (Emean_B500{i}(j) - mean(Enr50MeanTmp))/(Emean_B500{i}(j));
        E50diffMinData(t) = (Emin_B500{i}(j) - mean(Enr50MinTmp))/(Emin_B500{i}(j));
        E50diffMaxData(t) = (Emax_B500{i}(j) - mean(Enr50MaxTmp))/(Emax_B500{i}(j));
        E50diffStdData(t) = (Estd_B500{i}(j) - mean(Enr50StdTmp))/(Estd_B500{i}(j));
        
        E75diffMeanData(t) = (Emean_B500{i}(j) - mean(Enr75MeanTmp))/(Emean_B500{i}(j));
        E75diffMinData(t) = (Emin_B500{i}(j) - mean(Enr75MinTmp))/(Emin_B500{i}(j));
        E75diffMaxData(t) = (Emax_B500{i}(j) - mean(Enr75MaxTmp))/(Emax_B500{i}(j));
        E75diffStdData(t) = (Estd_B500{i}(j) - mean(Enr75StdTmp))/(Estd_B500{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t

cd ../
load 'initEfficiencyB700.mat'
cd efficiency/
for i = 1:5
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_B700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_B700 Emin_B700 Emax_B700 Estd_B700
        end
        
        E1diffMeanData(t) = (Emean_B700{i}(j) - mean(Enr1MeanTmp))/(Emean_B700{i}(j));
        E1diffMinData(t) = (Emin_B700{i}(j) - mean(Enr1MinTmp))/(Emin_B700{i}(j));
        E1diffMaxData(t) = (Emax_B700{i}(j) - mean(Enr1MaxTmp))/(Emax_B700{i}(j));
        E1diffStdData(t) = (Estd_B700{i}(j) - mean(Enr1StdTmp))/(Estd_B700{i}(j));

        E10diffMeanData(t) = (Emean_B700{i}(j) - mean(Enr10MeanTmp))/(Emean_B700{i}(j));
        E10diffMinData(t) = (Emin_B700{i}(j) - mean(Enr10MinTmp))/(Emin_B700{i}(j));
        E10diffMaxData(t) = (Emax_B700{i}(j) - mean(Enr10MaxTmp))/(Emax_B700{i}(j));
        E10diffStdData(t) = (Estd_B700{i}(j) - mean(Enr10StdTmp))/(Estd_B700{i}(j));        
        
        E25diffMeanData(t) = (Emean_B700{i}(j) - mean(Enr25MeanTmp))/(Emean_B700{i}(j));
        E25diffMinData(t) = (Emin_B700{i}(j) - mean(Enr25MinTmp))/(Emin_B700{i}(j));
        E25diffMaxData(t) = (Emax_B700{i}(j) - mean(Enr25MaxTmp))/(Emax_B700{i}(j));
        E25diffStdData(t) = (Estd_B700{i}(j) - mean(Enr25StdTmp))/(Estd_B700{i}(j));
       
        E50diffMeanData(t) = (Emean_B700{i}(j) - mean(Enr50MeanTmp))/(Emean_B700{i}(j));
        E50diffMinData(t) = (Emin_B700{i}(j) - mean(Enr50MinTmp))/(Emin_B700{i}(j));
        E50diffMaxData(t) = (Emax_B700{i}(j) - mean(Enr50MaxTmp))/(Emax_B700{i}(j));
        E50diffStdData(t) = (Estd_B700{i}(j) - mean(Enr50StdTmp))/(Estd_B700{i}(j));
        
        E75diffMeanData(t) = (Emean_B700{i}(j) - mean(Enr75MeanTmp))/(Emean_B700{i}(j));
        E75diffMinData(t) = (Emin_B700{i}(j) - mean(Enr75MinTmp))/(Emin_B700{i}(j));
        E75diffMaxData(t) = (Emax_B700{i}(j) - mean(Enr75MaxTmp))/(Emax_B700{i}(j));
        E75diffStdData(t) = (Estd_B700{i}(j) - mean(Enr75StdTmp))/(Estd_B700{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyB1000.mat'
cd efficiency/
for i = 1:5
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_B1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_B1000 Emin_B1000 Emax_B1000 Estd_B1000
        end
        
        E1diffMeanData(t) = (Emean_B1000{i}(j) - mean(Enr1MeanTmp))/(Emean_B1000{i}(j));
        E1diffMinData(t) = (Emin_B1000{i}(j) - mean(Enr1MinTmp))/(Emin_B1000{i}(j));
        E1diffMaxData(t) = (Emax_B1000{i}(j) - mean(Enr1MaxTmp))/(Emax_B1000{i}(j));
        E1diffStdData(t) = (Estd_B1000{i}(j) - mean(Enr1StdTmp))/(Estd_B1000{i}(j));

        E10diffMeanData(t) = (Emean_B1000{i}(j) - mean(Enr10MeanTmp))/(Emean_B1000{i}(j));
        E10diffMinData(t) = (Emin_B1000{i}(j) - mean(Enr10MinTmp))/(Emin_B1000{i}(j));
        E10diffMaxData(t) = (Emax_B1000{i}(j) - mean(Enr10MaxTmp))/(Emax_B1000{i}(j));
        E10diffStdData(t) = (Estd_B1000{i}(j) - mean(Enr10StdTmp))/(Estd_B1000{i}(j));       
        
        E25diffMeanData(t) = (Emean_B1000{i}(j) - mean(Enr25MeanTmp))/(Emean_B1000{i}(j));
        E25diffMinData(t) = (Emin_B1000{i}(j) - mean(Enr25MinTmp))/(Emin_B1000{i}(j));
        E25diffMaxData(t) = (Emax_B1000{i}(j) - mean(Enr25MaxTmp))/(Emax_B1000{i}(j));
        E25diffStdData(t) = (Estd_B1000{i}(j) - mean(Enr25StdTmp))/(Estd_B1000{i}(j));
       
        E50diffMeanData(t) = (Emean_B1000{i}(j) - mean(Enr50MeanTmp))/(Emean_B1000{i}(j));
        E50diffMinData(t) = (Emin_B1000{i}(j) - mean(Enr50MinTmp))/(Emin_B1000{i}(j));
        E50diffMaxData(t) = (Emax_B1000{i}(j) - mean(Enr50MaxTmp))/(Emax_B1000{i}(j));
        E50diffStdData(t) = (Estd_B1000{i}(j) - mean(Enr50StdTmp))/(Estd_B1000{i}(j));
        
        E75diffMeanData(t) = (Emean_B1000{i}(j) - mean(Enr75MeanTmp))/(Emean_B1000{i}(j));
        E75diffMinData(t) = (Emin_B1000{i}(j) - mean(Enr75MinTmp))/(Emin_B1000{i}(j));
        E75diffMaxData(t) = (Emax_B1000{i}(j) - mean(Enr75MaxTmp))/(Emax_B1000{i}(j));
        E75diffStdData(t) = (Estd_B1000{i}(j) - mean(Enr75StdTmp))/(Estd_B1000{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyC500.mat'
cd efficiency/
for i = 1:10
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_C500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_C500 Emin_C500 Emax_C500 Estd_C500
        end
        
        E1diffMeanData(t) = (Emean_C500{i}(j) - mean(Enr1MeanTmp))/(Emean_C500{i}(j));
        E1diffMinData(t) = (Emin_C500{i}(j) - mean(Enr1MinTmp))/(Emin_C500{i}(j));
        E1diffMaxData(t) = (Emax_C500{i}(j) - mean(Enr1MaxTmp))/(Emax_C500{i}(j));
        E1diffStdData(t) = (Estd_C500{i}(j) - mean(Enr1StdTmp))/(Estd_C500{i}(j));

        E10diffMeanData(t) = (Emean_C500{i}(j) - mean(Enr10MeanTmp))/(Emean_C500{i}(j));
        E10diffMinData(t) = (Emin_C500{i}(j) - mean(Enr10MinTmp))/(Emin_C500{i}(j));
        E10diffMaxData(t) = (Emax_C500{i}(j) - mean(Enr10MaxTmp))/(Emax_C500{i}(j));
        E10diffStdData(t) = (Estd_C500{i}(j) - mean(Enr10StdTmp))/(Estd_C500{i}(j));       
        
        E25diffMeanData(t) = (Emean_C500{i}(j) - mean(Enr25MeanTmp))/(Emean_C500{i}(j));
        E25diffMinData(t) = (Emin_C500{i}(j) - mean(Enr25MinTmp))/(Emin_C500{i}(j));
        E25diffMaxData(t) = (Emax_C500{i}(j) - mean(Enr25MaxTmp))/(Emax_C500{i}(j));
        E25diffStdData(t) = (Estd_C500{i}(j) - mean(Enr25StdTmp))/(Estd_C500{i}(j));
       
        E50diffMeanData(t) = (Emean_C500{i}(j) - mean(Enr50MeanTmp))/(Emean_C500{i}(j));
        E50diffMinData(t) = (Emin_C500{i}(j) - mean(Enr50MinTmp))/(Emin_C500{i}(j));
        E50diffMaxData(t) = (Emax_C500{i}(j) - mean(Enr50MaxTmp))/(Emax_C500{i}(j));
        E50diffStdData(t) = (Estd_C500{i}(j) - mean(Enr50StdTmp))/(Estd_C500{i}(j));
        
        E75diffMeanData(t) = (Emean_C500{i}(j) - mean(Enr75MeanTmp))/(Emean_C500{i}(j));
        E75diffMinData(t) = (Emin_C500{i}(j) - mean(Enr75MinTmp))/(Emin_C500{i}(j));
        E75diffMaxData(t) = (Emax_C500{i}(j) - mean(Enr75MaxTmp))/(Emax_C500{i}(j));
        E75diffStdData(t) = (Estd_C500{i}(j) - mean(Enr75StdTmp))/(Estd_C500{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyC700.mat'
cd efficiency/
for i = 1:5
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_C700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_C700 Emin_C700 Emax_C700 Estd_C700
        end
        
        E1diffMeanData(t) = (Emean_C700{i}(j) - mean(Enr1MeanTmp))/(Emean_C700{i}(j));
        E1diffMinData(t) = (Emin_C700{i}(j) - mean(Enr1MinTmp))/(Emin_C700{i}(j));
        E1diffMaxData(t) = (Emax_C700{i}(j) - mean(Enr1MaxTmp))/(Emax_C700{i}(j));
        E1diffStdData(t) = (Estd_C700{i}(j) - mean(Enr1StdTmp))/(Estd_C700{i}(j));
        
        E10diffMeanData(t) = (Emean_C700{i}(j) - mean(Enr10MeanTmp))/(Emean_C700{i}(j));
        E10diffMinData(t) = (Emin_C700{i}(j) - mean(Enr10MinTmp))/(Emin_C700{i}(j));
        E10diffMaxData(t) = (Emax_C700{i}(j) - mean(Enr10MaxTmp))/(Emax_C700{i}(j));
        E10diffStdData(t) = (Estd_C700{i}(j) - mean(Enr10StdTmp))/(Estd_C700{i}(j));

        E25diffMeanData(t) = (Emean_C700{i}(j) - mean(Enr25MeanTmp))/(Emean_C700{i}(j));
        E25diffMinData(t) = (Emin_C700{i}(j) - mean(Enr25MinTmp))/(Emin_C700{i}(j));
        E25diffMaxData(t) = (Emax_C700{i}(j) - mean(Enr25MaxTmp))/(Emax_C700{i}(j));
        E25diffStdData(t) = (Estd_C700{i}(j) - mean(Enr25StdTmp))/(Estd_C700{i}(j));
       
        E50diffMeanData(t) = (Emean_C700{i}(j) - mean(Enr50MeanTmp))/(Emean_C700{i}(j));
        E50diffMinData(t) = (Emin_C700{i}(j) - mean(Enr50MinTmp))/(Emin_C700{i}(j));
        E50diffMaxData(t) = (Emax_C700{i}(j) - mean(Enr50MaxTmp))/(Emax_C700{i}(j));
        E50diffStdData(t) = (Estd_C700{i}(j) - mean(Enr50StdTmp))/(Estd_C700{i}(j));
        
        E75diffMeanData(t) = (Emean_C700{i}(j) - mean(Enr75MeanTmp))/(Emean_C700{i}(j));
        E75diffMinData(t) = (Emin_C700{i}(j) - mean(Enr75MinTmp))/(Emin_C700{i}(j));
        E75diffMaxData(t) = (Emax_C700{i}(j) - mean(Enr75MaxTmp))/(Emax_C700{i}(j));
        E75diffStdData(t) = (Estd_C700{i}(j) - mean(Enr75StdTmp))/(Estd_C700{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyC900.mat'
cd efficiency/
for i = 1:2
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_C900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_C900 Emin_C900 Emax_C900 Estd_C900
        end
        
        E1diffMeanData(t) = (Emean_C900{i}(j) - mean(Enr1MeanTmp))/(Emean_C900{i}(j));
        E1diffMinData(t) = (Emin_C900{i}(j) - mean(Enr1MinTmp))/(Emin_C900{i}(j));
        E1diffMaxData(t) = (Emax_C900{i}(j) - mean(Enr1MaxTmp))/(Emax_C900{i}(j));
        E1diffStdData(t) = (Estd_C900{i}(j) - mean(Enr1StdTmp))/(Estd_C900{i}(j));

        E10diffMeanData(t) = (Emean_C900{i}(j) - mean(Enr10MeanTmp))/(Emean_C900{i}(j));
        E10diffMinData(t) = (Emin_C900{i}(j) - mean(Enr10MinTmp))/(Emin_C900{i}(j));
        E10diffMaxData(t) = (Emax_C900{i}(j) - mean(Enr10MaxTmp))/(Emax_C900{i}(j));
        E10diffStdData(t) = (Estd_C900{i}(j) - mean(Enr10StdTmp))/(Estd_C900{i}(j));       
        
        E25diffMeanData(t) = (Emean_C900{i}(j) - mean(Enr25MeanTmp))/(Emean_C900{i}(j));
        E25diffMinData(t) = (Emin_C900{i}(j) - mean(Enr25MinTmp))/(Emin_C900{i}(j));
        E25diffMaxData(t) = (Emax_C900{i}(j) - mean(Enr25MaxTmp))/(Emax_C900{i}(j));
        E25diffStdData(t) = (Estd_C900{i}(j) - mean(Enr25StdTmp))/(Estd_C900{i}(j));
       
        E50diffMeanData(t) = (Emean_C900{i}(j) - mean(Enr50MeanTmp))/(Emean_C900{i}(j));
        E50diffMinData(t) = (Emin_C900{i}(j) - mean(Enr50MinTmp))/(Emin_C900{i}(j));
        E50diffMaxData(t) = (Emax_C900{i}(j) - mean(Enr50MaxTmp))/(Emax_C900{i}(j));
        E50diffStdData(t) = (Estd_C900{i}(j) - mean(Enr50StdTmp))/(Estd_C900{i}(j));
        
        E75diffMeanData(t) = (Emean_C900{i}(j) - mean(Enr75MeanTmp))/(Emean_C900{i}(j));
        E75diffMinData(t) = (Emin_C900{i}(j) - mean(Enr75MinTmp))/(Emin_C900{i}(j));
        E75diffMaxData(t) = (Emax_C900{i}(j) - mean(Enr75MaxTmp))/(Emax_C900{i}(j));
        E75diffStdData(t) = (Estd_C900{i}(j) - mean(Enr75StdTmp))/(Estd_C900{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyC950.mat'
cd efficiency/
for i = 1:1
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_C950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_C950 Emin_C950 Emax_C950 Estd_C950
        end
        
        E1diffMeanData(t) = (Emean_C950{i}(j) - mean(Enr1MeanTmp))/(Emean_C950{i}(j));
        E1diffMinData(t) = (Emin_C950{i}(j) - mean(Enr1MinTmp))/(Emin_C950{i}(j));
        E1diffMaxData(t) = (Emax_C950{i}(j) - mean(Enr1MaxTmp))/(Emax_C950{i}(j));
        E1diffStdData(t) = (Estd_C950{i}(j) - mean(Enr1StdTmp))/(Estd_C950{i}(j));

        E10diffMeanData(t) = (Emean_C950{i}(j) - mean(Enr10MeanTmp))/(Emean_C950{i}(j));
        E10diffMinData(t) = (Emin_C950{i}(j) - mean(Enr10MinTmp))/(Emin_C950{i}(j));
        E10diffMaxData(t) = (Emax_C950{i}(j) - mean(Enr10MaxTmp))/(Emax_C950{i}(j));
        E10diffStdData(t) = (Estd_C950{i}(j) - mean(Enr10StdTmp))/(Estd_C950{i}(j));      
        
        E25diffMeanData(t) = (Emean_C950{i}(j) - mean(Enr25MeanTmp))/(Emean_C950{i}(j));
        E25diffMinData(t) = (Emin_C950{i}(j) - mean(Enr25MinTmp))/(Emin_C950{i}(j));
        E25diffMaxData(t) = (Emax_C950{i}(j) - mean(Enr25MaxTmp))/(Emax_C950{i}(j));
        E25diffStdData(t) = (Estd_C950{i}(j) - mean(Enr25StdTmp))/(Estd_C950{i}(j));
       
        E50diffMeanData(t) = (Emean_C950{i}(j) - mean(Enr50MeanTmp))/(Emean_C950{i}(j));
        E50diffMinData(t) = (Emin_C950{i}(j) - mean(Enr50MinTmp))/(Emin_C950{i}(j));
        E50diffMaxData(t) = (Emax_C950{i}(j) - mean(Enr50MaxTmp))/(Emax_C950{i}(j));
        E50diffStdData(t) = (Estd_C950{i}(j) - mean(Enr50StdTmp))/(Estd_C950{i}(j));
        
        E75diffMeanData(t) = (Emean_C950{i}(j) - mean(Enr75MeanTmp))/(Emean_C950{i}(j));
        E75diffMinData(t) = (Emin_C950{i}(j) - mean(Enr75MinTmp))/(Emin_C950{i}(j));
        E75diffMaxData(t) = (Emax_C950{i}(j) - mean(Enr75MaxTmp))/(Emax_C950{i}(j));
        E75diffStdData(t) = (Estd_C950{i}(j) - mean(Enr75StdTmp))/(Estd_C950{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyC975.mat'
cd efficiency/
for i = 1:1
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_C975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_C975 Emin_C975 Emax_C975 Estd_C975
        end
        
        E1diffMeanData(t) = (Emean_C975{i}(j) - mean(Enr1MeanTmp))/(Emean_C975{i}(j));
        E1diffMinData(t) = (Emin_C975{i}(j) - mean(Enr1MinTmp))/(Emin_C975{i}(j));
        E1diffMaxData(t) = (Emax_C975{i}(j) - mean(Enr1MaxTmp))/(Emax_C975{i}(j));
        E1diffStdData(t) = (Estd_C975{i}(j) - mean(Enr1StdTmp))/(Estd_C975{i}(j));

        E10diffMeanData(t) = (Emean_C975{i}(j) - mean(Enr10MeanTmp))/(Emean_C975{i}(j));
        E10diffMinData(t) = (Emin_C975{i}(j) - mean(Enr10MinTmp))/(Emin_C975{i}(j));
        E10diffMaxData(t) = (Emax_C975{i}(j) - mean(Enr10MaxTmp))/(Emax_C975{i}(j));
        E10diffStdData(t) = (Estd_C975{i}(j) - mean(Enr10StdTmp))/(Estd_C975{i}(j));        
        
        E25diffMeanData(t) = (Emean_C975{i}(j) - mean(Enr25MeanTmp))/(Emean_C975{i}(j));
        E25diffMinData(t) = (Emin_C975{i}(j) - mean(Enr25MinTmp))/(Emin_C975{i}(j));
        E25diffMaxData(t) = (Emax_C975{i}(j) - mean(Enr25MaxTmp))/(Emax_C975{i}(j));
        E25diffStdData(t) = (Estd_C975{i}(j) - mean(Enr25StdTmp))/(Estd_C975{i}(j));
       
        E50diffMeanData(t) = (Emean_C975{i}(j) - mean(Enr50MeanTmp))/(Emean_C975{i}(j));
        E50diffMinData(t) = (Emin_C975{i}(j) - mean(Enr50MinTmp))/(Emin_C975{i}(j));
        E50diffMaxData(t) = (Emax_C975{i}(j) - mean(Enr50MaxTmp))/(Emax_C975{i}(j));
        E50diffStdData(t) = (Estd_C975{i}(j) - mean(Enr50StdTmp))/(Estd_C975{i}(j));
        
        E75diffMeanData(t) = (Emean_C975{i}(j) - mean(Enr75MeanTmp))/(Emean_C975{i}(j));
        E75diffMinData(t) = (Emin_C975{i}(j) - mean(Enr75MinTmp))/(Emin_C975{i}(j));
        E75diffMaxData(t) = (Emax_C975{i}(j) - mean(Enr75MaxTmp))/(Emax_C975{i}(j));
        E75diffStdData(t) = (Estd_C975{i}(j) - mean(Enr75StdTmp))/(Estd_C975{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyC1000.mat'
cd efficiency/
for i = 1:1
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_C1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_C1000 Emin_C1000 Emax_C1000 Estd_C1000
        end
        
        E1diffMeanData(t) = (Emean_C1000{i}(j) - mean(Enr1MeanTmp))/(Emean_C1000{i}(j));
        E1diffMinData(t) = (Emin_C1000{i}(j) - mean(Enr1MinTmp))/(Emin_C1000{i}(j));
        E1diffMaxData(t) = (Emax_C1000{i}(j) - mean(Enr1MaxTmp))/(Emax_C1000{i}(j));
        E1diffStdData(t) = (Estd_C1000{i}(j) - mean(Enr1StdTmp))/(Estd_C1000{i}(j));

        E10diffMeanData(t) = (Emean_C1000{i}(j) - mean(Enr10MeanTmp))/(Emean_C1000{i}(j));
        E10diffMinData(t) = (Emin_C1000{i}(j) - mean(Enr10MinTmp))/(Emin_C1000{i}(j));
        E10diffMaxData(t) = (Emax_C1000{i}(j) - mean(Enr10MaxTmp))/(Emax_C1000{i}(j));
        E10diffStdData(t) = (Estd_C1000{i}(j) - mean(Enr10StdTmp))/(Estd_C1000{i}(j));        
        
        E25diffMeanData(t) = (Emean_C1000{i}(j) - mean(Enr25MeanTmp))/(Emean_C1000{i}(j));
        E25diffMinData(t) = (Emin_C1000{i}(j) - mean(Enr25MinTmp))/(Emin_C1000{i}(j));
        E25diffMaxData(t) = (Emax_C1000{i}(j) - mean(Enr25MaxTmp))/(Emax_C1000{i}(j));
        E25diffStdData(t) = (Estd_C1000{i}(j) - mean(Enr25StdTmp))/(Estd_C1000{i}(j));
       
        E50diffMeanData(t) = (Emean_C1000{i}(j) - mean(Enr50MeanTmp))/(Emean_C1000{i}(j));
        E50diffMinData(t) = (Emin_C1000{i}(j) - mean(Enr50MinTmp))/(Emin_C1000{i}(j));
        E50diffMaxData(t) = (Emax_C1000{i}(j) - mean(Enr50MaxTmp))/(Emax_C1000{i}(j));
        E50diffStdData(t) = (Estd_C1000{i}(j) - mean(Enr50StdTmp))/(Estd_C1000{i}(j));
        
        E75diffMeanData(t) = (Emean_C1000{i}(j) - mean(Enr75MeanTmp))/(Emean_C1000{i}(j));
        E75diffMinData(t) = (Emin_C1000{i}(j) - mean(Enr75MinTmp))/(Emin_C1000{i}(j));
        E75diffMaxData(t) = (Emax_C1000{i}(j) - mean(Enr75MaxTmp))/(Emax_C1000{i}(j));
        E75diffStdData(t) = (Estd_C1000{i}(j) - mean(Enr75StdTmp))/(Estd_C1000{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyD500.mat'
cd efficiency/
for i = 1:10
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_D500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_D500 Emin_D500 Emax_D500 Estd_D500
        end
        
        E1diffMeanData(t) = (Emean_D500{i}(j) - mean(Enr1MeanTmp))/(Emean_D500{i}(j));
        E1diffMinData(t) = (Emin_D500{i}(j) - mean(Enr1MinTmp))/(Emin_D500{i}(j));
        E1diffMaxData(t) = (Emax_D500{i}(j) - mean(Enr1MaxTmp))/(Emax_D500{i}(j));
        E1diffStdData(t) = (Estd_D500{i}(j) - mean(Enr1StdTmp))/(Estd_D500{i}(j));
        
        E10diffMeanData(t) = (Emean_D500{i}(j) - mean(Enr10MeanTmp))/(Emean_D500{i}(j));
        E10diffMinData(t) = (Emin_D500{i}(j) - mean(Enr10MinTmp))/(Emin_D500{i}(j));
        E10diffMaxData(t) = (Emax_D500{i}(j) - mean(Enr10MaxTmp))/(Emax_D500{i}(j));
        E10diffStdData(t) = (Estd_D500{i}(j) - mean(Enr10StdTmp))/(Estd_D500{i}(j));

        E25diffMeanData(t) = (Emean_D500{i}(j) - mean(Enr25MeanTmp))/(Emean_D500{i}(j));
        E25diffMinData(t) = (Emin_D500{i}(j) - mean(Enr25MinTmp))/(Emin_D500{i}(j));
        E25diffMaxData(t) = (Emax_D500{i}(j) - mean(Enr25MaxTmp))/(Emax_D500{i}(j));
        E25diffStdData(t) = (Estd_D500{i}(j) - mean(Enr25StdTmp))/(Estd_D500{i}(j));
       
        E50diffMeanData(t) = (Emean_D500{i}(j) - mean(Enr50MeanTmp))/(Emean_D500{i}(j));
        E50diffMinData(t) = (Emin_D500{i}(j) - mean(Enr50MinTmp))/(Emin_D500{i}(j));
        E50diffMaxData(t) = (Emax_D500{i}(j) - mean(Enr50MaxTmp))/(Emax_D500{i}(j));
        E50diffStdData(t) = (Estd_D500{i}(j) - mean(Enr50StdTmp))/(Estd_D500{i}(j));
        
        E75diffMeanData(t) = (Emean_D500{i}(j) - mean(Enr75MeanTmp))/(Emean_D500{i}(j));
        E75diffMinData(t) = (Emin_D500{i}(j) - mean(Enr75MinTmp))/(Emin_D500{i}(j));
        E75diffMaxData(t) = (Emax_D500{i}(j) - mean(Enr75MaxTmp))/(Emax_D500{i}(j));
        E75diffStdData(t) = (Estd_D500{i}(j) - mean(Enr75StdTmp))/(Estd_D500{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyD700.mat'
cd efficiency/
for i = 1:5
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_D700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_D700 Emin_D700 Emax_D700 Estd_D700
        end
        
        E1diffMeanData(t) = (Emean_D700{i}(j) - mean(Enr1MeanTmp))/(Emean_D700{i}(j));
        E1diffMinData(t) = (Emin_D700{i}(j) - mean(Enr1MinTmp))/(Emin_D700{i}(j));
        E1diffMaxData(t) = (Emax_D700{i}(j) - mean(Enr1MaxTmp))/(Emax_D700{i}(j));
        E1diffStdData(t) = (Estd_D700{i}(j) - mean(Enr1StdTmp))/(Estd_D700{i}(j));
        
        E10diffMeanData(t) = (Emean_D700{i}(j) - mean(Enr10MeanTmp))/(Emean_D700{i}(j));
        E10diffMinData(t) = (Emin_D700{i}(j) - mean(Enr10MinTmp))/(Emin_D700{i}(j));
        E10diffMaxData(t) = (Emax_D700{i}(j) - mean(Enr10MaxTmp))/(Emax_D700{i}(j));
        E10diffStdData(t) = (Estd_D700{i}(j) - mean(Enr10StdTmp))/(Estd_D700{i}(j));

        E25diffMeanData(t) = (Emean_D700{i}(j) - mean(Enr25MeanTmp))/(Emean_D700{i}(j));
        E25diffMinData(t) = (Emin_D700{i}(j) - mean(Enr25MinTmp))/(Emin_D700{i}(j));
        E25diffMaxData(t) = (Emax_D700{i}(j) - mean(Enr25MaxTmp))/(Emax_D700{i}(j));
        E25diffStdData(t) = (Estd_D700{i}(j) - mean(Enr25StdTmp))/(Estd_D700{i}(j));
       
        E50diffMeanData(t) = (Emean_D700{i}(j) - mean(Enr50MeanTmp))/(Emean_D700{i}(j));
        E50diffMinData(t) = (Emin_D700{i}(j) - mean(Enr50MinTmp))/(Emin_D700{i}(j));
        E50diffMaxData(t) = (Emax_D700{i}(j) - mean(Enr50MaxTmp))/(Emax_D700{i}(j));
        E50diffStdData(t) = (Estd_D700{i}(j) - mean(Enr50StdTmp))/(Estd_D700{i}(j));
        
        E75diffMeanData(t) = (Emean_D700{i}(j) - mean(Enr75MeanTmp))/(Emean_D700{i}(j));
        E75diffMinData(t) = (Emin_D700{i}(j) - mean(Enr75MinTmp))/(Emin_D700{i}(j));
        E75diffMaxData(t) = (Emax_D700{i}(j) - mean(Enr75MaxTmp))/(Emax_D700{i}(j));
        E75diffStdData(t) = (Estd_D700{i}(j) - mean(Enr75StdTmp))/(Estd_D700{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyD900.mat'
cd efficiency/
for i = 1:2
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_D900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_D900 Emin_D900 Emax_D900 Estd_D900
        end
        
        E1diffMeanData(t) = (Emean_D900{i}(j) - mean(Enr1MeanTmp))/(Emean_D900{i}(j));
        E1diffMinData(t) = (Emin_D900{i}(j) - mean(Enr1MinTmp))/(Emin_D900{i}(j));
        E1diffMaxData(t) = (Emax_D900{i}(j) - mean(Enr1MaxTmp))/(Emax_D900{i}(j));
        E1diffStdData(t) = (Estd_D900{i}(j) - mean(Enr1StdTmp))/(Estd_D900{i}(j));

        E10diffMeanData(t) = (Emean_D900{i}(j) - mean(Enr10MeanTmp))/(Emean_D900{i}(j));
        E10diffMinData(t) = (Emin_D900{i}(j) - mean(Enr10MinTmp))/(Emin_D900{i}(j));
        E10diffMaxData(t) = (Emax_D900{i}(j) - mean(Enr10MaxTmp))/(Emax_D900{i}(j));
        E10diffStdData(t) = (Estd_D900{i}(j) - mean(Enr10StdTmp))/(Estd_D900{i}(j));        
        
        E25diffMeanData(t) = (Emean_D900{i}(j) - mean(Enr25MeanTmp))/(Emean_D900{i}(j));
        E25diffMinData(t) = (Emin_D900{i}(j) - mean(Enr25MinTmp))/(Emin_D900{i}(j));
        E25diffMaxData(t) = (Emax_D900{i}(j) - mean(Enr25MaxTmp))/(Emax_D900{i}(j));
        E25diffStdData(t) = (Estd_D900{i}(j) - mean(Enr25StdTmp))/(Estd_D900{i}(j));
       
        E50diffMeanData(t) = (Emean_D900{i}(j) - mean(Enr50MeanTmp))/(Emean_D900{i}(j));
        E50diffMinData(t) = (Emin_D900{i}(j) - mean(Enr50MinTmp))/(Emin_D900{i}(j));
        E50diffMaxData(t) = (Emax_D900{i}(j) - mean(Enr50MaxTmp))/(Emax_D900{i}(j));
        E50diffStdData(t) = (Estd_D900{i}(j) - mean(Enr50StdTmp))/(Estd_D900{i}(j));
        
        E75diffMeanData(t) = (Emean_D900{i}(j) - mean(Enr75MeanTmp))/(Emean_D900{i}(j));
        E75diffMinData(t) = (Emin_D900{i}(j) - mean(Enr75MinTmp))/(Emin_D900{i}(j));
        E75diffMaxData(t) = (Emax_D900{i}(j) - mean(Enr75MaxTmp))/(Emax_D900{i}(j));
        E75diffStdData(t) = (Estd_D900{i}(j) - mean(Enr75StdTmp))/(Estd_D900{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyD950.mat'
cd efficiency/
for i = 1:1
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_D950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_D950 Emin_D950 Emax_D950 Estd_D950
        end
        
        E1diffMeanData(t) = (Emean_D950{i}(j) - mean(Enr1MeanTmp))/(Emean_D950{i}(j));
        E1diffMinData(t) = (Emin_D950{i}(j) - mean(Enr1MinTmp))/(Emin_D950{i}(j));
        E1diffMaxData(t) = (Emax_D950{i}(j) - mean(Enr1MaxTmp))/(Emax_D950{i}(j));
        E1diffStdData(t) = (Estd_D950{i}(j) - mean(Enr1StdTmp))/(Estd_D950{i}(j));

        E10diffMeanData(t) = (Emean_D950{i}(j) - mean(Enr10MeanTmp))/(Emean_D950{i}(j));
        E10diffMinData(t) = (Emin_D950{i}(j) - mean(Enr10MinTmp))/(Emin_D950{i}(j));
        E10diffMaxData(t) = (Emax_D950{i}(j) - mean(Enr10MaxTmp))/(Emax_D950{i}(j));
        E10diffStdData(t) = (Estd_D950{i}(j) - mean(Enr10StdTmp))/(Estd_D950{i}(j));        
        
        E25diffMeanData(t) = (Emean_D950{i}(j) - mean(Enr25MeanTmp))/(Emean_D950{i}(j));
        E25diffMinData(t) = (Emin_D950{i}(j) - mean(Enr25MinTmp))/(Emin_D950{i}(j));
        E25diffMaxData(t) = (Emax_D950{i}(j) - mean(Enr25MaxTmp))/(Emax_D950{i}(j));
        E25diffStdData(t) = (Estd_D950{i}(j) - mean(Enr25StdTmp))/(Estd_D950{i}(j));
       
        E50diffMeanData(t) = (Emean_D950{i}(j) - mean(Enr50MeanTmp))/(Emean_D950{i}(j));
        E50diffMinData(t) = (Emin_D950{i}(j) - mean(Enr50MinTmp))/(Emin_D950{i}(j));
        E50diffMaxData(t) = (Emax_D950{i}(j) - mean(Enr50MaxTmp))/(Emax_D950{i}(j));
        E50diffStdData(t) = (Estd_D950{i}(j) - mean(Enr50StdTmp))/(Estd_D950{i}(j));
        
        E75diffMeanData(t) = (Emean_D950{i}(j) - mean(Enr75MeanTmp))/(Emean_D950{i}(j));
        E75diffMinData(t) = (Emin_D950{i}(j) - mean(Enr75MinTmp))/(Emin_D950{i}(j));
        E75diffMaxData(t) = (Emax_D950{i}(j) - mean(Enr75MaxTmp))/(Emax_D950{i}(j));
        E75diffStdData(t) = (Estd_D950{i}(j) - mean(Enr75StdTmp))/(Estd_D950{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyD975.mat'
cd efficiency/
for i = 1:1
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_D975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_D975 Emin_D975 Emax_D975 Estd_D975
        end
        
        E1diffMeanData(t) = (Emean_D975{i}(j) - mean(Enr1MeanTmp))/(Emean_D975{i}(j));
        E1diffMinData(t) = (Emin_D975{i}(j) - mean(Enr1MinTmp))/(Emin_D975{i}(j));
        E1diffMaxData(t) = (Emax_D975{i}(j) - mean(Enr1MaxTmp))/(Emax_D975{i}(j));
        E1diffStdData(t) = (Estd_D975{i}(j) - mean(Enr1StdTmp))/(Estd_D975{i}(j));
        
        E10diffMeanData(t) = (Emean_D975{i}(j) - mean(Enr10MeanTmp))/(Emean_D975{i}(j));
        E10diffMinData(t) = (Emin_D975{i}(j) - mean(Enr10MinTmp))/(Emin_D975{i}(j));
        E10diffMaxData(t) = (Emax_D975{i}(j) - mean(Enr10MaxTmp))/(Emax_D975{i}(j));
        E10diffStdData(t) = (Estd_D975{i}(j) - mean(Enr10StdTmp))/(Estd_D975{i}(j));

        E25diffMeanData(t) = (Emean_D975{i}(j) - mean(Enr25MeanTmp))/(Emean_D975{i}(j));
        E25diffMinData(t) = (Emin_D975{i}(j) - mean(Enr25MinTmp))/(Emin_D975{i}(j));
        E25diffMaxData(t) = (Emax_D975{i}(j) - mean(Enr25MaxTmp))/(Emax_D975{i}(j));
        E25diffStdData(t) = (Estd_D975{i}(j) - mean(Enr25StdTmp))/(Estd_D975{i}(j));
       
        E50diffMeanData(t) = (Emean_D975{i}(j) - mean(Enr50MeanTmp))/(Emean_D975{i}(j));
        E50diffMinData(t) = (Emin_D975{i}(j) - mean(Enr50MinTmp))/(Emin_D975{i}(j));
        E50diffMaxData(t) = (Emax_D975{i}(j) - mean(Enr50MaxTmp))/(Emax_D975{i}(j));
        E50diffStdData(t) = (Estd_D975{i}(j) - mean(Enr50StdTmp))/(Estd_D975{i}(j));
        
        E75diffMeanData(t) = (Emean_D975{i}(j) - mean(Enr75MeanTmp))/(Emean_D975{i}(j));
        E75diffMinData(t) = (Emin_D975{i}(j) - mean(Enr75MinTmp))/(Emin_D975{i}(j));
        E75diffMaxData(t) = (Emax_D975{i}(j) - mean(Enr75MaxTmp))/(Emax_D975{i}(j));
        E75diffStdData(t) = (Estd_D975{i}(j) - mean(Enr75StdTmp))/(Estd_D975{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyD1000.mat'
cd efficiency/
for i = 1:1
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_D1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_D1000 Emin_D1000 Emax_D1000 Estd_D1000
        end
        
        E1diffMeanData(t) = (Emean_D1000{i}(j) - mean(Enr1MeanTmp))/(Emean_D1000{i}(j));
        E1diffMinData(t) = (Emin_D1000{i}(j) - mean(Enr1MinTmp))/(Emin_D1000{i}(j));
        E1diffMaxData(t) = (Emax_D1000{i}(j) - mean(Enr1MaxTmp))/(Emax_D1000{i}(j));
        E1diffStdData(t) = (Estd_D1000{i}(j) - mean(Enr1StdTmp))/(Estd_D1000{i}(j));

        E10diffMeanData(t) = (Emean_D1000{i}(j) - mean(Enr10MeanTmp))/(Emean_D1000{i}(j));
        E10diffMinData(t) = (Emin_D1000{i}(j) - mean(Enr10MinTmp))/(Emin_D1000{i}(j));
        E10diffMaxData(t) = (Emax_D1000{i}(j) - mean(Enr10MaxTmp))/(Emax_D1000{i}(j));
        E10diffStdData(t) = (Estd_D1000{i}(j) - mean(Enr10StdTmp))/(Estd_D1000{i}(j));        
        
        E25diffMeanData(t) = (Emean_D1000{i}(j) - mean(Enr25MeanTmp))/(Emean_D1000{i}(j));
        E25diffMinData(t) = (Emin_D1000{i}(j) - mean(Enr25MinTmp))/(Emin_D1000{i}(j));
        E25diffMaxData(t) = (Emax_D1000{i}(j) - mean(Enr25MaxTmp))/(Emax_D1000{i}(j));
        E25diffStdData(t) = (Estd_D1000{i}(j) - mean(Enr25StdTmp))/(Estd_D1000{i}(j));
       
        E50diffMeanData(t) = (Emean_D1000{i}(j) - mean(Enr50MeanTmp))/(Emean_D1000{i}(j));
        E50diffMinData(t) = (Emin_D1000{i}(j) - mean(Enr50MinTmp))/(Emin_D1000{i}(j));
        E50diffMaxData(t) = (Emax_D1000{i}(j) - mean(Enr50MaxTmp))/(Emax_D1000{i}(j));
        E50diffStdData(t) = (Estd_D1000{i}(j) - mean(Enr50StdTmp))/(Estd_D1000{i}(j));
        
        E75diffMeanData(t) = (Emean_D1000{i}(j) - mean(Enr75MeanTmp))/(Emean_D1000{i}(j));
        E75diffMinData(t) = (Emin_D1000{i}(j) - mean(Enr75MinTmp))/(Emin_D1000{i}(j));
        E75diffMaxData(t) = (Emax_D1000{i}(j) - mean(Enr75MaxTmp))/(Emax_D1000{i}(j));
        E75diffStdData(t) = (Estd_D1000{i}(j) - mean(Enr75StdTmp))/(Estd_D1000{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyE500.mat'
cd efficiency/
for i = 1:10
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_E500_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_E500 Emin_E500 Emax_E500 Estd_E500
        end
        
        E1diffMeanData(t) = (Emean_E500{i}(j) - mean(Enr1MeanTmp))/(Emean_E500{i}(j));
        E1diffMinData(t) = (Emin_E500{i}(j) - mean(Enr1MinTmp))/(Emin_E500{i}(j));
        E1diffMaxData(t) = (Emax_E500{i}(j) - mean(Enr1MaxTmp))/(Emax_E500{i}(j));
        E1diffStdData(t) = (Estd_E500{i}(j) - mean(Enr1StdTmp))/(Estd_E500{i}(j));

        E10diffMeanData(t) = (Emean_E500{i}(j) - mean(Enr10MeanTmp))/(Emean_E500{i}(j));
        E10diffMinData(t) = (Emin_E500{i}(j) - mean(Enr10MinTmp))/(Emin_E500{i}(j));
        E10diffMaxData(t) = (Emax_E500{i}(j) - mean(Enr10MaxTmp))/(Emax_E500{i}(j));
        E10diffStdData(t) = (Estd_E500{i}(j) - mean(Enr10StdTmp))/(Estd_E500{i}(j));        
        
        E25diffMeanData(t) = (Emean_E500{i}(j) - mean(Enr25MeanTmp))/(Emean_E500{i}(j));
        E25diffMinData(t) = (Emin_E500{i}(j) - mean(Enr25MinTmp))/(Emin_E500{i}(j));
        E25diffMaxData(t) = (Emax_E500{i}(j) - mean(Enr25MaxTmp))/(Emax_E500{i}(j));
        E25diffStdData(t) = (Estd_E500{i}(j) - mean(Enr25StdTmp))/(Estd_E500{i}(j));
       
        E50diffMeanData(t) = (Emean_E500{i}(j) - mean(Enr50MeanTmp))/(Emean_E500{i}(j));
        E50diffMinData(t) = (Emin_E500{i}(j) - mean(Enr50MinTmp))/(Emin_E500{i}(j));
        E50diffMaxData(t) = (Emax_E500{i}(j) - mean(Enr50MaxTmp))/(Emax_E500{i}(j));
        E50diffStdData(t) = (Estd_E500{i}(j) - mean(Enr50StdTmp))/(Estd_E500{i}(j));
        
        E75diffMeanData(t) = (Emean_E500{i}(j) - mean(Enr75MeanTmp))/(Emean_E500{i}(j));
        E75diffMinData(t) = (Emin_E500{i}(j) - mean(Enr75MinTmp))/(Emin_E500{i}(j));
        E75diffMaxData(t) = (Emax_E500{i}(j) - mean(Enr75MaxTmp))/(Emax_E500{i}(j));
        E75diffStdData(t) = (Estd_E500{i}(j) - mean(Enr75StdTmp))/(Estd_E500{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyE700.mat'
cd efficiency/
for i = 1:5
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_E700_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_E700 Emin_E700 Emax_E700 Estd_E700
        end
        
        E1diffMeanData(t) = (Emean_E700{i}(j) - mean(Enr1MeanTmp))/(Emean_E700{i}(j));
        E1diffMinData(t) = (Emin_E700{i}(j) - mean(Enr1MinTmp))/(Emin_E700{i}(j));
        E1diffMaxData(t) = (Emax_E700{i}(j) - mean(Enr1MaxTmp))/(Emax_E700{i}(j));
        E1diffStdData(t) = (Estd_E700{i}(j) - mean(Enr1StdTmp))/(Estd_E700{i}(j));

        E10diffMeanData(t) = (Emean_E700{i}(j) - mean(Enr10MeanTmp))/(Emean_E700{i}(j));
        E10diffMinData(t) = (Emin_E700{i}(j) - mean(Enr10MinTmp))/(Emin_E700{i}(j));
        E10diffMaxData(t) = (Emax_E700{i}(j) - mean(Enr10MaxTmp))/(Emax_E700{i}(j));
        E10diffStdData(t) = (Estd_E700{i}(j) - mean(Enr10StdTmp))/(Estd_E700{i}(j));        
        
        E25diffMeanData(t) = (Emean_E700{i}(j) - mean(Enr25MeanTmp))/(Emean_E700{i}(j));
        E25diffMinData(t) = (Emin_E700{i}(j) - mean(Enr25MinTmp))/(Emin_E700{i}(j));
        E25diffMaxData(t) = (Emax_E700{i}(j) - mean(Enr25MaxTmp))/(Emax_E700{i}(j));
        E25diffStdData(t) = (Estd_E700{i}(j) - mean(Enr25StdTmp))/(Estd_E700{i}(j));
       
        E50diffMeanData(t) = (Emean_E700{i}(j) - mean(Enr50MeanTmp))/(Emean_E700{i}(j));
        E50diffMinData(t) = (Emin_E700{i}(j) - mean(Enr50MinTmp))/(Emin_E700{i}(j));
        E50diffMaxData(t) = (Emax_E700{i}(j) - mean(Enr50MaxTmp))/(Emax_E700{i}(j));
        E50diffStdData(t) = (Estd_E700{i}(j) - mean(Enr50StdTmp))/(Estd_E700{i}(j));
        
        E75diffMeanData(t) = (Emean_E700{i}(j) - mean(Enr75MeanTmp))/(Emean_E700{i}(j));
        E75diffMinData(t) = (Emin_E700{i}(j) - mean(Enr75MinTmp))/(Emin_E700{i}(j));
        E75diffMaxData(t) = (Emax_E700{i}(j) - mean(Enr75MaxTmp))/(Emax_E700{i}(j));
        E75diffStdData(t) = (Estd_E700{i}(j) - mean(Enr75StdTmp))/(Estd_E700{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyE900.mat'
cd efficiency/
for i = 1:2
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_E900_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_E900 Emin_E900 Emax_E900 Estd_E900
        end
        
        E1diffMeanData(t) = (Emean_E900{i}(j) - mean(Enr1MeanTmp))/(Emean_E900{i}(j));
        E1diffMinData(t) = (Emin_E900{i}(j) - mean(Enr1MinTmp))/(Emin_E900{i}(j));
        E1diffMaxData(t) = (Emax_E900{i}(j) - mean(Enr1MaxTmp))/(Emax_E900{i}(j));
        E1diffStdData(t) = (Estd_E900{i}(j) - mean(Enr1StdTmp))/(Estd_E900{i}(j));
        
        E10diffMeanData(t) = (Emean_E900{i}(j) - mean(Enr10MeanTmp))/(Emean_E900{i}(j));
        E10diffMinData(t) = (Emin_E900{i}(j) - mean(Enr10MinTmp))/(Emin_E900{i}(j));
        E10diffMaxData(t) = (Emax_E900{i}(j) - mean(Enr10MaxTmp))/(Emax_E900{i}(j));
        E10diffStdData(t) = (Estd_E900{i}(j) - mean(Enr10StdTmp))/(Estd_E900{i}(j));        
        
        E25diffMeanData(t) = (Emean_E900{i}(j) - mean(Enr25MeanTmp))/(Emean_E900{i}(j));
        E25diffMinData(t) = (Emin_E900{i}(j) - mean(Enr25MinTmp))/(Emin_E900{i}(j));
        E25diffMaxData(t) = (Emax_E900{i}(j) - mean(Enr25MaxTmp))/(Emax_E900{i}(j));
        E25diffStdData(t) = (Estd_E900{i}(j) - mean(Enr25StdTmp))/(Estd_E900{i}(j));
       
        E50diffMeanData(t) = (Emean_E900{i}(j) - mean(Enr50MeanTmp))/(Emean_E900{i}(j));
        E50diffMinData(t) = (Emin_E900{i}(j) - mean(Enr50MinTmp))/(Emin_E900{i}(j));
        E50diffMaxData(t) = (Emax_E900{i}(j) - mean(Enr50MaxTmp))/(Emax_E900{i}(j));
        E50diffStdData(t) = (Estd_E900{i}(j) - mean(Enr50StdTmp))/(Estd_E900{i}(j));
        
        E75diffMeanData(t) = (Emean_E900{i}(j) - mean(Enr75MeanTmp))/(Emean_E900{i}(j));
        E75diffMinData(t) = (Emin_E900{i}(j) - mean(Enr75MinTmp))/(Emin_E900{i}(j));
        E75diffMaxData(t) = (Emax_E900{i}(j) - mean(Enr75MaxTmp))/(Emax_E900{i}(j));
        E75diffStdData(t) = (Estd_E900{i}(j) - mean(Enr75StdTmp))/(Estd_E900{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyE950.mat'
cd efficiency/
for i = 1:1
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_E950_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_E950 Emin_E950 Emax_E950 Estd_E950
        end
        
        E1diffMeanData(t) = (Emean_E950{i}(j) - mean(Enr1MeanTmp))/(Emean_E950{i}(j));
        E1diffMinData(t) = (Emin_E950{i}(j) - mean(Enr1MinTmp))/(Emin_E950{i}(j));
        E1diffMaxData(t) = (Emax_E950{i}(j) - mean(Enr1MaxTmp))/(Emax_E950{i}(j));
        E1diffStdData(t) = (Estd_E950{i}(j) - mean(Enr1StdTmp))/(Estd_E950{i}(j));

        E10diffMeanData(t) = (Emean_E950{i}(j) - mean(Enr10MeanTmp))/(Emean_E950{i}(j));
        E10diffMinData(t) = (Emin_E950{i}(j) - mean(Enr10MinTmp))/(Emin_E950{i}(j));
        E10diffMaxData(t) = (Emax_E950{i}(j) - mean(Enr10MaxTmp))/(Emax_E950{i}(j));
        E10diffStdData(t) = (Estd_E950{i}(j) - mean(Enr10StdTmp))/(Estd_E950{i}(j));        
        
        E25diffMeanData(t) = (Emean_E950{i}(j) - mean(Enr25MeanTmp))/(Emean_E950{i}(j));
        E25diffMinData(t) = (Emin_E950{i}(j) - mean(Enr25MinTmp))/(Emin_E950{i}(j));
        E25diffMaxData(t) = (Emax_E950{i}(j) - mean(Enr25MaxTmp))/(Emax_E950{i}(j));
        E25diffStdData(t) = (Estd_E950{i}(j) - mean(Enr25StdTmp))/(Estd_E950{i}(j));
       
        E50diffMeanData(t) = (Emean_E950{i}(j) - mean(Enr50MeanTmp))/(Emean_E950{i}(j));
        E50diffMinData(t) = (Emin_E950{i}(j) - mean(Enr50MinTmp))/(Emin_E950{i}(j));
        E50diffMaxData(t) = (Emax_E950{i}(j) - mean(Enr50MaxTmp))/(Emax_E950{i}(j));
        E50diffStdData(t) = (Estd_E950{i}(j) - mean(Enr50StdTmp))/(Estd_E950{i}(j));
        
        E75diffMeanData(t) = (Emean_E950{i}(j) - mean(Enr75MeanTmp))/(Emean_E950{i}(j));
        E75diffMinData(t) = (Emin_E950{i}(j) - mean(Enr75MinTmp))/(Emin_E950{i}(j));
        E75diffMaxData(t) = (Emax_E950{i}(j) - mean(Enr75MaxTmp))/(Emax_E950{i}(j));
        E75diffStdData(t) = (Estd_E950{i}(j) - mean(Enr75StdTmp))/(Estd_E950{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyE975.mat'
cd efficiency/
for i = 1:1
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_E975_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_E975 Emin_E975 Emax_E975 Estd_E975
        end
        
        E1diffMeanData(t) = (Emean_E975{i}(j) - mean(Enr1MeanTmp))/(Emean_E975{i}(j));
        E1diffMinData(t) = (Emin_E975{i}(j) - mean(Enr1MinTmp))/(Emin_E975{i}(j));
        E1diffMaxData(t) = (Emax_E975{i}(j) - mean(Enr1MaxTmp))/(Emax_E975{i}(j));
        E1diffStdData(t) = (Estd_E975{i}(j) - mean(Enr1StdTmp))/(Estd_E975{i}(j));

        E10diffMeanData(t) = (Emean_E975{i}(j) - mean(Enr10MeanTmp))/(Emean_E975{i}(j));
        E10diffMinData(t) = (Emin_E975{i}(j) - mean(Enr10MinTmp))/(Emin_E975{i}(j));
        E10diffMaxData(t) = (Emax_E975{i}(j) - mean(Enr10MaxTmp))/(Emax_E975{i}(j));
        E10diffStdData(t) = (Estd_E975{i}(j) - mean(Enr10StdTmp))/(Estd_E975{i}(j));        
        
        E25diffMeanData(t) = (Emean_E975{i}(j) - mean(Enr25MeanTmp))/(Emean_E975{i}(j));
        E25diffMinData(t) = (Emin_E975{i}(j) - mean(Enr25MinTmp))/(Emin_E975{i}(j));
        E25diffMaxData(t) = (Emax_E975{i}(j) - mean(Enr25MaxTmp))/(Emax_E975{i}(j));
        E25diffStdData(t) = (Estd_E975{i}(j) - mean(Enr25StdTmp))/(Estd_E975{i}(j));
       
        E50diffMeanData(t) = (Emean_E975{i}(j) - mean(Enr50MeanTmp))/(Emean_E975{i}(j));
        E50diffMinData(t) = (Emin_E975{i}(j) - mean(Enr50MinTmp))/(Emin_E975{i}(j));
        E50diffMaxData(t) = (Emax_E975{i}(j) - mean(Enr50MaxTmp))/(Emax_E975{i}(j));
        E50diffStdData(t) = (Estd_E975{i}(j) - mean(Enr50StdTmp))/(Estd_E975{i}(j));
        
        E75diffMeanData(t) = (Emean_E975{i}(j) - mean(Enr75MeanTmp))/(Emean_E975{i}(j));
        E75diffMinData(t) = (Emin_E975{i}(j) - mean(Enr75MinTmp))/(Emin_E975{i}(j));
        E75diffMaxData(t) = (Emax_E975{i}(j) - mean(Enr75MaxTmp))/(Emax_E975{i}(j));
        E75diffStdData(t) = (Estd_E975{i}(j) - mean(Enr75StdTmp))/(Estd_E975{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t


cd ../
load 'initEfficiencyE1000.mat'
cd efficiency/
for i = 1:1
    for j = 1:20
        for k = 1:30
            fileName = strcat('Enr_E1000_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
            load(fileName);
            
            Enr1MeanTmp(k) = Enr(1);
            Enr10MeanTmp(k) = Enr(2);
            Enr25MeanTmp(k) = Enr(3);
            Enr50MeanTmp(k) = Enr(4);
            Enr75MeanTmp(k) = Enr(5);
            Enr1MinTmp(k) = Enr(6);
            Enr10MinTmp(k) = Enr(7);
            Enr25MinTmp(k) = Enr(8);
            Enr50MinTmp(k) = Enr(9);
            Enr75MinTmp(k) = Enr(10);
            Enr1MaxTmp(k) = Enr(11);
            Enr10MaxTmp(k) = Enr(12);
            Enr25MaxTmp(k) = Enr(13);
            Enr50MaxTmp(k) = Enr(14);
            Enr75MaxTmp(k) = Enr(15);
            Enr1StdTmp(k) = Enr(16);
            Enr10StdTmp(k) = Enr(17);
            Enr25StdTmp(k) = Enr(18);
            Enr50StdTmp(k) = Enr(19);
            Enr75StdTmp(k) = Enr(20);
            
            clearvars -except Enr1MeanTmp Enr10MeanTmp Enr25MeanTmp Enr50MeanTmp Enr75MeanTmp Enr1MinTmp Enr10MinTmp Enr25MinTmp Enr50MinTmp Enr75MinTmp Enr1MaxTmp Enr10MaxTmp Enr25MaxTmp Enr50MaxTmp Enr75MaxTmp Enr1StdTmp Enr10StdTmp Enr25StdTmp Enr50StdTmp Enr75StdTmp i j k t E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData Emean_E1000 Emin_E1000 Emax_E1000 Estd_E1000
        end
        
        E1diffMeanData(t) = (Emean_E1000{i}(j) - mean(Enr1MeanTmp))/(Emean_E1000{i}(j));
        E1diffMinData(t) = (Emin_E1000{i}(j) - mean(Enr1MinTmp))/(Emin_E1000{i}(j));
        E1diffMaxData(t) = (Emax_E1000{i}(j) - mean(Enr1MaxTmp))/(Emax_E1000{i}(j));
        E1diffStdData(t) = (Estd_E1000{i}(j) - mean(Enr1StdTmp))/(Estd_E1000{i}(j));

        E10diffMeanData(t) = (Emean_E1000{i}(j) - mean(Enr10MeanTmp))/(Emean_E1000{i}(j));
        E10diffMinData(t) = (Emin_E1000{i}(j) - mean(Enr10MinTmp))/(Emin_E1000{i}(j));
        E10diffMaxData(t) = (Emax_E1000{i}(j) - mean(Enr10MaxTmp))/(Emax_E1000{i}(j));
        E10diffStdData(t) = (Estd_E1000{i}(j) - mean(Enr10StdTmp))/(Estd_E1000{i}(j));        
        
        E25diffMeanData(t) = (Emean_E1000{i}(j) - mean(Enr25MeanTmp))/(Emean_E1000{i}(j));
        E25diffMinData(t) = (Emin_E1000{i}(j) - mean(Enr25MinTmp))/(Emin_E1000{i}(j));
        E25diffMaxData(t) = (Emax_E1000{i}(j) - mean(Enr25MaxTmp))/(Emax_E1000{i}(j));
        E25diffStdData(t) = (Estd_E1000{i}(j) - mean(Enr25StdTmp))/(Estd_E1000{i}(j));
       
        E50diffMeanData(t) = (Emean_E1000{i}(j) - mean(Enr50MeanTmp))/(Emean_E1000{i}(j));
        E50diffMinData(t) = (Emin_E1000{i}(j) - mean(Enr50MinTmp))/(Emin_E1000{i}(j));
        E50diffMaxData(t) = (Emax_E1000{i}(j) - mean(Enr50MaxTmp))/(Emax_E1000{i}(j));
        E50diffStdData(t) = (Estd_E1000{i}(j) - mean(Enr50StdTmp))/(Estd_E1000{i}(j));
        
        E75diffMeanData(t) = (Emean_E1000{i}(j) - mean(Enr75MeanTmp))/(Emean_E1000{i}(j));
        E75diffMinData(t) = (Emin_E1000{i}(j) - mean(Enr75MinTmp))/(Emin_E1000{i}(j));
        E75diffMaxData(t) = (Emax_E1000{i}(j) - mean(Enr75MaxTmp))/(Emax_E1000{i}(j));
        E75diffStdData(t) = (Estd_E1000{i}(j) - mean(Enr75StdTmp))/(Estd_E1000{i}(j));
        
        t = t + 1;
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData t

