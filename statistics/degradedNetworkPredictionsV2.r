################################################################################
# Set directory, load libaries

library(mgcv)
library(MASS)
library(nlme)
library(betareg)
library(lmtest)
library(gdata)
library(ggplot2)

################################################################################

# Load models

setwd('/media/Files/JHU/Infrastructure/networks2012/statistics/results')
load('networksModelsNormalv6b_NR.rdata')
keep(model.betareg.S10.NR, model.betareg.S25.NR, model.betareg.S50.NR, model.betareg.S75.NR, remove.ind.S10.NR, remove.ind.S25.NR, remove.ind.S50.NR, remove.ind.S75.NR, sure = TRUE)


################################################################################
# Import data

setwd('/media/Files/JHU/Infrastructure/networks2012/statistics/data')
degradedNetworks <- read.table('degradedNetworkStats.txt',header=FALSE)
names(degradedNetworks) <- c('kMean','kMin','kMax','kStd','CbMean','CbMin','CbMax','CbStd','Cmean','Cmin','Cmax','Cstd','lMean','lMin','lMax','lStd')
attach(degradedNetworks)

################################################################################
# Normalize covariates

kMean.norm <- (kMean - mean(kMean))/sd(kMean)
CbMean.norm <- (CbMean - mean(CbMean))/sd(CbMean)
CbMax.norm <- (CbMax - mean(CbMax))/sd(CbMax)
Cmean.norm <- (Cmean - mean(Cmean))/sd(Cmean)
Cstd.norm <- (Cstd - mean(Cstd))/sd(Cstd)
lMax.norm <- (lMax - mean(lMax))/sd(lMax)
lStd.norm <- (lStd - mean(lStd))/sd(lStd)

covariates.norm <- cbind(kMean.norm, CbMean.norm, CbMax.norm, Cmean.norm, Cstd.norm, lMax.norm, lStd.norm)
################################################################################

# Reduce degraded network data

degradedNetworks.red.S10 <- covariates.norm
j <- length(remove.ind.S10.NR)
for (m in 1:j){
  if (!is.null(remove.ind.S10.NR)){
    degradedNetworks.red.S10 <- degradedNetworks.red.S10[,-(remove.ind.S10.NR[m]-1)]
  }    
}

degradedNetworks.red.S25 <- covariates.norm
j <- length(remove.ind.S25.NR)
for (m in 1:j){
  if (!is.null(remove.ind.S25.NR)){
    degradedNetworks.red.S25 <- degradedNetworks.red.S25[,-(remove.ind.S25.NR[m]-1)]
  }    
}

degradedNetworks.red.S50 <- covariates.norm
j <- length(remove.ind.S50.NR)
for (m in 1:j){
  if (!is.null(remove.ind.S50.NR)){
    degradedNetworks.red.S50 <- degradedNetworks.red.S50[,-(remove.ind.S50.NR[m]-1)]
  }    
}

degradedNetworks.red.S75 <- covariates.norm
j <- length(remove.ind.S75.NR)
for (m in 1:j){
  if (!is.null(remove.ind.S75.NR)){
    degradedNetworks.red.S75 <- degradedNetworks.red.S75[,-(remove.ind.S75.NR[m]-1)]
  }    
}

################################################################################

# Calculate fitted values of S

S10.degraded <- c()
S25.degraded <- c()
S50.degraded <- c()
S75.degraded <- c()

for (i in 1:62){                                   # for each node removal

  fitted.value <- c()
  fitted.value <- model.betareg.S10.NR$coefficients$mean[1]
  for (l in 1:dim(degradedNetworks.red.S10)[2]){
    fitted.value <- fitted.value + model.betareg.S10.NR$coefficients$mean[l+1]*degradedNetworks.red.S10[i,l]
  }
  S10.degraded[i] <- exp(fitted.value)/(1 + exp(fitted.value))

  fitted.value <- c()
  fitted.value <- model.betareg.S25.NR$coefficients$mean[1]
  for (l in 1:dim(degradedNetworks.red.S25)[2]){
    fitted.value <- fitted.value + model.betareg.S25.NR$coefficients$mean[l+1]*degradedNetworks.red.S25[i,l]
  }
  fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))
  S25.degraded[i] <- fitted.value  

  fitted.value <- c()
  fitted.value <- model.betareg.S50.NR$coefficients$mean[1]
  for (l in 1:dim(degradedNetworks.red.S50)[2]){
    fitted.value <- fitted.value + model.betareg.S50.NR$coefficients$mean[l+1]*degradedNetworks.red.S50[i,l]
  }
  fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))
  S50.degraded[i] <- fitted.value 
  
  fitted.value <- c()
  fitted.value <- model.betareg.S75.NR$coefficients$mean[1]
  for (l in 1:dim(degradedNetworks.red.S75)[2]){
    fitted.value <- fitted.value + model.betareg.S75.NR$coefficients$mean[l+1]*degradedNetworks.red.S75[i,l]
  }
  fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))
  S75.degraded[i] <- fitted.value 
  
}


#################################################################################
# List nodes in order of largest impact based on regression modeling

nodeOrder.S10.reg <- c()
j <- 0
while (j < 62){
  tmp <- which(S10.degraded == sort(S10.degraded)[j+1])
  nodeOrder.S10.reg[(j + 1):(j + length(tmp))] <- tmp
  j <- j + length(tmp)
}


nodeOrder.S25.reg <- c()
j <- 0
while (j < 62){
  tmp <- which(S25.degraded == sort(S25.degraded)[j+1])
  nodeOrder.S25.reg[(j + 1):(j + length(tmp))] <- tmp
  j <- j + length(tmp)
}


nodeOrder.S50.reg <- c()
j <- 0
while (j < 62){
  tmp <- which(S50.degraded == sort(S50.degraded)[j+1])
  nodeOrder.S50.reg[(j + 1):(j + length(tmp))] <- tmp
  j <- j + length(tmp)
}


nodeOrder.S75.reg <- c()
j <- 0
while (j < 62){
  tmp <- which(S75.degraded == sort(S75.degraded)[j+1])
  nodeOrder.S75.reg[(j + 1):(j + length(tmp))] <- tmp
  j <- j + length(tmp)
}


################################################################################
setwd('/media/Files/JHU/Infrastructure/networks2012/degradedNetworks')

# Plot results

S10.actual <- read.table('S10_actual_degrade.txt')
S25.actual <- read.table('S25_actual_degrade.txt')
S50.actual <- read.table('S50_actual_degrade.txt')
S75.actual <- read.table('S75_actual_degrade.txt')

S10.actual <- as.vector(S10.actual)
S25.actual <- as.matrix(S25.actual)
S50.actual <- as.matrix(S50.actual)
S75.actual <- as.matrix(S75.actual)

kInit <- read.table('kInit_degrade.txt')
kInit <- as.matrix(kInit)
nodeOrder.k <- c()
j <- 0
while (j < 62){
  tmp <- which(kInit == sort(kInit,decreasing=TRUE)[j+1])
  nodeOrder.k[(j + 1):(j + length(tmp))] <- tmp
  j <- j + length(tmp)
}

S10.regression <- c()
for (i in 1:62){
  S10.regression[i] <- S10.actual[nodeOrder.S10.reg[i]]
}

S10.k <- c()
for (i in 1:62){
  S10.k[i] <- S10.actual[nodeOrder.k[i]]
}

############################################################################################
# List nodes in order of largest impact based on actual simulations

S10.actual <- as.matrix(S10.actual)
nodeOrder.S10.actual <- c()
j <- 0

while (j < 62){
  tmp <- which(S10.actual == sort(S10.actual)[j+1])
  nodeOrder.S10.actual[(j + 1):(j + length(tmp))] <- tmp
  j <- j + length(tmp)
}
############################################################################################

# Plot

S10.degrade.data <- data.frame()

for (i in 1:62){
S10.degrade.data[i,1] <- sort(S10.actual)[i]
S10.degrade.data[i,2] <- i
S10.degrade.data[i,3] <- 'Actual'
}

for (i in 1:62){
S10.degrade.data[i+62,1] <- S10.regression[i]
S10.degrade.data[i+62,2] <- i
S10.degrade.data[i+62,3] <- 'Regression'
}

for (i in 1:62){
S10.degrade.data[i+124,1] <- S10.k[i]
S10.degrade.data[i+124,2] <- i
S10.degrade.data[i+124,3] <- 'Degree'
}

attach(S10.degrade.data)
names(S10.degrade.data) <- c('Robustness','Ranking','Strategy')
attach(S10.degrade.data)

S10.degrade.data$Strategy <- factor(S10.degrade.data$Strategy, levels = c('Actual', 'Regression','Degree'))

degradedNetworks <- ggplot(data = S10.degrade.data, aes(Ranking, Robustness)) + 
                    geom_point(aes(colour = Strategy)) + 
                    geom_path(aes(colour = Strategy))
ggsave(filename = 'degradedNetworks.pdf')                    
                    
############################################################################################

#Wilcoxson

S10.actual <- as.matrix(S10.actual)
S10.actual.sort <- sort(S10.actual)
S10.regression <- as.matrix(S10.regression)
S10.regression <- as.numeric(S10.regression)
S10.k <- as.matrix(S10.k)
S10.k <- as.numeric(S10.k)

############################################################################################

# Node ranking

j <- 0
nodeRank.S10.reg <- c()
for (i in 1:62){
  tmp <- which(sort(S10.degraded) == S10.degraded[j+1])
  nodeRank.S10.reg[j+1] <- tmp[1]
  j <- j + 1
}

kInit <- as.vector(kInit)
j <- 0
nodeRank.k <- c()
for (i in 1:62){
  tmp <- which(sort(kInit, decreasing=TRUE) == kInit[j+1])
  nodeRank.k[j+1] <- tmp[1]
  j <- j + 1
}

S10.actual <- as.vector(S10.actual)
j <- 0
nodeRank.S10.actual <- c()
for (i in 1:62){
  tmp <- which(sort(S10.actual) == S10.actual[j+1])
  nodeRank.S10.actual[j+1] <- tmp[1]
  j <- j + 1
}

####################################

# Node ranking (ties = mean value of ranking)

j <- 0
nodeRankV2.S10.reg <- c()
for (i in 1:62){
  tmp <- which(sort(S10.degraded) == S10.degraded[j+1])
  if (length(tmp) > 1){
    nodeRankV2.S10.reg[j+1] <- mean(tmp)
  }
  else {
    nodeRankV2.S10.reg[j+1] <- tmp[1]
  }
  j <- j + 1
}

kInit <- as.vector(kInit)
j <- 0
nodeRankV2.k <- c()
for (i in 1:62){
  tmp <- which(sort(kInit, decreasing=TRUE) == kInit[j+1])
  if (length(tmp) > 1){
    nodeRankV2.k[j+1] <- mean(tmp)
  }
  else{
    nodeRankV2.k[j+1] <- tmp[1]
  }
  j <- j + 1
}

S10.actual <- as.vector(S10.actual)
j <- 0
nodeRankV2.S10.actual <- c()
for (i in 1:62){
  tmp <- which(sort(S10.actual) == S10.actual[j+1])
  if (length(tmp) > 1){
    nodeRankV2.S10.actual[j+1] <- mean(tmp)  
  }
  else{
    nodeRankV2.S10.actual[j+1] <- tmp[1]
  }
  j <- j + 1
}

####################################
# Plot

S10.rank.data <- data.frame()

for (i in 1:62){
S10.rank.data[i,1] <- nodeRank.S10.actual[i]
S10.rank.data[i,2] <- nodeRank.S10.reg[i]
S10.rank.data[i,3] <- nodeRankV2.S10.actual[i]
S10.rank.data[i,4] <- nodeRankV2.S10.reg[i]
S10.rank.data[i,5] <- 'Regression'
}

for (i in 1:62){
S10.rank.data[i+62,1] <- nodeRank.S10.actual[i]
S10.rank.data[i+62,2] <- nodeRank.k[i]
S10.rank.data[i+62,3] <- nodeRankV2.S10.actual[i]
S10.rank.data[i+62,4] <- nodeRankV2.k[i]
S10.rank.data[i+62,5] <- 'Degree'
}

attach(S10.rank.data)
names(S10.rank.data) <- c('Actual','Predicted','ActualV2','PredictedV2','Strategy')
attach(S10.rank.data)

S10.rank.data$Strategy <- factor(S10.rank.data$Strategy, levels = c('Regression','Degree'))

lm.reg <- lm(nodeRank.S10.reg ~ nodeRank.S10.actual)
lm.k <- lm(nodeRank.k ~ nodeRank.S10.actual)

lmV2.reg <- lm(nodeRankV2.S10.reg ~ nodeRankV2.S10.actual)
lmV2.k <- lm(nodeRankV2.k ~ nodeRankV2.S10.actual)

rankingPlot <- ggplot(data = S10.rank.data, aes(Actual, Predicted)) + 
               geom_point(aes(colour = Strategy)) + 
               geom_abline(intercept = coef(lm.reg)[1], slope = coef(lm.reg)[2]) + 
               geom_abline(intercept = coef(lm.k)[1], slope = coef(lm.k)[2], colour = 'darkgray')   
ggsave(filename = 'rankingPlot.pdf')

               
rankingPlotV2 <- ggplot(data = S10.rank.data, aes(ActualV2, PredictedV2)) + 
               geom_point(aes(colour = Strategy)) + 
               geom_abline(intercept = coef(lmV2.reg)[1], slope = coef(lmV2.reg)[2]) + 
               geom_abline(intercept = coef(lmV2.k)[1], slope = coef(lmV2.k)[2], colour = 'darkgray')   
ggsave(filename = 'rankingPlotV2.pdf')
               
               
#ggsave(filename = 'rankingPlot.pdf')

#wilcox.test(nodeRank.S10.reg,nodeRank.k, paired=TRUE)