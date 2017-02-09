
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
networks <- read.table('networksData_NDi.txt',header=FALSE)
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
# Load holdout indices  

holdout.indices <- read.table('holdoutIndices.txt')
holdout.indices <- as.matrix(holdout.indices)

################################################################################

setwd('/media/files/jhu/infrastructure/networks2012/statistics/statsCode')

numHoldouts <- 100

source('holdoutsBetaregS1_NDi.r')
source('holdoutsBetaregS10_NDi.r')
source('holdoutsBetaregS25_NDi.r')
source('holdoutsBetaregS50_NDi.r')
source('holdoutsBetaregS75_NDi.r')

source('holdoutsNoModelS1_NDi.r')
source('holdoutsNoModelS10_NDi.r')
source('holdoutsNoModelS25_NDi.r')
source('holdoutsNoModelS50_NDi.r')
source('holdoutsNoModelS75_NDi.r')

holdouts.mae.NDi <- rbind(meanMAE.betareg.S1.NDi, meanMAE.betareg.S10.NDi, meanMAE.betareg.S25.NDi, meanMAE.betareg.S50.NDi, meanMAE.betareg.S75.NDi)
holdouts.rmse.NDi <- rbind(meanRMSE.betareg.S1.NDi, meanRMSE.betareg.S1.NDi, meanRMSE.betareg.S1.NDi, meanRMSE.betareg.S1.NDi)

holdouts.mae.noModel.NDi <- rbind(meanMAE.betareg.S1.noModel.NDi, meanMAE.betareg.S10.noModel.NDi, meanMAE.betareg.S25.noModel.NDi, meanMAE.betareg.S50.noModel.NDi, meanMAE.betareg.S75.noModel.NDi)
holdouts.rmse.noModel.NDi <- rbind(meanRMSE.betareg.S1.noModel.NDi, meanRMSE.betareg.S10.noModel.NDi, meanRMSE.betareg.S25.noModel.NDi, meanRMSE.betareg.S50.noModel.NDi, meanRMSE.betareg.S75.noModel.NDi)

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

write.table(holdouts.mae.NDi, 'holdoutsMAE_NDi.txt')
write.table(holdouts.rmse.NDi, 'holdoutsRMSE_NDi.txt')

write.table(holdouts.mae.noModel.NDi, 'holdoutsMAEnoModel_NDi.txt')
write.table(holdouts.rmse.noModel.NDi, 'holdoutsRMSEnoModel_NDi.txt')

ttest.MAE.S1 <- t.test(vecMAE.betareg.S1.NDi, vecMAE.betareg.S1.noModel.NDi, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S10 <- t.test(vecMAE.betareg.S10.NDi, vecMAE.betareg.S10.noModel.NDi, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S25 <- t.test(vecMAE.betareg.S25.NDi, vecMAE.betareg.S25.noModel.NDi, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S50 <- t.test(vecMAE.betareg.S50.NDi, vecMAE.betareg.S50.noModel.NDi, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S75 <- t.test(vecMAE.betareg.S75.NDi, vecMAE.betareg.S75.noModel.NDi, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)


