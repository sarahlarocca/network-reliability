
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
networks <- read.table('networksData_NBr.txt',header=FALSE)
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

setwd('/home/slarocca/slr/stats1113/statistics')

numHoldouts <- 100

source('holdoutsBetaregS1_NBr.r')
source('holdoutsBetaregS10_NBr.r')
source('holdoutsBetaregS25_NBr.r')
source('holdoutsBetaregS50_NBr.r')
source('holdoutsBetaregS75_NBr.r')

source('holdoutsNoModelS1_NBr.r')
source('holdoutsNoModelS10_NBr.r')
source('holdoutsNoModelS25_NBr.r')
source('holdoutsNoModelS50_NBr.r')
source('holdoutsNoModelS75_NBr.r')

holdouts.mae.NBr <- rbind(meanMAE.betareg.S1.NBr, meanMAE.betareg.S10.NBr, meanMAE.betareg.S25.NBr, meanMAE.betareg.S50.NBr, meanMAE.betareg.S75.NBr)
holdouts.rmse.NBr <- rbind(meanRMSE.betareg.S1.NBr, meanRMSE.betareg.S1.NBr, meanRMSE.betareg.S1.NBr, meanRMSE.betareg.S1.NBr)

holdouts.mae.noModel.NBr <- rbind(meanMAE.betareg.S1.noModel.NBr, meanMAE.betareg.S10.noModel.NBr, meanMAE.betareg.S25.noModel.NBr, meanMAE.betareg.S50.noModel.NBr, meanMAE.betareg.S75.noModel.NBr)
holdouts.rmse.noModel.NBr <- rbind(meanRMSE.betareg.S1.noModel.NBr, meanRMSE.betareg.S10.noModel.NBr, meanRMSE.betareg.S25.noModel.NBr, meanRMSE.betareg.S50.noModel.NBr, meanRMSE.betareg.S75.noModel.NBr)

setwd('/home/slarocca/slr/stats1113/results')

write.table(holdouts.mae.NBr, 'holdoutsMAE_NBr.txt')
write.table(holdouts.rmse.NBr, 'holdoutsRMSE_NBr.txt')

write.table(holdouts.mae.noModel.NBr, 'holdoutsMAEnoModel_NBr.txt')
write.table(holdouts.rmse.noModel.NBr, 'holdoutsRMSEnoModel_NBr.txt')

ttest.MAE.S1 <- t.test(vecMAE.betareg.S1.NBr, vecMAE.betareg.S1.noModel.NBr, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S10 <- t.test(vecMAE.betareg.S10.NBr, vecMAE.betareg.S10.noModel.NBr, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S25 <- t.test(vecMAE.betareg.S25.NBr, vecMAE.betareg.S25.noModel.NBr, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S50 <- t.test(vecMAE.betareg.S50.NBr, vecMAE.betareg.S50.noModel.NBr, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S75 <- t.test(vecMAE.betareg.S75.NBr, vecMAE.betareg.S75.noModel.NBr, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)


