################################################################################
# Set directory, load libaries

library(mgcv)
library(MASS)
library(nlme)
library(betareg)
library(lmtest)

################################################################################
# Import data

setwd('/media/files/jhu/infrastructure/networks2012/statistics/data')
networks <- read.table('networksData_NDr_V2.txt',header=FALSE)
names(networks) <- c('paramIndex','networkIndex','n','kMean','kMin','kMax','kStd','CbMean','CbMin','CbMax','CbStd','Cmean','Cmin','Cmax','Cstd','lMean','lMin','lMax','lStd','S1','S10','S25','S50','S75','numDisconnect1','numDisconnect10','numDisconnect25','numDisconnect50','numDisconnect75')
attach(networks)

################################################################################
# Normalize covariates

kMean.norm <- (kMean - mean(kMean))/sd(kMean)
CbMean.norm <- (CbMean - mean(CbMean))/sd(CbMean)
CbMax.norm <- (CbMax - mean(CbMax))/sd(CbMax)
Cmean.norm <- (Cmean - mean(Cmean))/sd(Cmean)
Cstd.norm <- (Cstd - mean(Cstd))/sd(Cstd)
lMax.norm <- (lMax - mean(lMax))/sd(lMax)
lStd.norm <- (lStd - mean(lStd))/sd(lStd)

################################################################################
# Uncorrelated covariates

covariates.norm <- cbind(kMean.norm,CbMean.norm,CbMax.norm,Cmean.norm,Cstd.norm,lMax.norm,lStd.norm)

################################################################################
# Define response variables

S1.rel = S1/n
S10.rel = S10/n
S25.rel = S25/n
S50.rel = S50/n            
S75.rel = S75/n

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')
save(S1.rel,S10.rel,S25.rel,S50.rel,S75.rel, file = 'Srel.NDr.RData')

################################################################################
# Load test networks

setwd('/media/files/jhu/infrastructure/networks2012/statistics/data')

IEEE118 <- read.table('IEEE118data_NDr.txt',header=FALSE)
names(IEEE118) <- c('paramIndex','networkIndex','n','kMean','kMin','kMax','kStd','CbMean','CbMin','CbMax','CbStd','Cmean','Cmin','Cmax','Cstd','lMean','lMin','lMax','lStd','S1','S10','S25','S50','S75','numDisconnect1','numDisconnect10','numDisconnect25','numDisconnect50','numDisconnect75')
attach(IEEE118)

S1.rel.IEEE118 = S1/118
S10.rel.IEEE118 = S10/118
S25.rel.IEEE118 = S25/118
S50.rel.IEEE118 = S50/118
S75.rel.IEEE118 = S75/118

IEEE118$kMean <- (IEEE118$kMean - mean(networks$kMean))/sd(networks$kMean)
IEEE118$CbMean <- (IEEE118$CbMean - mean(networks$CbMean))/sd(networks$CbMean)
IEEE118$CbMax <- (IEEE118$CbMax - mean(networks$CbMax))/sd(networks$CbMax)
IEEE118$Cmean <- (IEEE118$Cmean - mean(networks$Cmean))/sd(networks$Cmean)
IEEE118$Cstd <- (IEEE118$Cstd - mean(networks$Cstd))/sd(networks$Cstd)
IEEE118$lMax <- (IEEE118$lMax - mean(networks$lMax))/sd(networks$lMax)
IEEE118$lStd <- (IEEE118$lStd - mean(networks$lStd))/sd(networks$lStd)

IEEE300 <- read.table('IEEE300data_NDr.txt',header=FALSE)
names(IEEE300) <- c('paramIndex','networkIndex','n','kMean','kMin','kMax','kStd','CbMean','CbMin','CbMax','CbStd','Cmean','Cmin','Cmax','Cstd','lMean','lMin','lMax','lStd','S1','S10','S25','S50','S75','numDisconnect1','numDisconnect10','numDisconnect25','numDisconnect50','numDisconnect75')
attach(IEEE300)

S1.rel.IEEE300 = S1/300
S10.rel.IEEE300 = S10/300
S25.rel.IEEE300 = S25/300
S50.rel.IEEE300 = S50/300
S75.rel.IEEE300 = S75/300

IEEE300$kMean <- (IEEE300$kMean - mean(networks$kMean))/sd(networks$kMean)
IEEE300$CbMean <- (IEEE300$CbMean - mean(networks$CbMean))/sd(networks$CbMean)
IEEE300$CbMax <- (IEEE300$CbMax - mean(networks$CbMax))/sd(networks$CbMax)
IEEE300$Cmean <- (IEEE300$Cmean - mean(networks$Cmean))/sd(networks$Cmean)
IEEE300$Cstd <- (IEEE300$Cstd - mean(networks$Cstd))/sd(networks$Cstd)
IEEE300$lMax <- (IEEE300$lMax - mean(networks$lMax))/sd(networks$lMax)
IEEE300$lStd <- (IEEE300$lStd - mean(networks$lStd))/sd(networks$lStd)

Ythan <- read.table('Ythan_NDr.txt',header=FALSE)
names(Ythan) <- c('paramIndex','networkIndex','n','kMean','kMin','kMax','kStd','CbMean','CbMin','CbMax','CbStd','Cmean','Cmin','Cmax','Cstd','lMean','lMin','lMax','lStd','S1','S10','S25','S50','S75','numDisconnect1','numDisconnect10','numDisconnect25','numDisconnect50','numDisconnect75')
attach(Ythan)

S1.rel.Ythan = S1/134
S10.rel.Ythan = S10/134
S25.rel.Ythan = S25/134
S50.rel.Ythan = S50/134
S75.rel.Ythan = S75/134

Ythan$kMean <- (Ythan$kMean - mean(networks$kMean))/sd(networks$kMean)
Ythan$CbMean <- (Ythan$CbMean - mean(networks$CbMean))/sd(networks$CbMean)
Ythan$CbMax <- (Ythan$CbMax - mean(networks$CbMax))/sd(networks$CbMax)
Ythan$Cmean <- (Ythan$Cmean - mean(networks$Cmean))/sd(networks$Cmean)
Ythan$Cstd <- (Ythan$Cstd - mean(networks$Cstd))/sd(networks$Cstd)
Ythan$lMax <- (Ythan$lMax - mean(networks$lMax))/sd(networks$lMax)
Ythan$lStd <- (Ythan$lStd - mean(networks$lStd))/sd(networks$lStd)

Eco <- read.table('EcoUC_NDr.txt',header=FALSE)
names(Eco) <- c('paramIndex','networkIndex','n','kMean','kMin','kMax','kStd','CbMean','CbMin','CbMax','CbStd','Cmean','Cmin','Cmax','Cstd','lMean','lMin','lMax','lStd','S1','S10','S25','S50','S75','numDisconnect1','numDisconnect10','numDisconnect25','numDisconnect50','numDisconnect75')
attach(Eco)

S1.rel.Eco = S1/183
S10.rel.Eco = S10/183
S25.rel.Eco = S25/183
S50.rel.Eco = S50/183
S75.rel.Eco = S75/183

Eco$kMean <- (Eco$kMean - mean(networks$kMean))/sd(networks$kMean)
Eco$CbMean <- (Eco$CbMean - mean(networks$CbMean))/sd(networks$CbMean)
Eco$CbMax <- (Eco$CbMax - mean(networks$CbMax))/sd(networks$CbMax)
Eco$Cmean <- (Eco$Cmean - mean(networks$Cmean))/sd(networks$Cmean)
Eco$Cstd <- (Eco$Cstd - mean(networks$Cstd))/sd(networks$Cstd)
Eco$lMax <- (Eco$lMax - mean(networks$lMax))/sd(networks$lMax)
Eco$lStd <- (Eco$lStd - mean(networks$lStd))/sd(networks$lStd)

Terr <- read.table('Terr_NDr.txt',header=FALSE)
names(Terr) <- c('paramIndex','networkIndex','n','kMean','kMin','kMax','kStd','CbMean','CbMin','CbMax','CbStd','Cmean','Cmin','Cmax','Cstd','lMean','lMin','lMax','lStd','S1','S10','S25','S50','S75','numDisconnect1','numDisconnect10','numDisconnect25','numDisconnect50','numDisconnect75')
attach(Terr)

S1.rel.Terr = S1/62
S10.rel.Terr = S10/62
S25.rel.Terr = S25/62
S50.rel.Terr = S50/62
S75.rel.Terr = S75/62

Terr$kMean <- (Terr$kMean - mean(networks$kMean))/sd(networks$kMean)
Terr$CbMean <- (Terr$CbMean - mean(networks$CbMean))/sd(networks$CbMean)
Terr$CbMax <- (Terr$CbMax - mean(networks$CbMax))/sd(networks$CbMax)
Terr$Cmean <- (Terr$Cmean - mean(networks$Cmean))/sd(networks$Cmean)
Terr$Cstd <- (Terr$Cstd - mean(networks$Cstd))/sd(networks$Cstd)
Terr$lMax <- (Terr$lMax - mean(networks$lMax))/sd(networks$lMax)
Terr$lStd <- (Terr$lStd - mean(networks$lStd))/sd(networks$lStd)

################################################################################
# Fit full models and do predictions for test networks

setwd('/media/files/jhu/infrastructure/networks2012/statistics/statsCode')

source('holdoutsBetaregS1fullV2_NDr.r')
source('holdoutsBetaregS10fullV2_NDr.r')
source('holdoutsBetaregS25fullV2_NDr.r')
source('holdoutsBetaregS50fullV2_NDr.r')
source('holdoutsBetaregS75fullV2_NDr.r')

model.betareg.S1.full.NDr <- coeftest(model.betareg.S1.NDr)[,1:4]
model.betareg.S10.full.NDr <- coeftest(model.betareg.S10.NDr)[,1:4]
model.betareg.S25.full.NDr <- coeftest(model.betareg.S25.NDr)[,1:4]
model.betareg.S50.full.NDr <- coeftest(model.betareg.S50.NDr)[,1:4]
model.betareg.S75.full.NDr <- coeftest(model.betareg.S75.NDr)[,1:4]

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

write.table(model.betareg.S1.full.NDr,'betaregS1full_NDr.txt')
write.table(model.betareg.S10.full.NDr,'betaregS10full_NDr.txt')
write.table(model.betareg.S25.full.NDr,'betaregS25full_NDr.txt')
write.table(model.betareg.S50.full.NDr,'betaregS50full_NDr.txt')
write.table(model.betareg.S75.full.NDr,'betaregS75full_NDr.txt')

holdouts.mse.IEEE118.NDr <- rbind(MSE.model.betareg.S1.IEEE118.NDr, MSE.model.betareg.S10.IEEE118.NDr, MSE.model.betareg.S25.IEEE118.NDr, MSE.model.betareg.S50.IEEE118.NDr, MSE.model.betareg.S75.IEEE118.NDr)
holdouts.mse.IEEE300.NDr <- rbind(MSE.model.betareg.S1.IEEE300.NDr, MSE.model.betareg.S10.IEEE300.NDr, MSE.model.betareg.S25.IEEE300.NDr, MSE.model.betareg.S50.IEEE300.NDr, MSE.model.betareg.S75.IEEE300.NDr)
holdouts.mse.Ythan.NDr <- rbind(MSE.model.betareg.S1.Ythan.NDr, MSE.model.betareg.S10.Ythan.NDr, MSE.model.betareg.S25.Ythan.NDr, MSE.model.betareg.S50.Ythan.NDr, MSE.model.betareg.S75.Ythan.NDr)
holdouts.mse.Terr.NDr <- rbind(MSE.model.betareg.S1.Terr.NDr, MSE.model.betareg.S10.Terr.NDr, MSE.model.betareg.S25.Terr.NDr, MSE.model.betareg.S50.Terr.NDr, MSE.model.betareg.S75.Terr.NDr)
holdouts.mse.Eco.NDr <- rbind(MSE.model.betareg.S1.Eco.NDr, MSE.model.betareg.S10.Eco.NDr, MSE.model.betareg.S25.Eco.NDr, MSE.model.betareg.S50.Eco.NDr, MSE.model.betareg.S75.Eco.NDr)

holdouts.rmse.IEEE118.NDr <- sqrt(holdouts.mse.IEEE118.NDr)
holdouts.rmse.IEEE300.NDr <- sqrt(holdouts.mse.IEEE300.NDr)
holdouts.rmse.Ythan.NDr <- sqrt(holdouts.mse.Ythan.NDr)
holdouts.rmse.Terr.NDr <- sqrt(holdouts.mse.Terr.NDr)
holdouts.rmse.Eco.NDr <- sqrt(holdouts.mse.Eco.NDr)

holdouts.mae.IEEE118.NDr <- rbind(MAE.model.betareg.S1.IEEE118.NDr, MAE.model.betareg.S10.IEEE118.NDr, MAE.model.betareg.S25.IEEE118.NDr, MAE.model.betareg.S50.IEEE118.NDr, MAE.model.betareg.S75.IEEE118.NDr)
holdouts.mae.IEEE300.NDr <- rbind(MAE.model.betareg.S1.IEEE300.NDr, MAE.model.betareg.S10.IEEE300.NDr, MAE.model.betareg.S25.IEEE300.NDr, MAE.model.betareg.S50.IEEE300.NDr, MAE.model.betareg.S75.IEEE300.NDr)
holdouts.mae.Ythan.NDr <- rbind(MAE.model.betareg.S1.Ythan.NDr, MAE.model.betareg.S10.Ythan.NDr, MAE.model.betareg.S25.Ythan.NDr, MAE.model.betareg.S50.Ythan.NDr, MAE.model.betareg.S75.Ythan.NDr)
holdouts.mae.Terr.NDr <- rbind(MAE.model.betareg.S1.Terr.NDr, MAE.model.betareg.S10.Terr.NDr, MAE.model.betareg.S25.Terr.NDr, MAE.model.betareg.S50.Terr.NDr, MAE.model.betareg.S75.Terr.NDr)
holdouts.mae.Eco.NDr <- rbind(MAE.model.betareg.S1.Eco.NDr, MAE.model.betareg.S10.Eco.NDr, MAE.model.betareg.S25.Eco.NDr, MAE.model.betareg.S50.Eco.NDr, MAE.model.betareg.S75.Eco.NDr)

holdouts.mse.real.NDr <- cbind(holdouts.mse.IEEE118.NDr, holdouts.mse.IEEE300.NDr, holdouts.mse.Ythan.NDr, holdouts.mse.Terr.NDr, holdouts.mse.Eco.NDr)
holdouts.rmse.real.NDr <- cbind(holdouts.rmse.IEEE118.NDr, holdouts.rmse.IEEE300.NDr, holdouts.rmse.Ythan.NDr, holdouts.rmse.Terr.NDr, holdouts.rmse.Eco.NDr)
holdouts.mae.real.NDr <- cbind(holdouts.mae.IEEE118.NDr, holdouts.mae.IEEE300.NDr, holdouts.mae.Ythan.NDr,holdouts.mae.Terr.NDr, holdouts.mae.Eco.NDr)

write.table(holdouts.mse.real.NDr, 'holdoutsRealMSE_NDr.txt')
write.table(holdouts.rmse.real.NDr, 'holdoutsRealRMSE_NDr.txt')
write.table(holdouts.mae.real.NDr, 'holdoutsRealMAE_NDr.txt')

mean.S.NDr <- cbind(mean(S1.rel),mean(S10.rel),mean(S25.rel),mean(S50.rel),mean(S75.rel))
write.table(mean.S.NDr,'meanS_NDr.txt')

real.S.rel.IEEE118.NDr <- rbind(S1.rel.IEEE118, S10.rel.IEEE118, S25.rel.IEEE118, S50.rel.IEEE118, S75.rel.IEEE118)
real.S.rel.IEEE300.NDr <- rbind(S1.rel.IEEE300, S10.rel.IEEE300, S25.rel.IEEE300, S50.rel.IEEE300, S75.rel.IEEE300)
real.S.rel.Ythan.NDr <- rbind(S1.rel.Ythan, S10.rel.Ythan, S25.rel.Ythan, S50.rel.Ythan, S75.rel.Ythan)
real.S.rel.Eco.NDr <- rbind(S1.rel.Eco, S10.rel.Eco, S25.rel.Eco, S50.rel.Eco, S75.rel.Eco)
real.S.rel.Terr.NDr <- rbind(S1.rel.Terr, S10.rel.Terr, S25.rel.Terr, S50.rel.Terr, S75.rel.Terr)

real.S.rel.NDr <- cbind(real.S.rel.IEEE118.NDr, real.S.rel.IEEE300.NDr, real.S.rel.Ythan.NDr, real.S.rel.Eco.NDr, real.S.rel.Terr.NDr)

prediction.S.rel.IEEE118.NDr <- rbind(prediction.S1.IEEE118.NDr, prediction.S10.IEEE118.NDr, prediction.S25.IEEE118.NDr, prediction.S50.IEEE118.NDr, prediction.S75.IEEE118.NDr)
prediction.S.rel.IEEE300.NDr <- rbind(prediction.S1.IEEE300.NDr, prediction.S10.IEEE300.NDr, prediction.S25.IEEE300.NDr, prediction.S50.IEEE300.NDr, prediction.S75.IEEE300.NDr)
prediction.S.rel.Ythan.NDr <- rbind(prediction.S1.Ythan.NDr, prediction.S10.Ythan.NDr, prediction.S25.Ythan.NDr, prediction.S50.Ythan.NDr, prediction.S75.Ythan.NDr)
prediction.S.rel.Eco.NDr <- rbind(prediction.S1.Eco.NDr, prediction.S10.Eco.NDr, prediction.S25.Eco.NDr, prediction.S50.Eco.NDr, prediction.S75.Eco.NDr)
prediction.S.rel.Terr.NDr <- rbind(prediction.S1.Terr.NDr, prediction.S10.Terr.NDr, prediction.S25.Terr.NDr, prediction.S50.Terr.NDr, prediction.S75.Terr.NDr)

prediction.S.rel.NDr <- cbind(prediction.S.rel.IEEE118.NDr, prediction.S.rel.IEEE300.NDr, prediction.S.rel.Ythan.NDr, prediction.S.rel.Eco.NDr, prediction.S.rel.Terr.NDr)

write.table(real.S.rel.NDr, file = 'realS_NDr.txt')
write.table(prediction.S.rel.NDr, file = 'predictS_NDr.txt')