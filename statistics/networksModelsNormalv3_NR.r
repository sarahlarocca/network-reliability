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
networks <- read.table('networksData_NR.txt',header=FALSE)
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

IEEE118 <- read.table('IEEE118data_NR.txt',header=FALSE)
names(IEEE118) <- c('paramIndex','networkIndex','n','kMean','kMin','kMax','kStd','CbMean','CbMin','CbMax','CbStd','Cmean','Cmin','Cmax','Cstd','lMean','lMin','lMax','lStd','S1','S10','S25','S50','S75','numDisconnect1','numDisconnect10','numDisconnect25','numDisconnect50','numDisconnect75','E1diffMean','E1diffMin','E1diffMax','E1diffStd','E10diffMean','E10diffMin','E10diffMax','E10diffStd','E25diffMean','E25diffMin','E25diffMax','E25diffStd','E50diffMean','E50diffMin','E50diffMax','E50diffStd','E75diffMean','E75diffMin','E75diffMax','E75diffStd')
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

IEEE300 <- read.table('IEEE300data_NR.txt',header=FALSE)
names(IEEE300) <- c('paramIndex','networkIndex','n','kMean','kMin','kMax','kStd','CbMean','CbMin','CbMax','CbStd','Cmean','Cmin','Cmax','Cstd','lMean','lMin','lMax','lStd','S1','S10','S25','S50','S75','numDisconnect1','numDisconnect10','numDisconnect25','numDisconnect50','numDisconnect75','E1diffMean','E1diffMin','E1diffMax','E1diffStd','E10diffMean','E10diffMin','E10diffMax','E10diffStd','E25diffMean','E25diffMin','E25diffMax','E25diffStd','E50diffMean','E50diffMin','E50diffMax','E50diffStd','E75diffMean','E75diffMin','E75diffMax','E75diffStd')
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

Ythan <- read.table('YthanData_NR.txt',header=FALSE)
names(Ythan) <- c('paramIndex','networkIndex','n','kMean','kMin','kMax','kStd','CbMean','CbMin','CbMax','CbStd','Cmean','Cmin','Cmax','Cstd','lMean','lMin','lMax','lStd','S1','S10','S25','S50','S75','numDisconnect1','numDisconnect10','numDisconnect25','numDisconnect50','numDisconnect75','E1diffMean','E1diffMin','E1diffMax','E1diffStd','E10diffMean','E10diffMin','E10diffMax','E10diffStd','E25diffMean','E25diffMin','E25diffMax','E25diffStd','E50diffMean','E50diffMin','E50diffMax','E50diffStd','E75diffMean','E75diffMin','E75diffMax','E75diffStd')
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

source('holdoutsBetaregS1full_NR.r')
source('holdoutsBetaregS10full_NR.r')
source('holdoutsBetaregS25full_NR.r')
source('holdoutsBetaregS50full_NR.r')
source('holdoutsBetaregS75full_NR.r')

model.betareg.S1.coef.NR <- model.betareg.S1.NR$coefficients$mean
model.betareg.S10.coef.NR <- model.betareg.S10.NR$coefficients$mean
model.betareg.S25.coef.NR <- model.betareg.S25.NR$coefficients$mean
model.betareg.S50.coef.NR <- model.betareg.S50.NR$coefficients$mean
model.betareg.S75.coef.NR <- model.betareg.S75.NR$coefficients$mean

model.betareg.S1.coef.p.NR <- model.betareg.S1.coef.p.NR[-length(model.betareg.S1.coef.p.NR)]
model.betareg.S10.coef.p.NR <- model.betareg.S10.coef.p.NR[-length(model.betareg.S10.coef.p.NR)]
model.betareg.S25.coef.p.NR <- model.betareg.S25.coef.p.NR[-length(model.betareg.S25.coef.p.NR)]
model.betareg.S50.coef.p.NR <- model.betareg.S50.coef.p.NR[-length(model.betareg.S50.coef.p.NR)]
model.betareg.S75.coef.p.NR <- model.betareg.S75.coef.p.NR[-length(model.betareg.S75.coef.p.NR)]

model.betareg.S1.full.NR <- cbind(model.betareg.S1.coef.NR, model.betareg.S1.coef.p.NR)
model.betareg.S10.full.NR <- cbind(model.betareg.S10.coef.NR, model.betareg.S10.coef.p.NR)
model.betareg.S25.full.NR <- cbind(model.betareg.S25.coef.NR, model.betareg.S25.coef.p.NR)
model.betareg.S50.full.NR <- cbind(model.betareg.S50.coef.NR, model.betareg.S50.coef.p.NR)
model.betareg.S75.full.NR <- cbind(model.betareg.S75.coef.NR, model.betareg.S75.coef.p.NR)

setwd('/home/slarocca/slr/stats1113/results')

write.table(model.betareg.S1.full.NR,'betaregS1full_NR.txt')
write.table(model.betareg.S10.full.NR,'betaregS10full_NR.txt')
write.table(model.betareg.S25.full.NR,'betaregS25full_NR.txt')
write.table(model.betareg.S50.full.NR,'betaregS50full_NR.txt')
write.table(model.betareg.S75.full.NR,'betaregS75full_NR.txt')

holdouts.mse.IEEE118.NR <- rbind(MSE.model.betareg.S1.IEEE118.NR, MSE.model.betareg.S10.IEEE118.NR, MSE.model.betareg.S25.IEEE118.NR, MSE.model.betareg.S50.IEEE118.NR, MSE.model.betareg.S75.IEEE118.NR)
holdouts.mse.IEEE300.NR <- rbind(MSE.model.betareg.S1.IEEE300.NR, MSE.model.betareg.S10.IEEE300.NR, MSE.model.betareg.S25.IEEE300.NR, MSE.model.betareg.S50.IEEE300.NR, MSE.model.betareg.S75.IEEE300.NR)
holdouts.mse.Ythan.NR <- rbind(MSE.model.betareg.S1.Ythan.NR, MSE.model.betareg.S10.Ythan.NR, MSE.model.betareg.S25.Ythan.NR, MSE.model.betareg.S50.Ythan.NR, MSE.model.betareg.S75.Ythan.NR)

holdouts.rmse.IEEE118.NR <- sqrt(holdouts.mse.IEEE118.NR)
holdouts.rmse.IEEE300.NR <- sqrt(holdouts.mse.IEEE300.NR)
holdouts.rmse.Ythan.NR <- sqrt(holdouts.mse.Ythan.NR)

holdouts.mae.IEEE118.NR <- rbind(MAE.model.betareg.S1.IEEE118.NR, MAE.model.betareg.S10.IEEE118.NR, MAE.model.betareg.S25.IEEE118.NR, MAE.model.betareg.S50.IEEE118.NR, MAE.model.betareg.S75.IEEE118.NR)
holdouts.mae.IEEE300.NR <- rbind(MAE.model.betareg.S1.IEEE300.NR, MAE.model.betareg.S10.IEEE300.NR, MAE.model.betareg.S25.IEEE300.NR, MAE.model.betareg.S50.IEEE300.NR, MAE.model.betareg.S75.IEEE300.NR)
holdouts.mae.Ythan.NR <- rbind(MAE.model.betareg.S1.Ythan.NR, MAE.model.betareg.S10.Ythan.NR, MAE.model.betareg.S25.Ythan.NR, MAE.model.betareg.S50.Ythan.NR, MAE.model.betareg.S75.Ythan.NR)

holdouts.mse.real.NR <- cbind(holdouts.mse.IEEE118.NR, holdouts.mse.IEEE300.NR, holdouts.mse.Ythan.NR)
holdouts.rmse.real.NR <- cbind(holdouts.rmse.IEEE118.NR, holdouts.rmse.IEEE300.NR, holdouts.rmse.Ythan.NR)
holdouts.mae.real.NR <- cbind(holdouts.mae.IEEE118.NR, holdouts.mae.IEEE300.NR, holdouts.mae.Ythan.NR)

write.table(holdouts.mse.real.NR, 'holdoutsRealMSE_NR.txt')
write.table(holdouts.rmse.real.NR, 'holdoutsRealRMSE_NR.txt')
write.table(holdouts.mae.real.NR, 'holdoutsRealMAE_NR.txt')

mean.S.NR <- cbind(mean(S1.rel),mean(S10.rel),mean(S25.rel),mean(S50.rel),mean(S75.rel))
write.table(mean.S.NR,'meanS_NR.txt')