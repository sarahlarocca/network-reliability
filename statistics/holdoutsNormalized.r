################################################################################
# Set directory, load libaries

#setwd('C://Documents and Settings//slarocca//Desktop//randomGraphs2011//current//data')
setwd('/home/sguikema/slr')
library(mgcv)
library(MASS)
library(nlme)
library(betareg)
library(lmtest)

################################################################################
# Import data

networks <- read.table('networksData20110511.txt',header=FALSE)
names(networks) <- c('paramIndex','networkIndex','n','kMean','kMin','kMax','kStd','CbMean','CbMin','CbMax','CbStd','Cmean','Cmin','Cmax','Cstd','lMean','lMin','lMax','lStd','S1','S10','S25','S50','S75','numDisconnect1','numDisconnect10','numDisconnect25','numDisconnect50','numDisconnect75','E1diffMean','E1diffMin','E1diffMax','E1diffStd','E10diffMean','E10diffMin','E10diffMax','E10diffStd','E25diffMean','E25diffMin','E25diffMax','E25diffStd','E50diffMean','E50diffMin','E50diffMax','E50diffStd','E75diffMean','E75diffMin','E75diffMax','E75diffStd')
attach(networks)

################################################################################
# Normalized covariates

kMean.N <- (kMean - mean(kMean))/sd(kMean)
CbMean.N <- (CbMean - mean(CbMean))/sd(CbMean)
CbMax.N <- (CbMax - mean(CbMax))/sd(CbMax)
Cmean.N <- (Cmean - mean(Cmean))/sd(Cmean)
Cstd.N <- (Cstd - mean(Cstd))/sd(Cstd)
lMax.N <- (lMax - mean(lMax))/sd(lMax)
lStd.N <- (lStd - mean(lStd))/sd(lStd)

################################################################################
# Uncorrelated covariates

covariates <- cbind(n,kMean,CbMean,CbMax,Cmean,Cstd,lMax,lStd)
# covariates.rel <- cbind(kMean,CbMean,CbMax,Cmean,Cstd,lMax,lStd)
covariates.rel.N <- cbind(kMean.N,CbMean.N,CbMax.N,Cmean.N,Cstd.N,lMax.N,lStd.N)
covariates.spline <- cbind(kMean,CbMean,CbMax,Cmean,Cstd,lStd)
covariates.nospline <- cbind(lMax)


################################################################################
# Define response variables

S1.int = floor(S1)
S10.int = floor(S10)
S25.int = floor(S25)
S50.int = floor(S50)
S75.int = floor(S75)
 
S1.rel = S1/n
S10.rel = S10/n
S25.rel = S25/n
S50.rel = S50/n
S75.rel = S75/n

################################################################################
# Generate holdout indices  

#setwd('C://Documents and Settings//slarocca//Desktop//randomGraphs2011//current')
source('holdoutIndices.r')
holdout.indices <- holdoutIndices(nrow(networks),0.2,100)

################################################################################

numHoldouts <- 100

source('holdoutsGLMgausS1normal.r')
source('holdoutsGLMgausS10normal.r')
source('holdoutsGLMgausS25normal.r')
source('holdoutsGLMgausS50normal.r')
source('holdoutsGLMgausS75normal.r')

source('holdoutsGLMbetaS1normal.r')
source('holdoutsGLMbetaS10normal.r')
source('holdoutsGLMbetaS25normal.r')
source('holdoutsGLMbetaS50normal.r')
source('holdoutsGLMbetaS75normal.r')

#source('holdoutsGLMpoisS1.r')
#source('holdoutsGLMpoisS10.r')
#source('holdoutsGLMpoisS25.r')
#source('holdoutsGLMpoisS50.r')
#source('holdoutsGLMpoisS75.r')

vecRMSE.glm.beta.S10 <- sqrt(vecMSE.glm.beta.S10)
vecRMSE.glm.beta.S25 <- sqrt(vecMSE.glm.beta.S25)
vecRMSE.glm.beta.S50<- sqrt(vecMSE.glm.beta.S50)
vecRMSE.glm.beta.S75 <- sqrt(vecMSE.glm.beta.S75)

meanRMSE.glm.beta.S10 <- mean(vecRMSE.glm.beta.S10)
meanRMSE.glm.beta.S25 <- mean(vecRMSE.glm.beta.S25)
meanRMSE.glm.beta.S50<- mean(vecRMSE.glm.beta.S50)
meanRMSE.glm.beta.S75 <- mean(vecRMSE.glm.beta.S75)

holdouts.mse <- rbind(meanMSE.glm.gaus.S1, meanMSE.glm.gaus.S10, meanMSE.glm.gaus.S25, meanMSE.glm.gaus.S50, meanMSE.glm.gaus.S75, meanMSE.glm.beta.S1, meanMSE.glm.beta.S10, meanMSE.glm.beta.S25, meanMSE.glm.beta.S50, meanMSE.glm.beta.S75)#, meanMSE.glm.pois.S1, meanMSE.glm.pois.S10, meanMSE.glm.pois.S25, meanMSE.glm.pois.S50, meanMSE.glm.pois.S75)

holdouts.mae <- rbind(meanMAE.glm.gaus.S1, meanMAE.glm.gaus.S10, meanMAE.glm.gaus.S25, meanMAE.glm.gaus.S50, meanMAE.glm.gaus.S75, meanMAE.glm.beta.S1, meanMAE.glm.beta.S10, meanMAE.glm.beta.S25, meanMAE.glm.beta.S50, meanMAE.glm.beta.S75)#, meanMAE.glm.pois.S1, meanMAE.glm.pois.S10, meanMAE.glm.pois.S25, meanMAE.glm.pois.S50, meanMAE.glm.pois.S75)

holdouts.rmse <- rbind(meanRMSE.glm.beta.S10, meanRMSE.glm.beta.S25, meanRMSE.glm.beta.S50, meanRMSE.glm.beta.S75)

holdouts.rmse.nomodel <- rbind(meanRMSE.no.model.S10, meanRMSE.no.model.S25, meanRMSE.no.model.S50, meanRMSE.no.model.S75)
holdouts.mae.nomodel <- rbind(meanMAE.no.model.S10, meanMAE.no.model.S25, meanMAE.no.model.S50, meanMAE.no.model.S75)

write.table(holdouts.mse, 'holdoutsMSEnormal.txt')
write.table(holdouts.mae, 'holdoutsMAEnormal.txt')
write.table(holdouts.rmse, 'holdoutsRMSEnormal.txt')
write.table(holdouts.rmse.nomodel, 'holdoutsRMSEnormalNoModel.txt')
write.table(holdouts.mae.nomodel, 'holdoutsMAEnormalNoModel.txt')



ttest.MAE.S10 <- t.test(vecMAE.glm.beta.S10, vecMAE.no.model.S10, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S25 <- t.test(vecMAE.glm.beta.S25, vecMAE.no.model.S25, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S50 <- t.test(vecMAE.glm.beta.S50, vecMAE.no.model.S50, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)
ttest.MAE.S75 <- t.test(vecMAE.glm.beta.S75, vecMAE.no.model.S75, alternative=c("two.sided"), paired=TRUE, var.equal = FALSE)


