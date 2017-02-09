
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
# Load holdout indices  

holdout.indices <- read.table('holdoutIndices.txt')
holdout.indices <- as.matrix(holdout.indices)

################################################################################

setwd('/home/slarocca/slr/stats1113/statistics')

numHoldouts <- 100

source('holdoutsBetaregS1_NR.r')
source('holdoutsBetaregS10_NR.r')
source('holdoutsBetaregS25_NR.r')
source('holdoutsBetaregS50_NR.r')
source('holdoutsBetaregS75_NR.r')

source('holdoutsNoModelS1_NR.r')
source('holdoutsNoModelS10_NR.r')
source('holdoutsNoModelS25_NR.r')
source('holdoutsNoModelS50_NR.r')
source('holdoutsNoModelS75_NR.r')


holdouts.mae.NR <- rbind(meanMAE.betareg.S1.NR, meanMAE.betareg.S10.NR, meanMAE.betareg.S25.NR, meanMAE.betareg.S50.NR, meanMAE.betareg.S75.NR)
holdouts.rmse.NR <- rbind(meanRMSE.betareg.S1.NR, meanRMSE.betareg.S10.NR, meanRMSE.betareg.S25.NR, meanRMSE.betareg.S50.NR, meanRMSE.betareg.S75.NR)

holdouts.mae.noModel.NR <- rbind(meanMAE.betareg.S1.noModel.NR, meanMAE.betareg.S10.noModel.NR, meanMAE.betareg.S25.noModel.NR, meanMAE.betareg.S50.noModel.NR, meanMAE.betareg.S75.noModel.NR)
holdouts.rmse.noModel.NR <- rbind(meanRMSE.betareg.S1.noModel.NR, meanRMSE.betareg.S10.noModel.NR, meanRMSE.betareg.S25.noModel.NR, meanRMSE.betareg.S50.noModel.NR, meanRMSE.betareg.S75.noModel.NR)

setwd('/home/slarocca/slr/stats1113/results')

write.table(holdouts.mae.NR, 'holdoutsMAE_NR.txt')
write.table(holdouts.rmse.NR, 'holdoutsRMSE_NR.txt')

write.table(holdouts.mae.noModel.NR, 'holdoutsMAEnoModel_NR.txt')
write.table(holdouts.rmse.noModel.NR, 'holdoutsRMSEnoModel_NR.txt')

ttest.MAE.S1 <- t.test(vecMAE.betareg.S1.NR, vecMAE.betareg.S1.noModel.NR, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S10 <- t.test(vecMAE.betareg.S10.NR, vecMAE.betareg.S10.noModel.NR, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S25 <- t.test(vecMAE.betareg.S25.NR, vecMAE.betareg.S25.noModel.NR, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S50 <- t.test(vecMAE.betareg.S50.NR, vecMAE.betareg.S50.noModel.NR, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S75 <- t.test(vecMAE.betareg.S75.NR, vecMAE.betareg.S75.noModel.NR, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)


