
setwd('/media/Files/JHU/Infrastructure/randomgraphs2011/current/sethLink/')
singleLinkAdd <- read.table('single_links_covars.txt',header=TRUE)
names(singleLinkAdd) <- c('CbMean','CbMax','CbMin','CbStd','Cmean','Cmax','Cmin','Cstd','lMean','lMax','lMin','lStd','kMean','kMax','kMin','kStd')
attach(singleLinkAdd)


Eco$kMean <- (Eco$kMean - mean(networks$kMean))/sd(networks$kMean)


singleLinkAdd$kMean <- (singleLinkAdd$kMean - mean(networks$kMean))/sd(networks$kMean)
singleLinkAdd$CbMean <- (singleLinkAdd$CbMean - mean(networks$CbMean))/sd(networks$CbMean)
singleLinkAdd$CbMax <- (singleLinkAdd$CbMax - mean(networks$CbMax))/sd(networks$CbMax)
singleLinkAdd$Cmean <- (singleLinkAdd$Cmean - mean(networks$Cmean))/sd(networks$Cmean)
singleLinkAdd$Cstd <- (singleLinkAdd$Cstd - mean(networks$Cstd))/sd(networks$Cstd)
singleLinkAdd$lMax <- (singleLinkAdd$lMax - mean(networks$lMax))/sd(networks$lMax)
singleLinkAdd$lStd <- (singleLinkAdd$lStd - mean(networks$lStd))/sd(networks$lStd)

# Reduce data

singleLinkAdd.red.S10 <- cbind(singleLinkAdd$kMean,singleLinkAdd$CbMean,singleLinkAdd$CbMax,singleLinkAdd$Cmean,singleLinkAdd$Cstd,singleLinkAdd$lMax,singleLinkAdd$lStd)
j <- dim(data.frame(remove.ind.S10.NR))[1]
for (m in 1:j){
  if (!is.null(remove.ind.S10.NR)){
    singleLinkAdd.red.S10 <- singleLinkAdd.red.S10[,-(remove.ind.S10.NR[m]-1)]
  }    
}

singleLinkAdd.red.S25 <- cbind(singleLinkAdd$kMean,singleLinkAdd$CbMean,singleLinkAdd$CbMax,singleLinkAdd$Cmean,singleLinkAdd$Cstd,singleLinkAdd$lMax,singleLinkAdd$lStd)
j <- dim(data.frame(remove.ind.S25.NR))[1]
for (m in 1:j){
  if (!is.null(remove.ind.S25.NR)){
    singleLinkAdd.red.S25 <- singleLinkAdd.red.S25[,-(remove.ind.S25.NR[m]-1)]
  }    
}

singleLinkAdd.red.S50 <- cbind(singleLinkAdd$kMean,singleLinkAdd$CbMean,singleLinkAdd$CbMax,singleLinkAdd$Cmean,singleLinkAdd$Cstd,singleLinkAdd$lMax,singleLinkAdd$lStd)
j <- dim(data.frame(remove.ind.S50.NR))[1]100
for (m in 1:j){
  if (!is.null(remove.ind.S50.NR)){
    singleLinkAdd.red.S50 <- singleLinkAdd.red.S50[,-(remove.ind.S50.NR[m]-1)]
  }    
}

singleLinkAdd.red.S75 <- cbind(singleLinkAdd$kMean,singleLinkAdd$CbMean,singleLinkAdd$CbMax,singleLinkAdd$Cmean,singleLinkAdd$Cstd,singleLinkAdd$lMax,singleLinkAdd$lStd)
j <- dim(data.frame(remove.ind.S75.NR))[1]
for (m in 1:j){
  if (!is.null(remove.ind.S75.NR)){
    singleLinkAdd.red.S75 <- singleLinkAdd.red.S75[,-(remove.ind.S75.NR[m]-1)]
  }    100
}

numLinks <- dim(data.frame(singleLinkAdd))[1]

# Calculate fitted Y

fitted.value.S10.NR <- c()
fitted.value.S25.NR <- c()
fitted.value.S50.NR <- c()
fitted.value.S75.NR <- c()

for (i in 1:numLinks){

  fitted.value.S10.NR[i] <- model.betareg.S10.NR$coefficients$mean[1]
  for (l in 1:dim(data.frame(singleLinkAdd.red.S10))[2]){
    fitted.value.S10.NR[i] <- fitted.value.S10.NR[i] + model.betareg.S10.NR$coefficients$mean[l+1]*singleLinkAdd.red.S10[l]
  }
  fitted.value.S10.NR[i] <- exp(fitted.value.S10.NR[i])/(1 + exp(fitted.value.S10.NR[i]))

  fitted.value.S25.NR[i] <- model.betareg.S25.NR$coefficients$mean[1]
  for (l in 1:dim(data.frame(singleLinkAdd.red.S25))[2]){
    fitted.value.S25.NR[i] <- fitted.value.S25.NR[i] + model.betareg.S25.NR$coefficients$mean[l+1]*singleLinkAdd.red.S25[l]
  }
  fitted.value.S25.NR[i] <- exp(fitted.value.S25.NR[i])/(1 + exp(fitted.value.S25.NR[i]))

  fitted.value.S50.NR[i] <- model.betareg.S50.NR$coefficients$mean[1]
  for (l in 1:dim(data.frame(singleLinkAdd.red.S50))[2]){
    fitted.value.S50.NR[i] <- fitted.value.S50.NR[i] + model.betareg.S50.NR$coefficients$mean[l+1]*singleLinkAdd.red.S50[l]
  }
  fitted.value.S50.NR[i] <- exp(fitted.value.S50.NR[i])/(1 + exp(fitted.value.S50.NR[i]))

  fitted.value.S75.NR[i] <- model.betareg.S75.NR$coefficients$mean[1]
  for (l in 1:dim(data.frame(singleLinkAdd.red.S75))[2]){
    fitted.value.S75.NR[i] <- fitted.value.S75.NR[i] + model.betareg.S75.NR$coefficients$mean[l+1]*singleLinkAdd.red.S75[l]
  }
  fitted.value.S75.NR[i] <- exp(fitted.value.S75.NR[i])/(1 + exp(fitted.value.S75.NR[i]))
}
