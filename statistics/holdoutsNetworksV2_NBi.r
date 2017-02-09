
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

################################################################################
# Load holdout indices  

holdout.indices <- read.table('holdoutIndices.txt')
holdout.indices <- as.matrix(holdout.indices)

################################################################################

setwd('/media/files/jhu/infrastructure/networks2012/statistics/statsCode')

numHoldouts <- 100

source('holdoutsBetaregS1_NBi.r')
source('holdoutsBetaregS10_NBi.r')
source('holdoutsBetaregS25_NBi.r')
source('holdoutsBetaregS50_NBi.r')
source('holdoutsBetaregS75_NBi.r')

source('holdoutsNoModelS1_NBi.r')
source('holdoutsNoModelS10_NBi.r')
source('holdoutsNoModelS25_NBi.r')
source('holdoutsNoModelS50_NBi.r')
source('holdoutsNoModelS75_NBi.r')

holdouts.mae.NBi <- rbind(meanMAE.betareg.S1.NBi, meanMAE.betareg.S10.NBi, meanMAE.betareg.S25.NBi, meanMAE.betareg.S50.NBi, meanMAE.betareg.S75.NBi)
holdouts.rmse.NBi <- rbind(meanRMSE.betareg.S1.NBi, meanRMSE.betareg.S1.NBi, meanRMSE.betareg.S1.NBi, meanRMSE.betareg.S1.NBi)

holdouts.mae.noModel.NBi <- rbind(meanMAE.betareg.S1.noModel.NBi, meanMAE.betareg.S10.noModel.NBi, meanMAE.betareg.S25.noModel.NBi, meanMAE.betareg.S50.noModel.NBi, meanMAE.betareg.S75.noModel.NBi)
holdouts.rmse.noModel.NBi <- rbind(meanRMSE.betareg.S1.noModel.NBi, meanRMSE.betareg.S10.noModel.NBi, meanRMSE.betareg.S25.noModel.NBi, meanRMSE.betareg.S50.noModel.NBi, meanRMSE.betareg.S75.noModel.NBi)

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

write.table(holdouts.mae.NBi, 'holdoutsMAE_NBi.txt')
write.table(holdouts.rmse.NBi, 'holdoutsRMSE_NBi.txt')

write.table(holdouts.mae.noModel.NBi, 'holdoutsMAEnoModel_NBi.txt')
write.table(holdouts.rmse.noModel.NBi, 'holdoutsRMSEnoModel_NBi.txt')

ttest.MAE.S1 <- t.test(vecMAE.betareg.S1.NBi, vecMAE.betareg.S1.noModel.NBi, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S10 <- t.test(vecMAE.betareg.S10.NBi, vecMAE.betareg.S10.noModel.NBi, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S25 <- t.test(vecMAE.betareg.S25.NBi, vecMAE.betareg.S25.noModel.NBi, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S50 <- t.test(vecMAE.betareg.S50.NBi, vecMAE.betareg.S50.noModel.NBi, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S75 <- t.test(vecMAE.betareg.S75.NBi, vecMAE.betareg.S75.noModel.NBi, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)


