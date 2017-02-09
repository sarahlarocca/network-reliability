################################################################################
# Set directory, load libaries

library(mgcv)
library(MASS)
library(nlme)
library(betareg)
library(lmtest)
library(graphics)

################################################################################
# Import data

setwd('/media/Files/JHU/Infrastructure/randomgraphs2011/current/statistics/stats1113/data')
networks <- read.table('networksData_NR.txt',header=FALSE)
names(networks) <- c('paramIndex','networkIndex','n','kMean','kMin','kMax','kStd','CbMean','CbMin','CbMax','CbStd','Cmean','Cmin','Cmax','Cstd','lMean','lMin','lMax','lStd','S1','S10','S25','S50','S75','numDisconnect1','numDisconnect10','numDisconnect25','numDisconnect50','numDisconnect75')
attach(networks)

################################################################################
# Create final models table

setwd('/media/Files/JHU/Infrastructure/randomgraphs2011/current/statistics/stats1113/results')

betaregS10full_NR <- read.table('betaregS10full_NR.txt',header=TRUE)
betaregS25full_NR <- read.table('betaregS25full_NR.txt',header=TRUE)
betaregS50full_NR <- read.table('betaregS50full_NR.txt',header=TRUE)
betaregS75full_NR <- read.table('betaregS75full_NR.txt',header=TRUE)

betaregS10full_NR[,1] <- signif(betaregS10full_NR[,1],digits=2)
betaregS10full_NR[,2] <- signif(betaregS10full_NR[,2],digits=2)
betaregS25full_NR[,1] <- signif(betaregS25full_NR[,1],digits=2)
betaregS25full_NR[,2] <- signif(betaregS25full_NR[,2],digits=2)
betaregS50full_NR[,1] <- signif(betaregS50full_NR[,1],digits=2)
betaregS50full_NR[,2] <- signif(betaregS50full_NR[,2],digits=2)
betaregS75full_NR[,1] <- signif(betaregS75full_NR[,1],digits=2)
betaregS75full_NR[,2] <- signif(betaregS75full_NR[,2],digits=2)

tmp <- c(0,0)

betaregS10full_NR <- rbind(betaregS10full_NR[1:5,],tmp,betaregS10full_NR[6,])
betaregS25full_NR <- rbind(betaregS25full_NR[1:5,],tmp,betaregS25full_NR[6,])
betaregS50full_NR <- rbind(betaregS50full_NR[1:5,],tmp,betaregS50full_NR[6,])


betaregALLfull_NR <- cbind(betaregS10full_NR,betaregS25full_NR,betaregS50full_NR,betaregS75full_NR)

write.table(betaregALLfull_NR, file='betaregALLfull_NR.txt')


################################################################################
# Create MAE table

holdoutsMAE_NR <- read.table('holdoutsMAE_NR.txt',header=TRUE)
holdoutsMAEnoModel_NR <- read.table('holdoutsMAEnoModel_NR.txt',header=TRUE)

holdoutsRMSE_NR <- read.table('holdoutsRMSE_NR.txt',header=TRUE)
holdoutsRMSEnoModel_NR <- read.table('holdoutsRMSEnoModel_NR.txt',header=TRUE)

meanS_NR <- read.table('meanS_NR.txt',header=TRUE)

holdouts_NR <- cbind(holdoutsMAE_NR,holdoutsMAEnoModel_NR,holdoutsRMSE_NR,holdoutsRMSEnoModel_NR,t(meanS_NR))
holdouts_NR <- signif(holdouts_NR, digits = 2)

################################################################################


holdoutsRealMAE_NR <- read.table('holdoutsRealMAE_NR.txt',header=TRUE)
holdoutsRealMAE_NR <- signif(holdoutsRealMAE_NR,digits=2)

setwd('/media/Files/JHU/Infrastructure/randomgraphs2011/current/statistics/stats1113/')

write.table(holdoutsRealMAE_NR,'holdoutsReal_NR_table.txt')



################################################################################
################################################################################
################################################################################
################################################################################



holdoutsRealMAE_Ythan <- cbind(holdoutsRealMAE_NR[,3],holdoutsRealMAE_NBi[,3],holdoutsRealMAE_NDi[,3])
rownames(holdoutsRealMAE_Ythan) <- c('1','10%','25%','50%','75%')
colnames(holdoutsRealMAE_Ythan) <- c('Random','Betweenness','Degree')
holdoutsRealMAE_Ythan <- as.matrix(holdoutsRealMAE_Ythan)
holdoutsRealMAE_Ythan <- t(holdoutsRealMAE_Ythan)
barplot(holdoutsRealMAE_Ythan,beside=TRUE,ylim=c(0,0.4),xlab='Number of nodes removed',ylab='Absolute error, predictions',legend.text=TRUE)
dev.copy(pdf,'MAEythan.pdf')
dev.off()

holdoutsRealMAE_IEEE118 <- cbind(holdoutsRealMAE_NR[,1],holdoutsRealMAE_NBi[,1],holdoutsRealMAE_NDi[,1])
rownames(holdoutsRealMAE_IEEE118) <- c('1','10%','25%','50%','75%')
colnames(holdoutsRealMAE_IEEE118) <- c('Random','Betweenness','Degree')
holdoutsRealMAE_IEEE118 <- as.matrix(holdoutsRealMAE_IEEE118)
holdoutsRealMAE_IEEE118 <- t(holdoutsRealMAE_IEEE118)
barplot(holdoutsRealMAE_IEEE118,beside=TRUE,ylim=c(0,0.6),xlab='Number of nodes removed',ylab='Absolute error, predictions',legend.text=TRUE)
dev.copy(pdf,'MAEieee118.pdf')
dev.off()

holdoutsRealMAE_IEEE300 <- cbind(holdoutsRealMAE_NR[,2],holdoutsRealMAE_NBi[,2],holdoutsRealMAE_NDi[,2])
rownames(holdoutsRealMAE_IEEE300) <- c('1','10%','25%','50%','75%')
colnames(holdoutsRealMAE_IEEE300) <- c('Random','Betweenness','Degree')
holdoutsRealMAE_IEEE300 <- as.matrix(holdoutsRealMAE_IEEE300)
holdoutsRealMAE_IEEE300 <- t(holdoutsRealMAE_IEEE300)
barplot(holdoutsRealMAE_IEEE300,beside=TRUE,ylim=c(0,1),xlab='Number of nodes removed',ylab='Absolute error, predictions',legend.text=TRUE)
dev.copy(pdf,'MAEieee300.pdf')
dev.off()

holdoutsRealMAE_Ythan_rel <- holdoutsRealMAE_Ythan/meanS_Ythan_all
barplot(holdoutsRealMAE_Ythan_rel,beside=TRUE,ylim=c(0,1),xlab='Number of nodes removed',ylab='Absolute error, predictions',legend.text=TRUE)
dev.copy(pdf,'MAEythan_rel.pdf')
dev.off()

holdoutsRealMAE_IEEE118_rel <- holdoutsRealMAE_IEEE118/meanS_IEEE118_all
barplot(holdoutsRealMAE_IEEE118_rel,beside=TRUE,ylim=c(0,5),xlab='Number of nodes removed',ylab='Absolute error, predictions',legend.text=TRUE)
dev.copy(pdf,'MAEieee118_rel.pdf')
dev.off()

holdoutsRealMAE_IEEE300_rel <- holdoutsRealMAE_IEEE300/meanS_IEEE300_all
barplot(holdoutsRealMAE_IEEE300_rel,beside=TRUE,ylim=c(0,13),xlab='Number of nodes removed',ylab='Absolute error, predictions',legend.text=TRUE)
dev.copy(pdf,'MAEieee300_rel.pdf')
dev.off()
