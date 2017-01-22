cd /media/Files/JHU/Infrastructure/networks2012/

load('networksYthan.mat')
load('failuresNR_Ythan.mat')

YthanPlotInit = A_Ythan{1}{1};
for i = 1:n_Ythan
    YthanPlotInit(i,i) = 0;
end

YthanPlot10 = A_Ythan{1}{1};
YthanPlot10(failuresNR_Ythan{1}{1}{1}(1:floor(0.10*n_Ythan)),:) = 0;
YthanPlot10(:,failuresNR_Ythan{1}{1}{1}(1:floor(0.10*n_Ythan))) = 0;
for i = 1:n_Ythan
    YthanPlot10(i,i) = 0;
end


YthanPlot25 = A_Ythan{1}{1};
YthanPlot25(failuresNR_Ythan{1}{1}{1}(1:floor(0.25*n_Ythan)),:) = 0;
YthanPlot25(:,failuresNR_Ythan{1}{1}{1}(1:floor(0.25*n_Ythan))) = 0;
for i = 1:n_Ythan
    YthanPlot25(i,i) = 0;
end


YthanPlot50 = A_Ythan{1}{1};
YthanPlot50(failuresNR_Ythan{1}{1}{1}(1:floor(0.50*n_Ythan)),:) = 0;
YthanPlot50(:,failuresNR_Ythan{1}{1}{1}(1:floor(0.50*n_Ythan))) = 0;
for i = 1:n_Ythan
    YthanPlot50(i,i) = 0;
end

YthanPlot75 = A_Ythan{1}{1};
YthanPlot75(failuresNR_Ythan{1}{1}{1}(1:floor(0.75*n_Ythan)),:) = 0;
YthanPlot75(:,failuresNR_Ythan{1}{1}{1}(1:floor(0.75*n_Ythan))) = 0;
for i = 1:n_Ythan
    YthanPlot75(i,i) = 0;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cd /media/Files/JHU/Infrastructure/networks2012/

load('networksTerr.mat')
load('failuresNR_Terr.mat')

TerrPlotInit = A_terr{1}{1};
for i = 1:n_terr
    TerrPlotInit(i,i) = 0;
end

TerrPlot10 = A_terr{1}{1};
TerrPlot10(failuresNR_Terr{1}{1}{1}(1:floor(0.10*n_terr)),:) = 0;
TerrPlot10(:,failuresNR_Terr{1}{1}{1}(1:floor(0.10*n_terr))) = 0;
for i = 1:n_terr
    TerrPlot10(i,i) = 0;
end


TerrPlot25 = A_terr{1}{1};
TerrPlot25(failuresNR_Terr{1}{1}{1}(1:floor(0.25*n_terr)),:) = 0;
TerrPlot25(:,failuresNR_Terr{1}{1}{1}(1:floor(0.25*n_terr))) = 0;
for i = 1:n_terr
    TerrPlot25(i,i) = 0;
end


TerrPlot50 = A_terr{1}{1};
TerrPlot50(failuresNR_Terr{1}{1}{1}(1:floor(0.50*n_terr)),:) = 0;
TerrPlot50(:,failuresNR_Terr{1}{1}{1}(1:floor(0.50*n_terr))) = 0;
for i = 1:n_terr
    TerrPlot50(i,i) = 0;
end

TerrPlot75 = A_terr{1}{1};
TerrPlot75(failuresNR_Terr{1}{1}{1}(1:floor(0.75*n_terr)),:) = 0;
TerrPlot75(:,failuresNR_Terr{1}{1}{1}(1:floor(0.75*n_terr))) = 0;
for i = 1:n_terr
    TerrPlot75(i,i) = 0;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cd /media/Files/JHU/Infrastructure/networks2012/

load('networksEcoUndir_connect.mat')
load('failuresNR_ecoUndir_connect.mat')

EcoPlotInit = A_ecoUndir_connect{1}{1};
for i = 1:n_ecoUndir_connect
    EcoPlotInit(i,i) = 0;
end

EcoPlot10 = A_ecoUndir_connect{1}{1};
EcoPlot10(failuresNR_ecoUndir_connect{1}{1}{1}(1:floor(0.10*n_ecoUndir_connect)),:) = 0;
EcoPlot10(:,failuresNR_ecoUndir_connect{1}{1}{1}(1:floor(0.10*n_ecoUndir_connect))) = 0;
for i = 1:n_ecoUndir_connect
    EcoPlot10(i,i) = 0;
end


EcoPlot25 = A_ecoUndir_connect{1}{1};
EcoPlot25(failuresNR_ecoUndir_connect{1}{1}{1}(1:floor(0.25*n_ecoUndir_connect)),:) = 0;
EcoPlot25(:,failuresNR_ecoUndir_connect{1}{1}{1}(1:floor(0.25*n_ecoUndir_connect))) = 0;
for i = 1:n_ecoUndir_connect
    EcoPlot25(i,i) = 0;
end


EcoPlot50 = A_ecoUndir_connect{1}{1};
EcoPlot50(failuresNR_ecoUndir_connect{1}{1}{1}(1:floor(0.50*n_ecoUndir_connect)),:) = 0;
EcoPlot50(:,failuresNR_ecoUndir_connect{1}{1}{1}(1:floor(0.50*n_ecoUndir_connect))) = 0;
for i = 1:n_ecoUndir_connect
    EcoPlot50(i,i) = 0;
end

EcoPlot75 = A_ecoUndir_connect{1}{1};
EcoPlot75(failuresNR_ecoUndir_connect{1}{1}{1}(1:floor(0.75*n_ecoUndir_connect)),:) = 0;
EcoPlot75(:,failuresNR_ecoUndir_connect{1}{1}{1}(1:floor(0.75*n_ecoUndir_connect))) = 0;
for i = 1:n_ecoUndir_connect
    EcoPlot75(i,i) = 0;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






















cd /media/Files/JHU/Infrastructure/networks2012/backups/slr

load('networksA500.mat')
load('failuresNR_A500.mat')

cd /media/Files/JHU/Infrastructure/networks2012/plots


fileID = fopen('networkPlotSageInit.txt','wt');
for i = 1:length(A_A500{1}{1})
    for j = 1:length(A_A500{1}{1})
        if j == 1
            fprintf(fileID,'(%u, ',A_A500{1}{1}(i,j));
        elseif j ~= length(A_A500{1}{1})
            fprintf(fileID,'%u, ',A_A500{1}{1}(i,j));
        else
            fprintf(fileID,'%u), ',A_A500{1}{1}(i,j));            
        end
    end
end
fclose(fileID);

Afailure10 = A_A500{1}{1};
Afailure10(failuresNR_A500{1}{1}{1}(1:10),:) = 0;
Afailure10(:,failuresNR_A500{1}{1}{1}(1:10)) = 0;

fileID = fopen('networkPlotSage10.txt','w');
for i = 1:length(Afailure10)
    for j = 1:length(Afailure10)
        if j == 1
            fprintf(fileID,'(%u, ',Afailure10(i,j));
        elseif j ~= length(Afailure10)
            fprintf(fileID,'%u, ',Afailure10(i,j));
        else
            fprintf(fileID,'%u), ',Afailure10(i,j));            
        end
    end
end
fclose(fileID);


Afailure25 = A_A500{1}{1};
Afailure25(failuresNR_A500{1}{1}{1}(1:25),:) = 0;
Afailure25(:,failuresNR_A500{1}{1}{1}(1:25)) = 0;

fileID = fopen('networkPlotSage25.txt','w');
for i = 1:length(Afailure25)
    for j = 1:length(Afailure25)
        if j == 1
            fprintf(fileID,'(%u, ',Afailure25(i,j));
        elseif j ~= length(Afailure25)
            fprintf(fileID,'%u, ',Afailure25(i,j));
        else
            fprintf(fileID,'%u), ',Afailure25(i,j));            
        end
    end
end
fclose(fileID);

Afailure50 = A_A500{1}{1};
Afailure50(failuresNR_A500{1}{1}{1}(1:50),:) = 0;
Afailure50(:,failuresNR_A500{1}{1}{1}(1:50)) = 0;

fileID = fopen('networkPlotSage50.txt','w');
for i = 1:length(Afailure50)
    for j = 1:length(Afailure50)
        if j == 1
            fprintf(fileID,'(%u, ',Afailure50(i,j));
        elseif j ~= length(Afailure50)
            fprintf(fileID,'%u, ',Afailure50(i,j));
        else
            fprintf(fileID,'%u), ',Afailure50(i,j));            
        end
    end
end
fclose(fileID);

Afailure75 = A_A500{1}{1};
Afailure75(failuresNR_A500{1}{1}{1}(1:75),:) = 0;
Afailure75(:,failuresNR_A500{1}{1}{1}(1:75)) = 0;

fileID = fopen('networkPlotSage75.txt','w');
for i = 1:length(Afailure75)
    for j = 1:length(Afailure75)
        if j == 1
            fprintf(fileID,'(%u, ',Afailure75(i,j));
        elseif j ~= length(Afailure75)
            fprintf(fileID,'%u, ',Afailure75(i,j));
        else
            fprintf(fileID,'%u), ',Afailure75(i,j));            
        end
    end
end
fclose(fileID);

