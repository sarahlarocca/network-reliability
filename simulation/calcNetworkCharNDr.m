addpath('/media/files/jhu/infrastructure/networks2012/matlabCode/')
addpath('/media/files/jhu/infrastructure/networks2012/data/networks/')

load 'networksA500.mat'
[failuresNDr_A500] = simFailNDrV2(A_A500,n_A500,networkParamsA500,100,0)
clearvars -except failuresNDr_A500
save 'failuresNDr_A500.mat'

load 'networksA700.mat'
[failuresNDr_A700] = simFailNDrV2(A_A700,n_A700,networkParamsA700,100,0)
clearvars -except failuresNDr_A700
save 'failuresNDr_A700.mat'


load 'networksA900.mat'
[failuresNDr_A900] = simFailNDrV2(A_A900,n_A900,networkParamsA900,100,0)
clearvars -except failuresNDr_A900
save 'failuresNDr_A900.mat'

load 'networksA950.mat'
[failuresNDr_A950] = simFailNDrV2(A_A950,n_A950,networkParamsA950,100,0)
clearvars -except failuresNDr_A950
save 'failuresNDr_A950.mat'

load 'networksA975.mat'
[failuresNDr_A975] = simFailNDrV2(A_A975,n_A975,networkParamsA975,100,0)
clearvars -except failuresNDr_A975
save 'failuresNDr_A975.mat'

load 'networksA1000.mat'
[failuresNDr_A1000] = simFailNDrV2(A_A1000,n_A1000,networkParamsA1000,100,0)
clearvars -except failuresNDr_A1000
save 'failuresNDr_A1000.mat'

load 'networksB500.mat'
[failuresNDr_B500] = simFailNDrV2(A_B500,n_B500,networkParamsB500,100,0)
clearvars -except failuresNDr_B500
save 'failuresNDr_B500.mat'

load 'networksB700.mat'
[failuresNDr_B700] = simFailNDrV2(A_B700,n_B700,networkParamsB700,100,0)
clearvars -except failuresNDr_B700
save 'failuresNDr_B700.mat'

load 'networksB1000.mat'
[failuresNDr_B1000] = simFailNDrV2(A_B1000,n_B1000,networkParamsB1000,100,0)
clearvars -except failuresNDr_B1000
save 'failuresNDr_B1000.mat'

load 'networksC500.mat'
[failuresNDr_C500] = simFailNDrV2(A_C500,n_C500,networkParamsC500,100,0)
clearvars -except failuresNDr_C500
save 'failuresNDr_C500.mat'

load 'networksC700.mat'
[failuresNDr_C700] = simFailNDrV2(A_C700,n_C700,networkParamsC700,100,0)
clearvars -except failuresNDr_C700
save 'failuresNDr_C700.mat'

load 'networksC900.mat'
[failuresNDr_C900] = simFailNDrV2(A_C900,n_C900,networkParamsC900,100,0)
clearvars -except failuresNDr_C900
save 'failuresNDr_C900.mat'

load 'networksC950.mat'
[failuresNDr_C950] = simFailNDrV2(A_C950,n_C950,networkParamsC950,100,0)
clearvars -except failuresNDr_C950
save 'failuresNDr_C950.mat'

load 'networksC975.mat'
[failuresNDr_C975] = simFailNDrV2(A_C975,n_C975,networkParamsC975,100,0)
clearvars -except failuresNDr_C975
save 'failuresNDr_C975.mat'

load 'networksC1000.mat'
[failuresNDr_C1000] = simFailNDrV2(A_C1000,n_C1000,networkParamsC1000,100,0)
clearvars -except failuresNDr_C1000
save 'failuresNDr_C1000.mat'

load 'networksD500.mat'
[failuresNDr_D500] = simFailNDrV2(A_D500,n_D500,networkParamsD500,100,0)
clearvars -except failuresNDr_D500
save 'failuresNDr_D500.mat'

load 'networksD700.mat'
[failuresNDr_D700] = simFailNDrV2(A_D700,n_D700,networkParamsD700,100,0)
clearvars -except failuresNDr_D700
save 'failuresNDr_D700.mat'

load 'networksD900.mat'
[failuresNDr_D900] = simFailNDrV2(A_D900,n_D900,networkParamsD900,100,0)
clearvars -except failuresNDr_D900
save 'failuresNDr_D900.mat'

load 'networksD950.mat'
[failuresNDr_D950] = simFailNDrV2(A_D950,n_D950,networkParamsD950,100,0)
clearvars -except failuresNDr_D950
save 'failuresNDr_D950.mat'

load 'networksD975.mat'
[failuresNDr_D975] = simFailNDrV2(A_D975,n_D975,networkParamsD975,100,0)
clearvars -except failuresNDr_D975
save 'failuresNDr_D975.mat'

load 'networksD1000.mat'
[failuresNDr_D1000] = simFailNDrV2(A_D1000,n_D1000,networkParamsD1000,100,0)
clearvars -except failuresNDr_D1000
save 'failuresNDr_D1000.mat'

load 'networksE500.mat'
[failuresNDr_E500] = simFailNDrV2(A_E500,n_E500,networkParamsE500,100,0)
clearvars -except failuresNDr_E500
save 'failuresNDr_E500.mat'

load 'networksE700.mat'
[failuresNDr_E700] = simFailNDrV2(A_E700,n_E700,networkParamsE700,100,0)
clearvars -except failuresNDr_E700
save 'failuresNDr_E700.mat'

load 'networksE900.mat'
[failuresNDr_E900] = simFailNDrV2(A_E900,n_E900,networkParamsE900,100,0)
clearvars -except failuresNDr_E900
save 'failuresNDr_E900.mat'

load 'networksE950.mat'
[failuresNDr_E950] = simFailNDrV2(A_E950,n_E950,networkParamsE950,100,0)
clearvars -except failuresNDr_E950
save 'failuresNDr_E950.mat'

load 'networksE975.mat'
[failuresNDr_E975] = simFailNDrV2(A_E975,n_E975,networkParamsE975,100,0)
clearvars -except failuresNDr_E975
save 'failuresNDr_E975.mat'

load 'networksE1000.mat'
[failuresNDr_E1000] = simFailNDrV2(A_E1000,n_E1000,networkParamsE1000,100,0)
clearvars -except failuresNDr_E1000
save 'failuresNDr_E1000.mat'
