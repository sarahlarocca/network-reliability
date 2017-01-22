tic
cd betweenness/
load 'betweennessA500.mat'
cd ../networks/
load 'networksA500.mat'
cd ../
[failuresNBr_A500] = simFailNBr(A_A500,n_A500,Cb_A500,networkParamsA500,1,0)
clearvars -except failuresNBr_A500
runTime = toc
save 'failuresNBr_A500.mat'

cd betweenness/
load 'betweennessA700.mat'
cd ../networks/
load 'networksA700.mat'
cd ../
tic
[failuresNBr_A700] = simFailNBr(A_A700,n_A700,Cb_A700,networkParamsA700,1,0)
clearvars -except failuresNBr_A700
runTime = toc
save 'failuresNBr_A700.mat'

cd betweenness/
load 'betweennessA900.mat'
cd ../networks/
load 'networksA900.mat'
cd ../
tic
[failuresNBr_A900] = simFailNBr(A_A900,n_A900,Cb_A900,networkParamsA900,1,0)
clearvars -except failuresNBr_A900
runTime = toc
save 'failuresNBr_A900.mat'

cd betweenness/
load 'betweennessA950.mat'
cd ../networks/
load 'networksA950.mat'
cd ../
tic
[failuresNBr_A950] = simFailNBr(A_A950,n_A950,Cb_A950,networkParamsA950,1,0)
clearvars -except failuresNBr_A950
runTime = toc
save 'failuresNBr_A950.mat'

cd betweenness/
load 'betweennessA975.mat'
cd ../networks/
load 'networksA975.mat'
cd ../
tic
[failuresNBr_A975] = simFailNBr(A_A975,n_A975,Cb_A975,networkParamsA975,1,0)
clearvars -except failuresNBr_A975
runTime = toc
save 'failuresNBr_A975.mat'

cd betweenness/
load 'betweennessA1000.mat'
cd ../networks/
load 'networksA1000.mat'
cd ../
tic
[failuresNBr_A1000] = simFailNBr(A_A1000,n_A1000,Cb_A1000,networkParamsA1000,1,0)
clearvars -except failuresNBr_A1000
runTime = toc
save 'failuresNBr_A1000.mat'

tic
cd betweenness/
load 'betweennessB500.mat'
cd ../networks/
load 'networksB500.mat'
cd ../
[failuresNBr_B500] = simFailNBr(A_B500,n_B500,Cb_B500,networkParamsB500,1,0)
clearvars -except failuresNBr_B500
runTime = toc
save 'failuresNBr_B500.mat'

cd betweenness/
load 'betweennessB700.mat'
cd ../networks/
load 'networksB700.mat'
cd ../
tic
[failuresNBr_B700] = simFailNBr(A_B700,n_B700,Cb_B700,networkParamsB700,1,0)
clearvars -except failuresNBr_B700
runTime = toc
save 'failuresNBr_B700.mat'

cd betweenness/
load 'betweennessB1000.mat'
cd ../networks/
load 'networksB1000.mat'
cd ../
tic
[failuresNBr_B1000] = simFailNBr(A_B1000,n_B1000,Cb_B1000,networkParamsB1000,1,0)
clearvars -except failuresNBr_B1000
runTime = toc
save 'failuresNBr_B1000.mat'

tic
cd betweenness/
load 'betweennessC500.mat'
cd ../networks/
load 'networksC500.mat'
cd ../
[failuresNBr_C500] = simFailNBr(A_C500,n_C500,Cb_C500,networkParamsC500,1,0)
clearvars -except failuresNBr_C500
runTime = toc
save 'failuresNBr_C500.mat'

cd betweenness/
load 'betweennessC700.mat'
cd ../networks/
load 'networksC700.mat'
cd ../
tic
[failuresNBr_C700] = simFailNBr(A_C700,n_C700,Cb_C700,networkParamsC700,1,0)
clearvars -except failuresNBr_C700
runTime = toc
save 'failuresNBr_C700.mat'

cd betweenness/
load 'betweennessC900.mat'
cd ../networks/
load 'networksC900.mat'
cd ../
tic
[failuresNBr_C900] = simFailNBr(A_C900,n_C900,Cb_C900,networkParamsC900,1,0)
clearvars -except failuresNBr_C900
runTime = toc
save 'failuresNBr_C900.mat'

cd betweenness/
load 'betweennessC950.mat'
cd ../networks/
load 'networksC950.mat'
cd ../
tic
[failuresNBr_C950] = simFailNBr(A_C950,n_C950,Cb_C950,networkParamsC950,1,0)
clearvars -except failuresNBr_C950
runTime = toc
save 'failuresNBr_C950.mat'

cd betweenness/
load 'betweennessC975.mat'
cd ../networks/
load 'networksC975.mat'
cd ../
tic
[failuresNBr_C975] = simFailNBr(A_C975,n_C975,Cb_C975,networkParamsC975,1,0)
clearvars -except failuresNBr_C975
runTime = toc
save 'failuresNBr_C975.mat'

cd betweenness/
load 'betweennessC1000.mat'
cd ../networks/
load 'networksC1000.mat'
cd ../
tic
[failuresNBr_C1000] = simFailNBr(A_C1000,n_C1000,Cb_C1000,networkParamsC1000,1,0)
clearvars -except failuresNBr_C1000
runTime = toc
save 'failuresNBr_C1000.mat'

tic
cd betweenness/
load 'betweennessD500.mat'
cd ../networks/
load 'networksD500.mat'
cd ../
[failuresNBr_D500] = simFailNBr(A_D500,n_D500,Cb_D500,networkParamsD500,1,0)
clearvars -except failuresNBr_D500
runTime = toc
save 'failuresNBr_D500.mat'

cd betweenness/
load 'betweennessD700.mat'
cd ../networks/
load 'networksD700.mat'
cd ../
tic
[failuresNBr_D700] = simFailNBr(A_D700,n_D700,Cb_D700,networkParamsD700,1,0)
clearvars -except failuresNBr_D700
runTime = toc
save 'failuresNBr_D700.mat'

cd betweenness/
load 'betweennessD900.mat'
cd ../networks/
load 'networksD900.mat'
cd ../
tic
[failuresNBr_D900] = simFailNBr(A_D900,n_D900,Cb_D900,networkParamsD900,1,0)
clearvars -except failuresNBr_D900
runTime = toc
save 'failuresNBr_D900.mat'

cd betweenness/
load 'betweennessD950.mat'
cd ../networks/
load 'networksD950.mat'
cd ../
tic
[failuresNBr_D950] = simFailNBr(A_D950,n_D950,Cb_D950,networkParamsD950,1,0)
clearvars -except failuresNBr_D950
runTime = toc
save 'failuresNBr_D950.mat'

cd betweenness/
load 'betweennessD975.mat'
cd ../networks/
load 'networksD975.mat'
cd ../
tic
[failuresNBr_D975] = simFailNBr(A_D975,n_D975,Cb_D975,networkParamsD975,1,0)
clearvars -except failuresNBr_D975
runTime = toc
save 'failuresNBr_D975.mat'

cd betweenness/
load 'betweennessD1000.mat'
cd ../networks/
load 'networksD1000.mat'
cd ../
tic
[failuresNBr_D1000] = simFailNBr(A_D1000,n_D1000,Cb_D1000,networkParamsD1000,1,0)
clearvars -except failuresNBr_D1000
runTime = toc
save 'failuresNBr_D1000.mat'

tic
cd betweenness/
load 'betweennessE500.mat'
cd ../networks/
load 'networksE500.mat'
cd ../
[failuresNBr_E500] = simFailNBr(A_E500,n_E500,Cb_E500,networkParamsE500,1,0)
clearvars -except failuresNBr_E500
runTime = toc
save 'failuresNBr_E500.mat'

cd betweenness/
load 'betweennessE700.mat'
cd ../networks/
load 'networksE700.mat'
cd ../
tic
[failuresNBr_E700] = simFailNBr(A_E700,n_E700,Cb_E700,networkParamsE700,1,0)
clearvars -except failuresNBr_E700
runTime = toc
save 'failuresNBr_E700.mat'

cd betweenness/
load 'betweennessE900.mat'
cd ../networks/
load 'networksE900.mat'
cd ../
tic
[failuresNBr_E900] = simFailNBr(A_E900,n_E900,Cb_E900,networkParamsE900,1,0)
clearvars -except failuresNBr_E900
runTime = toc
save 'failuresNBr_E900.mat'

cd betweenness/
load 'betweennessE950.mat'
cd ../networks/
load 'networksE950.mat'
cd ../
tic
[failuresNBr_E950] = simFailNBr(A_E950,n_E950,Cb_E950,networkParamsE950,1,0)
clearvars -except failuresNBr_E950
runTime = toc
save 'failuresNBr_E950.mat'

cd betweenness/
load 'betweennessE975.mat'
cd ../networks/
load 'networksE975.mat'
cd ../
tic
[failuresNBr_E975] = simFailNBr(A_E975,n_E975,Cb_E975,networkParamsE975,1,0)
clearvars -except failuresNBr_E975
runTime = toc
save 'failuresNBr_E975.mat'

cd betweenness/
load 'betweennessE1000.mat'
cd ../networks/
load 'networksE1000.mat'
cd ../
tic
[failuresNBr_E1000] = simFailNBr(A_E1000,n_E1000,Cb_E1000,networkParamsE1000,1,0)
clearvars -except failuresNBr_E1000
runTime = toc
save 'failuresNBr_E1000.mat'
