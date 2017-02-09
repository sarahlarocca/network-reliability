
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

################################################################################
# Load holdout indices  

holdout.indices <- read.table('holdoutIndices.txt')
holdout.indices <- as.matrix(holdout.indices)

################################################################################

setwd('/media/files/jhu/infrastructure/networks2012/statistics/statsCode')

numHoldouts <- 100

source('holdoutsBetaregS1_NDr.r')
source('holdoutsBetaregS10_NDr.r')
source('holdoutsBetaregS25_NDr.r')
source('holdoutsBetaregS50_NDr.r')
source('holdoutsBetaregS75_NDr.r')

source('holdoutsNoModelS1_NDr.r')
source('holdoutsNoModelS10_NDr.r')
source('holdoutsNoModelS25_NDr.r')
source('holdoutsNoModelS50_NDr.r')
source('holdoutsNoModelS75_NDr.r')

holdouts.mae.NDr <- rbind(meanMAE.betareg.S1.NDr, meanMAE.betareg.S10.NDr, meanMAE.betareg.S25.NDr, meanMAE.betareg.S50.NDr, meanMAE.betareg.S75.NDr)
holdouts.rmse.NDr <- rbind(meanRMSE.betareg.S1.NDr, meanRMSE.betareg.S10.NDr, meanRMSE.betareg.S25.NDr, meanRMSE.betareg.S50.NDr, meanRMSE.betareg.S75.NDr)

holdouts.mae.noModel.NDr <- rbind(meanMAE.betareg.S1.noModel.NDr, meanMAE.betareg.S10.noModel.NDr, meanMAE.betareg.S25.noModel.NDr, meanMAE.betareg.S50.noModel.NDr, meanMAE.betareg.S75.noModel.NDr)
holdouts.rmse.noModel.NDr <- rbind(meanRMSE.betareg.S1.noModel.NDr, meanRMSE.betareg.S10.noModel.NDr, meanRMSE.betareg.S25.noModel.NDr, meanRMSE.betareg.S50.noModel.NDr, meanRMSE.betareg.S75.noModel.NDr)

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

write.table(holdouts.mae.NDr, 'holdoutsMAE_NDr.txt')
write.table(holdouts.rmse.NDr, 'holdoutsRMSE_NDr.txt')

write.table(holdouts.mae.noModel.NDr, 'holdoutsMAEnoModel_NDr.txt')
write.table(holdouts.rmse.noModel.NDr, 'holdoutsRMSEnoModel_NDr.txt')

ttest.MAE.S1 <- t.test(vecMAE.betareg.S1.NDr, vecMAE.betareg.S1.noModel.NDr, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S10 <- t.test(vecMAE.betareg.S10.NDr, vecMAE.betareg.S10.noModel.NDr, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S25 <- t.test(vecMAE.betareg.S25.NDr, vecMAE.betareg.S25.noModel.NDr, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S50 <- t.test(vecMAE.betareg.S50.NDr, vecMAE.betareg.S50.noModel.NDr, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S75 <- t.test(vecMAE.betareg.S75.NDr, vecMAE.betareg.S75.noModel.NDr, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)


