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
networks <- read.table('networksData_NBi.txt',header=FALSE)
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
save(S1.rel,S10.rel,S25.rel,S50.rel,S75.rel, file = 'Srel.NBi.RData')

################################################################################
# Load test networks

setwd('/media/files/jhu/infrastructure/networks2012/statistics/data')

IEEE118 <- read.table('IEEE118data_NBi.txt',header=FALSE)
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

IEEE300 <- read.table('IEEE300data_NBi.txt',header=FALSE)
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

Ythan <- read.table('Ythan_NBi.txt',header=FALSE)
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

Eco <- read.table('EcoUC_NBi.txt',header=FALSE)
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

Terr <- read.table('Terr_NBi.txt',header=FALSE)
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

source('holdoutsBetaregS1fullV2_NBi.r')
source('holdoutsBetaregS10fullV2_NBi.r')
source('holdoutsBetaregS25fullV2_NBi.r')
source('holdoutsBetaregS50fullV2_NBi.r')
source('holdoutsBetaregS75fullV2_NBi.r')

model.betareg.S1.full.NBi <- coeftest(model.betareg.S1.NBi)[,1:4]
model.betareg.S10.full.NBi <- coeftest(model.betareg.S10.NBi)[,1:4]
model.betareg.S25.full.NBi <- coeftest(model.betareg.S25.NBi)[,1:4]
model.betareg.S50.full.NBi <- coeftest(model.betareg.S50.NBi)[,1:4]
model.betareg.S75.full.NBi <- coeftest(model.betareg.S75.NBi)[,1:4]

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

write.table(model.betareg.S1.full.NBi,'betaregS1full_NBi.txt')
write.table(model.betareg.S10.full.NBi,'betaregS10full_NBi.txt')
write.table(model.betareg.S25.full.NBi,'betaregS25full_NBi.txt')
write.table(model.betareg.S50.full.NBi,'betaregS50full_NBi.txt')
write.table(model.betareg.S75.full.NBi,'betaregS75full_NBi.txt')

holdouts.mse.IEEE118.NBi <- rbind(MSE.model.betareg.S1.IEEE118.NBi, MSE.model.betareg.S10.IEEE118.NBi, MSE.model.betareg.S25.IEEE118.NBi, MSE.model.betareg.S50.IEEE118.NBi, MSE.model.betareg.S75.IEEE118.NBi)
holdouts.mse.IEEE300.NBi <- rbind(MSE.model.betareg.S1.IEEE300.NBi, MSE.model.betareg.S10.IEEE300.NBi, MSE.model.betareg.S25.IEEE300.NBi, MSE.model.betareg.S50.IEEE300.NBi, MSE.model.betareg.S75.IEEE300.NBi)
holdouts.mse.Ythan.NBi <- rbind(MSE.model.betareg.S1.Ythan.NBi, MSE.model.betareg.S10.Ythan.NBi, MSE.model.betareg.S25.Ythan.NBi, MSE.model.betareg.S50.Ythan.NBi, MSE.model.betareg.S75.Ythan.NBi)
holdouts.mse.Terr.NBi <- rbind(MSE.model.betareg.S1.Terr.NBi, MSE.model.betareg.S10.Terr.NBi, MSE.model.betareg.S25.Terr.NBi, MSE.model.betareg.S50.Terr.NBi, MSE.model.betareg.S75.Terr.NBi)
holdouts.mse.Eco.NBi <- rbind(MSE.model.betareg.S1.Eco.NBi, MSE.model.betareg.S10.Eco.NBi, MSE.model.betareg.S25.Eco.NBi, MSE.model.betareg.S50.Eco.NBi, MSE.model.betareg.S75.Eco.NBi)

holdouts.rmse.IEEE118.NBi <- sqrt(holdouts.mse.IEEE118.NBi)
holdouts.rmse.IEEE300.NBi <- sqrt(holdouts.mse.IEEE300.NBi)
holdouts.rmse.Ythan.NBi <- sqrt(holdouts.mse.Ythan.NBi)
holdouts.rmse.Terr.NBi <- sqrt(holdouts.mse.Terr.NBi)
holdouts.rmse.Eco.NBi <- sqrt(holdouts.mse.Eco.NBi)

holdouts.mae.IEEE118.NBi <- rbind(MAE.model.betareg.S1.IEEE118.NBi, MAE.model.betareg.S10.IEEE118.NBi, MAE.model.betareg.S25.IEEE118.NBi, MAE.model.betareg.S50.IEEE118.NBi, MAE.model.betareg.S75.IEEE118.NBi)
holdouts.mae.IEEE300.NBi <- rbind(MAE.model.betareg.S1.IEEE300.NBi, MAE.model.betareg.S10.IEEE300.NBi, MAE.model.betareg.S25.IEEE300.NBi, MAE.model.betareg.S50.IEEE300.NBi, MAE.model.betareg.S75.IEEE300.NBi)
holdouts.mae.Ythan.NBi <- rbind(MAE.model.betareg.S1.Ythan.NBi, MAE.model.betareg.S10.Ythan.NBi, MAE.model.betareg.S25.Ythan.NBi, MAE.model.betareg.S50.Ythan.NBi, MAE.model.betareg.S75.Ythan.NBi)
holdouts.mae.Terr.NBi <- rbind(MAE.model.betareg.S1.Terr.NBi, MAE.model.betareg.S10.Terr.NBi, MAE.model.betareg.S25.Terr.NBi, MAE.model.betareg.S50.Terr.NBi, MAE.model.betareg.S75.Terr.NBi)
holdouts.mae.Eco.NBi <- rbind(MAE.model.betareg.S1.Eco.NBi, MAE.model.betareg.S10.Eco.NBi, MAE.model.betareg.S25.Eco.NBi, MAE.model.betareg.S50.Eco.NBi, MAE.model.betareg.S75.Eco.NBi)

holdouts.mse.real.NBi <- cbind(holdouts.mse.IEEE118.NBi, holdouts.mse.IEEE300.NBi, holdouts.mse.Ythan.NBi, holdouts.mse.Terr.NBi, holdouts.mse.Eco.NBi)
holdouts.rmse.real.NBi <- cbind(holdouts.rmse.IEEE118.NBi, holdouts.rmse.IEEE300.NBi, holdouts.rmse.Ythan.NBi, holdouts.rmse.Terr.NBi, holdouts.rmse.Eco.NBi)
holdouts.mae.real.NBi <- cbind(holdouts.mae.IEEE118.NBi, holdouts.mae.IEEE300.NBi, holdouts.mae.Ythan.NBi,holdouts.mae.Terr.NBi, holdouts.mae.Eco.NBi)

write.table(holdouts.mse.real.NBi, 'holdoutsRealMSE_NBi.txt')
write.table(holdouts.rmse.real.NBi, 'holdoutsRealRMSE_NBi.txt')
write.table(holdouts.mae.real.NBi, 'holdoutsRealMAE_NBi.txt')

mean.S.NBi <- cbind(mean(S1.rel),mean(S10.rel),mean(S25.rel),mean(S50.rel),mean(S75.rel))
write.table(mean.S.NBi,'meanS_NBi.txt')

real.S.rel.IEEE118.NBi <- rbind(S1.rel.IEEE118, S10.rel.IEEE118, S25.rel.IEEE118, S50.rel.IEEE118, S75.rel.IEEE118)
real.S.rel.IEEE300.NBi <- rbind(S1.rel.IEEE300, S10.rel.IEEE300, S25.rel.IEEE300, S50.rel.IEEE300, S75.rel.IEEE300)
real.S.rel.Ythan.NBi <- rbind(S1.rel.Ythan, S10.rel.Ythan, S25.rel.Ythan, S50.rel.Ythan, S75.rel.Ythan)
real.S.rel.Eco.NBi <- rbind(S1.rel.Eco, S10.rel.Eco, S25.rel.Eco, S50.rel.Eco, S75.rel.Eco)
real.S.rel.Terr.NBi <- rbind(S1.rel.Terr, S10.rel.Terr, S25.rel.Terr, S50.rel.Terr, S75.rel.Terr)

real.S.rel.NBi <- cbind(real.S.rel.IEEE118.NBi, real.S.rel.IEEE300.NBi, real.S.rel.Ythan.NBi, real.S.rel.Eco.NBi, real.S.rel.Terr.NBi)

prediction.S.rel.IEEE118.NBi <- rbind(prediction.S1.IEEE118.NBi, prediction.S10.IEEE118.NBi, prediction.S25.IEEE118.NBi, prediction.S50.IEEE118.NBi, prediction.S75.IEEE118.NBi)
prediction.S.rel.IEEE300.NBi <- rbind(prediction.S1.IEEE300.NBi, prediction.S10.IEEE300.NBi, prediction.S25.IEEE300.NBi, prediction.S50.IEEE300.NBi, prediction.S75.IEEE300.NBi)
prediction.S.rel.Ythan.NBi <- rbind(prediction.S1.Ythan.NBi, prediction.S10.Ythan.NBi, prediction.S25.Ythan.NBi, prediction.S50.Ythan.NBi, prediction.S75.Ythan.NBi)
prediction.S.rel.Eco.NBi <- rbind(prediction.S1.Eco.NBi, prediction.S10.Eco.NBi, prediction.S25.Eco.NBi, prediction.S50.Eco.NBi, prediction.S75.Eco.NBi)
prediction.S.rel.Terr.NBi <- rbind(prediction.S1.Terr.NBi, prediction.S10.Terr.NBi, prediction.S25.Terr.NBi, prediction.S50.Terr.NBi, prediction.S75.Terr.NBi)

prediction.S.rel.NBi <- cbind(prediction.S.rel.IEEE118.NBi, prediction.S.rel.IEEE300.NBi, prediction.S.rel.Ythan.NBi, prediction.S.rel.Eco.NBi, prediction.S.rel.Terr.NBi)

write.table(real.S.rel.NBi, file = 'realS_NBi.txt')
write.table(prediction.S.rel.NBi, file = 'predictS_NBi.txt')