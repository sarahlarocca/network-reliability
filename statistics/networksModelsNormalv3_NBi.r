################################################################################
# Set directory, load libaries

library(mgcv)
library(MASS)
library(nlme)
library(betareg)
library(lmtest)

################################################################################
# Import data

setwd('/home/slarocca/slr/stats1113/data')
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

################################################################################
# Load test networks

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

Ythan <- read.table('YthanData_NBi.txt',header=FALSE)
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

################################################################################
# Fit full models and do predictions for test networks

setwd('/home/slarocca/slr/stats1113/statistics')

source('holdoutsBetaregS1full_NBi.r')
source('holdoutsBetaregS10full_NBi.r')
source('holdoutsBetaregS25full_NBi.r')
source('holdoutsBetaregS50full_NBi.r')
source('holdoutsBetaregS75full_NBi.r')

model.betareg.S1.coef.NBi <- model.betareg.S1.NBi$coefficients$mean
model.betareg.S10.coef.NBi <- model.betareg.S10.NBi$coefficients$mean
model.betareg.S25.coef.NBi <- model.betareg.S25.NBi$coefficients$mean
model.betareg.S50.coef.NBi <- model.betareg.S50.NBi$coefficients$mean
model.betareg.S75.coef.NBi <- model.betareg.S75.NBi$coefficients$mean

model.betareg.S1.coef.p.NBi <- model.betareg.S1.coef.p.NBi[-length(model.betareg.S1.coef.p.NBi)]
model.betareg.S10.coef.p.NBi <- model.betareg.S10.coef.p.NBi[-length(model.betareg.S10.coef.p.NBi)]
model.betareg.S25.coef.p.NBi <- model.betareg.S25.coef.p.NBi[-length(model.betareg.S25.coef.p.NBi)]
model.betareg.S50.coef.p.NBi <- model.betareg.S50.coef.p.NBi[-length(model.betareg.S50.coef.p.NBi)]
model.betareg.S75.coef.p.NBi <- model.betareg.S75.coef.p.NBi[-length(model.betareg.S75.coef.p.NBi)]

model.betareg.S1.full.NBi <- cbind(model.betareg.S1.coef.NBi, model.betareg.S1.coef.p.NBi)
model.betareg.S10.full.NBi <- cbind(model.betareg.S10.coef.NBi, model.betareg.S10.coef.p.NBi)
model.betareg.S25.full.NBi <- cbind(model.betareg.S25.coef.NBi, model.betareg.S25.coef.p.NBi)
model.betareg.S50.full.NBi <- cbind(model.betareg.S50.coef.NBi, model.betareg.S50.coef.p.NBi)
model.betareg.S75.full.NBi <- cbind(model.betareg.S75.coef.NBi, model.betareg.S75.coef.p.NBi)

setwd('/home/slarocca/slr/stats1113/results')

write.table(model.betareg.S1.full.NBi,'betaregS1full_NBi.txt')
write.table(model.betareg.S10.full.NBi,'betaregS10full_NBi.txt')
write.table(model.betareg.S25.full.NBi,'betaregS25full_NBi.txt')
write.table(model.betareg.S50.full.NBi,'betaregS50full_NBi.txt')
write.table(model.betareg.S75.full.NBi,'betaregS75full_NBi.txt')

holdouts.mse.IEEE118.NBi <- rbind(MSE.model.betareg.S1.IEEE118.NBi, MSE.model.betareg.S10.IEEE118.NBi, MSE.model.betareg.S25.IEEE118.NBi, MSE.model.betareg.S50.IEEE118.NBi, MSE.model.betareg.S75.IEEE118.NBi)
holdouts.mse.IEEE300.NBi <- rbind(MSE.model.betareg.S1.IEEE300.NBi, MSE.model.betareg.S10.IEEE300.NBi, MSE.model.betareg.S25.IEEE300.NBi, MSE.model.betareg.S50.IEEE300.NBi, MSE.model.betareg.S75.IEEE300.NBi)
holdouts.mse.Ythan.NBi <- rbind(MSE.model.betareg.S1.Ythan.NBi, MSE.model.betareg.S10.Ythan.NBi, MSE.model.betareg.S25.Ythan.NBi, MSE.model.betareg.S50.Ythan.NBi, MSE.model.betareg.S75.Ythan.NBi)

holdouts.rmse.IEEE118.NBi <- sqrt(holdouts.mse.IEEE118.NBi)
holdouts.rmse.IEEE300.NBi <- sqrt(holdouts.mse.IEEE300.NBi)
holdouts.rmse.Ythan.NBi <- sqrt(holdouts.mse.Ythan.NBi)

holdouts.mae.IEEE118.NBi <- rbind(MAE.model.betareg.S1.IEEE118.NBi, MAE.model.betareg.S10.IEEE118.NBi, MAE.model.betareg.S25.IEEE118.NBi, MAE.model.betareg.S50.IEEE118.NBi, MAE.model.betareg.S75.IEEE118.NBi)
holdouts.mae.IEEE300.NBi <- rbind(MAE.model.betareg.S1.IEEE300.NBi, MAE.model.betareg.S10.IEEE300.NBi, MAE.model.betareg.S25.IEEE300.NBi, MAE.model.betareg.S50.IEEE300.NBi, MAE.model.betareg.S75.IEEE300.NBi)
holdouts.mae.Ythan.NBi <- rbind(MAE.model.betareg.S1.Ythan.NBi, MAE.model.betareg.S10.Ythan.NBi, MAE.model.betareg.S25.Ythan.NBi, MAE.model.betareg.S50.Ythan.NBi, MAE.model.betareg.S75.Ythan.NBi)

holdouts.mse.real.NBi <- cbind(holdouts.mse.IEEE118.NBi, holdouts.mse.IEEE300.NBi, holdouts.mse.Ythan.NBi)
holdouts.rmse.real.NBi <- cbind(holdouts.rmse.IEEE118.NBi, holdouts.rmse.IEEE300.NBi, holdouts.rmse.Ythan.NBi)
holdouts.mae.real.NBi <- cbind(holdouts.mae.IEEE118.NBi, holdouts.mae.IEEE300.NBi, holdouts.mae.Ythan.NBi)

write.table(holdouts.mse.real.NBi, 'holdoutsRealMSE_NBi.txt')
write.table(holdouts.rmse.real.NBi, 'holdoutsRealRMSE_NBi.txt')
write.table(holdouts.mae.real.NBi, 'holdoutsRealMAE_NBi.txt')

mean.S.NBi <- cbind(mean(S1.rel),mean(S10.rel),mean(S25.rel),mean(S50.rel),mean(S75.rel))
write.table(mean.S.NBi,'meanS_NBi.txt')