
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EFFICIENCY CHANGE

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

load 'initEfficiencyIEEE300.mat'
cd efficiency/
for i = 1:1
    for j = 1:1
        for k = 1:30
            fileName = strcat('Enr_IEEE300_',int2str(i),'_',int2str(j),'_',int2str(k),'.mat');
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
            
        end
        
        E1diffMeanData = (Emean_IEEE300{i}(j) - mean(Enr1MeanTmp))/(Emean_IEEE300{i}(j));
        E1diffMinData = (Emin_IEEE300{i}(j) - mean(Enr1MinTmp))/(Emin_IEEE300{i}(j));
        E1diffMaxData = (Emax_IEEE300{i}(j) - mean(Enr1MaxTmp))/(Emax_IEEE300{i}(j));
        E1diffStdData = (Estd_IEEE300{i}(j) - mean(Enr1StdTmp))/(Estd_IEEE300{i}(j));
        
        E10diffMeanData = (Emean_IEEE300{i}(j) - mean(Enr10MeanTmp))/(Emean_IEEE300{i}(j));
        E10diffMinData = (Emin_IEEE300{i}(j) - mean(Enr10MinTmp))/(Emin_IEEE300{i}(j));
        E10diffMaxData = (Emax_IEEE300{i}(j) - mean(Enr10MaxTmp))/(Emax_IEEE300{i}(j));
        E10diffStdData = (Estd_IEEE300{i}(j) - mean(Enr10StdTmp))/(Estd_IEEE300{i}(j));

        E25diffMeanData = (Emean_IEEE300{i}(j) - mean(Enr25MeanTmp))/(Emean_IEEE300{i}(j));
        E25diffMinData = (Emin_IEEE300{i}(j) - mean(Enr25MinTmp))/(Emin_IEEE300{i}(j));
        E25diffMaxData = (Emax_IEEE300{i}(j) - mean(Enr25MaxTmp))/(Emax_IEEE300{i}(j));
        E25diffStdData = (Estd_IEEE300{i}(j) - mean(Enr25StdTmp))/(Estd_IEEE300{i}(j));
       
        E50diffMeanData = (Emean_IEEE300{i}(j) - mean(Enr50MeanTmp))/(Emean_IEEE300{i}(j));
        E50diffMinData = (Emin_IEEE300{i}(j) - mean(Enr50MinTmp))/(Emin_IEEE300{i}(j));
        E50diffMaxData = (Emax_IEEE300{i}(j) - mean(Enr50MaxTmp))/(Emax_IEEE300{i}(j));
        E50diffStdData = (Estd_IEEE300{i}(j) - mean(Enr50StdTmp))/(Estd_IEEE300{i}(j));
        
        E75diffMeanData = (Emean_IEEE300{i}(j) - mean(Enr75MeanTmp))/(Emean_IEEE300{i}(j));
        E75diffMinData = (Emin_IEEE300{i}(j) - mean(Enr75MinTmp))/(Emin_IEEE300{i}(j));
        E75diffMaxData = (Emax_IEEE300{i}(j) - mean(Enr75MaxTmp))/(Emax_IEEE300{i}(j));
        E75diffStdData = (Estd_IEEE300{i}(j) - mean(Enr75StdTmp))/(Estd_IEEE300{i}(j));
        
    end
end
clearvars -except E1diffMeanData E1diffMinData E1diffMaxData E1diffStdData E10diffMeanData E10diffMinData E10diffMaxData E10diffStdData E25diffMeanData E25diffMinData E25diffMaxData E25diffStdData E50diffMeanData E50diffMinData E50diffMaxData E50diffStdData E75diffMeanData E75diffMinData E75diffMaxData E75diffStdData

