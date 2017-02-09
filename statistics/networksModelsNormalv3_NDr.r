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
networks <- read.table('networksData_NDr.txt',header=FALSE)
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

Ythan <- read.table('YthanData_NDr.txt',header=FALSE)
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

source('holdoutsBetaregS1full_NDr.r')
source('holdoutsBetaregS10full_NDr.r')
source('holdoutsBetaregS25full_NDr.r')
source('holdoutsBetaregS50full_NDr.r')
source('holdoutsBetaregS75full_NDr.r')

model.betareg.S1.coef.NDr <- model.betareg.S1.NDr$coefficients$mean
model.betareg.S10.coef.NDr <- model.betareg.S10.NDr$coefficients$mean
model.betareg.S25.coef.NDr <- model.betareg.S25.NDr$coefficients$mean
model.betareg.S50.coef.NDr <- model.betareg.S50.NDr$coefficients$mean
model.betareg.S75.coef.NDr <- model.betareg.S75.NDr$coefficients$mean

model.betareg.S1.coef.p.NDr <- model.betareg.S1.coef.p.NDr[-length(model.betareg.S1.coef.p.NDr)]
model.betareg.S10.coef.p.NDr <- model.betareg.S10.coef.p.NDr[-length(model.betareg.S10.coef.p.NDr)]
model.betareg.S25.coef.p.NDr <- model.betareg.S25.coef.p.NDr[-length(model.betareg.S25.coef.p.NDr)]
model.betareg.S50.coef.p.NDr <- model.betareg.S50.coef.p.NDr[-length(model.betareg.S50.coef.p.NDr)]
model.betareg.S75.coef.p.NDr <- model.betareg.S75.coef.p.NDr[-length(model.betareg.S75.coef.p.NDr)]

model.betareg.S1.full.NDr <- cbind(model.betareg.S1.coef.NDr, model.betareg.S1.coef.p.NDr)
model.betareg.S10.full.NDr <- cbind(model.betareg.S10.coef.NDr, model.betareg.S10.coef.p.NDr)
model.betareg.S25.full.NDr <- cbind(model.betareg.S25.coef.NDr, model.betareg.S25.coef.p.NDr)
model.betareg.S50.full.NDr <- cbind(model.betareg.S50.coef.NDr, model.betareg.S50.coef.p.NDr)
model.betareg.S75.full.NDr <- cbind(model.betareg.S75.coef.NDr, model.betareg.S75.coef.p.NDr)

setwd('/home/slarocca/slr/stats1113/results')

write.table(model.betareg.S1.full.NDr,'betaregS1full_NDr.txt')
write.table(model.betareg.S10.full.NDr,'betaregS10full_NDr.txt')
write.table(model.betareg.S25.full.NDr,'betaregS25full_NDr.txt')
write.table(model.betareg.S50.full.NDr,'betaregS50full_NDr.txt')
write.table(model.betareg.S75.full.NDr,'betaregS75full_NDr.txt')

holdouts.mse.IEEE118.NDr <- rbind(MSE.model.betareg.S1.IEEE118.NDr, MSE.model.betareg.S10.IEEE118.NDr, MSE.model.betareg.S25.IEEE118.NDr, MSE.model.betareg.S50.IEEE118.NDr, MSE.model.betareg.S75.IEEE118.NDr)
holdouts.mse.IEEE300.NDr <- rbind(MSE.model.betareg.S1.IEEE300.NDr, MSE.model.betareg.S10.IEEE300.NDr, MSE.model.betareg.S25.IEEE300.NDr, MSE.model.betareg.S50.IEEE300.NDr, MSE.model.betareg.S75.IEEE300.NDr)
holdouts.mse.Ythan.NDr <- rbind(MSE.model.betareg.S1.Ythan.NDr, MSE.model.betareg.S10.Ythan.NDr, MSE.model.betareg.S25.Ythan.NDr, MSE.model.betareg.S50.Ythan.NDr, MSE.model.betareg.S75.Ythan.NDr)

holdouts.rmse.IEEE118.NDr <- sqrt(holdouts.mse.IEEE118.NDr)
holdouts.rmse.IEEE300.NDr <- sqrt(holdouts.mse.IEEE300.NDr)
holdouts.rmse.Ythan.NDr <- sqrt(holdouts.mse.Ythan.NDr)

holdouts.mae.IEEE118.NDr <- rbind(MAE.model.betareg.S1.IEEE118.NDr, MAE.model.betareg.S10.IEEE118.NDr, MAE.model.betareg.S25.IEEE118.NDr, MAE.model.betareg.S50.IEEE118.NDr, MAE.model.betareg.S75.IEEE118.NDr)
holdouts.mae.IEEE300.NDr <- rbind(MAE.model.betareg.S1.IEEE300.NDr, MAE.model.betareg.S10.IEEE300.NDr, MAE.model.betareg.S25.IEEE300.NDr, MAE.model.betareg.S50.IEEE300.NDr, MAE.model.betareg.S75.IEEE300.NDr)
holdouts.mae.Ythan.NDr <- rbind(MAE.model.betareg.S1.Ythan.NDr, MAE.model.betareg.S10.Ythan.NDr, MAE.model.betareg.S25.Ythan.NDr, MAE.model.betareg.S50.Ythan.NDr, MAE.model.betareg.S75.Ythan.NDr)

holdouts.mse.real.NDr <- cbind(holdouts.mse.IEEE118.NDr, holdouts.mse.IEEE300.NDr, holdouts.mse.Ythan.NDr)
holdouts.rmse.real.NDr <- cbind(holdouts.rmse.IEEE118.NDr, holdouts.rmse.IEEE300.NDr, holdouts.rmse.Ythan.NDr)
holdouts.mae.real.NDr <- cbind(holdouts.mae.IEEE118.NDr, holdouts.mae.IEEE300.NDr, holdouts.mae.Ythan.NDr)

write.table(holdouts.mse.real.NDr, 'holdoutsRealMSE_NDr.txt')
write.table(holdouts.rmse.real.NDr, 'holdoutsRealRMSE_NDr.txt')
write.table(holdouts.mae.real.NDr, 'holdoutsRealMAE_NDr.txt')

mean.S.NDr <- cbind(mean(S1.rel),mean(S10.rel),mean(S25.rel),mean(S50.rel),mean(S75.rel))
write.table(mean.S.NDr,'meanS_NDr.txt')