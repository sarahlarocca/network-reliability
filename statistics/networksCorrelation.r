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

networks.cor <- cor(networks)

networks.cor <- round(networks.cor, digits = 2)

setwd('../')

write.table(networks.cor,file='networksCorrelation.txt')