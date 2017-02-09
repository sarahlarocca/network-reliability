library(betareg)

###############################
# Load data

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')
load('networksModels_NBi.rdata')

Ythan.red.S1.NBi <- t(as.matrix(c(1, Ythan.red.S1.NBi)))
Ythan.red.S10.NBi <- t(as.matrix(c(1, Ythan.red.S10.NBi)))
Ythan.red.S25.NBi <- t(as.matrix(c(1, Ythan.red.S25.NBi)))
Ythan.red.S50.NBi <- t(as.matrix(c(1, Ythan.red.S50.NBi)))
Ythan.red.S75.NBi <- t(as.matrix(c(1, Ythan.red.S75.NBi)))

Eco.red.S1.NBi <- t(as.matrix(c(1, Eco.red.S1.NBi)))
Eco.red.S10.NBi <- t(as.matrix(c(1, Eco.red.S10.NBi)))
Eco.red.S25.NBi <- t(as.matrix(c(1, Eco.red.S25.NBi)))
Eco.red.S50.NBi <- t(as.matrix(c(1, Eco.red.S50.NBi)))
Eco.red.S75.NBi <- t(as.matrix(c(1, Eco.red.S75.NBi)))

Terr.red.S1.NBi <- t(as.matrix(c(1, Terr.red.S1.NBi)))
Terr.red.S10.NBi <- t(as.matrix(c(1, Terr.red.S10.NBi)))
Terr.red.S25.NBi <- t(as.matrix(c(1, Terr.red.S25.NBi)))
Terr.red.S50.NBi <- t(as.matrix(c(1, Terr.red.S50.NBi)))
Terr.red.S75.NBi <- t(as.matrix(c(1, Terr.red.S75.NBi)))

###############################

coef.betareg.S1.NBi <- summary(model.betareg.S1.NBi)$coefficients$mean[,1]
coef.betareg.S10.NBi <- summary(model.betareg.S10.NBi)$coefficients$mean[,1]
coef.betareg.S25.NBi <- summary(model.betareg.S25.NBi)$coefficients$mean[,1]
coef.betareg.S50.NBi <- summary(model.betareg.S50.NBi)$coefficients$mean[,1]
coef.betareg.S75.NBi <- summary(model.betareg.S75.NBi)$coefficients$mean[,1]

coef.betareg.S1.NBi <- as.matrix(coef.betareg.S1.NBi)
coef.betareg.S10.NBi <- as.matrix(coef.betareg.S10.NBi)
coef.betareg.S25.NBi <- as.matrix(coef.betareg.S25.NBi)
coef.betareg.S50.NBi <- as.matrix(coef.betareg.S50.NBi)
coef.betareg.S75.NBi <- as.matrix(coef.betareg.S75.NBi)

se.coef.betareg.S1.NBi <- summary(model.betareg.S1.NBi)$coefficients$mean[,2]
se.coef.betareg.S10.NBi <- summary(model.betareg.S10.NBi)$coefficients$mean[,2]
se.coef.betareg.S25.NBi <- summary(model.betareg.S25.NBi)$coefficients$mean[,2]
se.coef.betareg.S50.NBi <- summary(model.betareg.S50.NBi)$coefficients$mean[,2]
se.coef.betareg.S75.NBi <- summary(model.betareg.S75.NBi)$coefficients$mean[,2]

se.coef.betareg.S1.NBi <- as.matrix(se.coef.betareg.S1.NBi )
se.coef.betareg.S10.NBi <- as.matrix(se.coef.betareg.S10.NBi )
se.coef.betareg.S25.NBi <- as.matrix(se.coef.betareg.S25.NBi )
se.coef.betareg.S50.NBi <- as.matrix(se.coef.betareg.S50.NBi )
se.coef.betareg.S75.NBi <- as.matrix(se.coef.betareg.S75.NBi )

numCoef.betareg.S1.NBi <- dim(coef.betareg.S1.NBi)[1]
numCoef.betareg.S10.NBi <- dim(coef.betareg.S10.NBi)[1]
numCoef.betareg.S25.NBi <- dim(coef.betareg.S25.NBi)[1]
numCoef.betareg.S50.NBi <- dim(coef.betareg.S50.NBi)[1]
numCoef.betareg.S75.NBi <- dim(coef.betareg.S75.NBi)[1]

rand.coef.betareg.S1.NBi <- matrix(0,numCoef.betareg.S1.NBi,100)
rand.coef.betareg.S10.NBi <- matrix(0,numCoef.betareg.S10.NBi,100)
rand.coef.betareg.S25.NBi <- matrix(0,numCoef.betareg.S25.NBi,100)
rand.coef.betareg.S50.NBi <- matrix(0,numCoef.betareg.S50.NBi,100)
rand.coef.betareg.S75.NBi <- matrix(0,numCoef.betareg.S75.NBi,100)

###############################
# Generate random Betas

for (i in 1:numCoef.betareg.S1.NBi) {
  for (j in 1:100) {
    rand.coef.betareg.S1.NBi[i,j] <- rnorm(1,coef.betareg.S1.NBi[i],(se.coef.betareg.S1.NBi[i])^2)
  }
}

for (i in 1:numCoef.betareg.S10.NBi) {
  for (j in 1:100) {
    rand.coef.betareg.S10.NBi[i,j] <- rnorm(1,coef.betareg.S10.NBi[i],(se.coef.betareg.S10.NBi[i])^2)
  }
}

for (i in 1:numCoef.betareg.S25.NBi) {
  for (j in 1:100) {
    rand.coef.betareg.S25.NBi[i,j] <- rnorm(1,coef.betareg.S25.NBi[i],(se.coef.betareg.S25.NBi[i])^2)
  }
}

for (i in 1:numCoef.betareg.S50.NBi) {
  for (j in 1:100) {
    rand.coef.betareg.S50.NBi[i,j] <- rnorm(1,coef.betareg.S50.NBi[i],(se.coef.betareg.S50.NBi[i])^2)
  }
}

for (i in 1:numCoef.betareg.S75.NBi) {
  for (j in 1:100) {
    rand.coef.betareg.S75.NBi[i,j] <- rnorm(1,coef.betareg.S75.NBi[i],(se.coef.betareg.S75.NBi[i])^2)
  }
}
###############################
# Calculate g(mu)


xB.Ythan.S1.NBi.rand <- Ythan.red.S1.NBi %*% rand.coef.betareg.S1.NBi
xB.Ythan.S10.NBi.rand <- Ythan.red.S10.NBi %*% rand.coef.betareg.S10.NBi
xB.Ythan.S25.NBi.rand <- Ythan.red.S25.NBi %*% rand.coef.betareg.S25.NBi
xB.Ythan.S50.NBi.rand <- Ythan.red.S50.NBi %*% rand.coef.betareg.S50.NBi
xB.Ythan.S75.NBi.rand <- Ythan.red.S75.NBi %*% rand.coef.betareg.S75.NBi

mu.Ythan.S1.NBi <- (exp(xB.Ythan.S1.NBi.rand))/(1 + (exp(xB.Ythan.S1.NBi.rand)))
mu.Ythan.S10.NBi <- (exp(xB.Ythan.S10.NBi.rand))/(1 + (exp(xB.Ythan.S10.NBi.rand)))
mu.Ythan.S25.NBi <- (exp(xB.Ythan.S25.NBi.rand))/(1 + (exp(xB.Ythan.S25.NBi.rand)))
mu.Ythan.S50.NBi <- (exp(xB.Ythan.S50.NBi.rand))/(1 + (exp(xB.Ythan.S50.NBi.rand)))
mu.Ythan.S75.NBi <- (exp(xB.Ythan.S75.NBi.rand))/(1 + (exp(xB.Ythan.S75.NBi.rand)))

xB.Eco.S1.NBi.rand <- Eco.red.S1.NBi %*% rand.coef.betareg.S1.NBi
xB.Eco.S10.NBi.rand <- Eco.red.S10.NBi %*% rand.coef.betareg.S10.NBi
xB.Eco.S25.NBi.rand <- Eco.red.S25.NBi %*% rand.coef.betareg.S25.NBi
xB.Eco.S50.NBi.rand <- Eco.red.S50.NBi %*% rand.coef.betareg.S50.NBi
xB.Eco.S75.NBi.rand <- Eco.red.S75.NBi %*% rand.coef.betareg.S75.NBi

mu.Eco.S1.NBi <- (exp(xB.Eco.S1.NBi.rand))/(1 + (exp(xB.Eco.S1.NBi.rand)))
mu.Eco.S10.NBi <- (exp(xB.Eco.S10.NBi.rand))/(1 + (exp(xB.Eco.S10.NBi.rand)))
mu.Eco.S25.NBi <- (exp(xB.Eco.S25.NBi.rand))/(1 + (exp(xB.Eco.S25.NBi.rand)))
mu.Eco.S50.NBi <- (exp(xB.Eco.S50.NBi.rand))/(1 + (exp(xB.Eco.S50.NBi.rand)))
mu.Eco.S75.NBi <- (exp(xB.Eco.S75.NBi.rand))/(1 + (exp(xB.Eco.S75.NBi.rand)))

xB.Terr.S1.NBi.rand <- Terr.red.S1.NBi %*% rand.coef.betareg.S1.NBi
xB.Terr.S10.NBi.rand <- Terr.red.S10.NBi %*% rand.coef.betareg.S10.NBi
xB.Terr.S25.NBi.rand <- Terr.red.S25.NBi %*% rand.coef.betareg.S25.NBi
xB.Terr.S50.NBi.rand <- Terr.red.S50.NBi %*% rand.coef.betareg.S50.NBi
xB.Terr.S75.NBi.rand <- Terr.red.S75.NBi %*% rand.coef.betareg.S75.NBi

mu.Terr.S1.NBi <- (exp(xB.Terr.S1.NBi.rand))/(1 + (exp(xB.Terr.S1.NBi.rand)))
mu.Terr.S10.NBi <- (exp(xB.Terr.S10.NBi.rand))/(1 + (exp(xB.Terr.S10.NBi.rand)))
mu.Terr.S25.NBi <- (exp(xB.Terr.S25.NBi.rand))/(1 + (exp(xB.Terr.S25.NBi.rand)))
mu.Terr.S50.NBi <- (exp(xB.Terr.S50.NBi.rand))/(1 + (exp(xB.Terr.S50.NBi.rand)))
mu.Terr.S75.NBi <- (exp(xB.Terr.S75.NBi.rand))/(1 + (exp(xB.Terr.S75.NBi.rand)))

###############################
# Sample phi

phi.S1.NBi <- summary(model.betareg.S1.NBi)$coefficients$precision[,1]
phi.S10.NBi <- summary(model.betareg.S10.NBi)$coefficients$precision[,1]
phi.S25.NBi <- summary(model.betareg.S25.NBi)$coefficients$precision[,1]
phi.S50.NBi <- summary(model.betareg.S50.NBi)$coefficients$precision[,1]
phi.S75.NBi <- summary(model.betareg.S75.NBi)$coefficients$precision[,1]

phi.S1.NBi <- as.matrix(phi.S1.NBi)
phi.S10.NBi <- as.matrix(phi.S10.NBi)
phi.S25.NBi <- as.matrix(phi.S25.NBi)
phi.S50.NBi <- as.matrix(phi.S50.NBi)
phi.S75.NBi <- as.matrix(phi.S75.NBi)

se.phi.S1.NBi <- summary(model.betareg.S1.NBi)$coefficients$precision[,2]
se.phi.S10.NBi <- summary(model.betareg.S10.NBi)$coefficients$precision[,2]
se.phi.S25.NBi <- summary(model.betareg.S25.NBi)$coefficients$precision[,2]
se.phi.S50.NBi <- summary(model.betareg.S50.NBi)$coefficients$precision[,2]
se.phi.S75.NBi <- summary(model.betareg.S75.NBi)$coefficients$precision[,2]

se.phi.S1.NBi <- as.matrix(se.phi.S1.NBi)
se.phi.S10.NBi <- as.matrix(se.phi.S10.NBi)
se.phi.S25.NBi <- as.matrix(se.phi.S25.NBi)
se.phi.S50.NBi <- as.matrix(se.phi.S50.NBi)
se.phi.S75.NBi <- as.matrix(se.phi.S75.NBi)

rand.phi.S1.NBi <- matrix(0,1,100)
rand.phi.S10.NBi <- matrix(0,1,100)
rand.phi.S25.NBi <- matrix(0,1,100)
rand.phi.S50.NBi <- matrix(0,1,100)
rand.phi.S75.NBi <- matrix(0,1,100)

for (j in 1:100) {
  rand.phi.S1.NBi[1,j] <- rnorm(1,phi.S1.NBi,(se.phi.S1.NBi)^2)
}

for (j in 1:100) {
  rand.phi.S10.NBi[1,j] <- rnorm(1,phi.S10.NBi,(se.phi.S10.NBi)^2)
}

for (j in 1:100) {
  rand.phi.S25.NBi[1,j] <- rnorm(1,phi.S25.NBi,(se.phi.S25.NBi)^2)
}

for (j in 1:100) {
  rand.phi.S50.NBi[1,j] <- rnorm(1,phi.S50.NBi,(se.phi.S50.NBi)^2)
}

for (j in 1:100) {
  rand.phi.S75.NBi[1,j] <- rnorm(1,phi.S75.NBi,(se.phi.S75.NBi)^2)
}



###########################################
# Sample from Beta distribution
y.betaDistSample <- function(mu,phi){
  X <- runif(1,0,1)
  U <- runif(1,0,1)
  fX <- exp(lgamma(phi) - lgamma(mu*phi) - lgamma((1-mu)*phi) + ((mu*phi)-1)*log(X) + (((1-mu)*phi)-1)*log(1-X))
  tX <- 1
  while (U >= (fX/tX)){
    X <- runif(1,0,1)
    U <- runif(1,0,1)
    fX <- exp(lgamma(phi) - lgamma(mu*phi) - lgamma((1-mu)*phi) + ((mu*phi)-1)*log(X) + (((1-mu)*phi)-1)*log(1-X))
    tX <- 1
  }
  y.betaDistSample <- X
}
###########################################

predict.dist.Ythan.S1.NBi <- matrix(0,1,1000000)
predict.dist.Ythan.S10.NBi <- matrix(0,1,1000000)
predict.dist.Ythan.S25.NBi <- matrix(0,1,1000000)
predict.dist.Ythan.S50.NBi <- matrix(0,1,1000000)
predict.dist.Ythan.S75.NBi <- matrix(0,1,1000000)

predict.dist.Eco.S1.NBi <- matrix(0,1,1000000)
predict.dist.Eco.S10.NBi <- matrix(0,1,1000000)
predict.dist.Eco.S25.NBi <- matrix(0,1,1000000)
predict.dist.Eco.S50.NBi <- matrix(0,1,1000000)
predict.dist.Eco.S75.NBi <- matrix(0,1,1000000)

predict.dist.Terr.S1.NBi <- matrix(0,1,1000000)
predict.dist.Terr.S10.NBi <- matrix(0,1,1000000)
predict.dist.Terr.S25.NBi <- matrix(0,1,1000000)
predict.dist.Terr.S50.NBi <- matrix(0,1,1000000)
predict.dist.Terr.S75.NBi <- matrix(0,1,1000000)



t <- 1
for (i in 1:100){			# mu samples	
  for (j in 1:100){			# phi samples
    for (k in 1:100){		   	# y samples

      predict.dist.Ythan.S1.NBi[t] <- y.betaDistSample(mu.Ythan.S1.NBi[1,i],rand.phi.S1.NBi[j])
      predict.dist.Ythan.S10.NBi[t] <- y.betaDistSample(mu.Ythan.S10.NBi[1,i],rand.phi.S10.NBi[j])
      predict.dist.Ythan.S25.NBi[t] <- y.betaDistSample(mu.Ythan.S25.NBi[1,i],rand.phi.S25.NBi[j])
      predict.dist.Ythan.S50.NBi[t] <- y.betaDistSample(mu.Ythan.S50.NBi[1,i],rand.phi.S50.NBi[j])
      predict.dist.Ythan.S75.NBi[t] <- y.betaDistSample(mu.Ythan.S75.NBi[1,i],rand.phi.S75.NBi[j])

      predict.dist.Eco.S1.NBi[t] <- y.betaDistSample(mu.Eco.S1.NBi[1,i],rand.phi.S1.NBi[j])
      predict.dist.Eco.S10.NBi[t] <- y.betaDistSample(mu.Eco.S10.NBi[1,i],rand.phi.S10.NBi[j])
      predict.dist.Eco.S25.NBi[t] <- y.betaDistSample(mu.Eco.S25.NBi[1,i],rand.phi.S25.NBi[j])
      predict.dist.Eco.S50.NBi[t] <- y.betaDistSample(mu.Eco.S50.NBi[1,i],rand.phi.S50.NBi[j])
      predict.dist.Eco.S75.NBi[t] <- y.betaDistSample(mu.Eco.S75.NBi[1,i],rand.phi.S75.NBi[j])

      predict.dist.Terr.S1.NBi[t] <- y.betaDistSample(mu.Terr.S1.NBi[1,i],rand.phi.S1.NBi[j])
      predict.dist.Terr.S10.NBi[t] <- y.betaDistSample(mu.Terr.S10.NBi[1,i],rand.phi.S10.NBi[j])
      predict.dist.Terr.S25.NBi[t] <- y.betaDistSample(mu.Terr.S25.NBi[1,i],rand.phi.S25.NBi[j])
      predict.dist.Terr.S50.NBi[t] <- y.betaDistSample(mu.Terr.S50.NBi[1,i],rand.phi.S50.NBi[j])
      predict.dist.Terr.S75.NBi[t] <- y.betaDistSample(mu.Terr.S75.NBi[1,i],rand.phi.S75.NBi[j])

      t <- t + 1
    }
  }
}


predict.dist.Ythan.S1.NBi.sort <- sort(predict.dist.Ythan.S1.NBi)
predict.dist.Ythan.S10.NBi.sort <- sort(predict.dist.Ythan.S10.NBi)
predict.dist.Ythan.S25.NBi.sort <- sort(predict.dist.Ythan.S25.NBi)
predict.dist.Ythan.S50.NBi.sort <- sort(predict.dist.Ythan.S50.NBi)
predict.dist.Ythan.S75.NBi.sort <- sort(predict.dist.Ythan.S75.NBi)

predict.dist.Eco.S1.NBi.sort <- sort(predict.dist.Eco.S1.NBi)
predict.dist.Eco.S10.NBi.sort <- sort(predict.dist.Eco.S10.NBi)
predict.dist.Eco.S25.NBi.sort <- sort(predict.dist.Eco.S25.NBi)
predict.dist.Eco.S50.NBi.sort <- sort(predict.dist.Eco.S50.NBi)
predict.dist.Eco.S75.NBi.sort <- sort(predict.dist.Eco.S75.NBi)

predict.dist.Terr.S1.NBi.sort <- sort(predict.dist.Terr.S1.NBi)
predict.dist.Terr.S10.NBi.sort <- sort(predict.dist.Terr.S10.NBi)
predict.dist.Terr.S25.NBi.sort <- sort(predict.dist.Terr.S25.NBi)
predict.dist.Terr.S50.NBi.sort <- sort(predict.dist.Terr.S50.NBi)
predict.dist.Terr.S75.NBi.sort <- sort(predict.dist.Terr.S75.NBi)

predict.dist.Ythan.S1.NBi.percentiles <- rbind(predict.dist.Ythan.S1.NBi.sort[25000], predict.dist.Ythan.S1.NBi.sort[50000], predict.dist.Ythan.S1.NBi.sort[125000], predict.dist.Ythan.S1.NBi.sort[160000], predict.dist.Ythan.S1.NBi.sort[840000], predict.dist.Ythan.S1.NBi.sort[875000], predict.dist.Ythan.S1.NBi.sort[950000], predict.dist.Ythan.S1.NBi.sort[975000])
predict.dist.Ythan.S10.NBi.percentiles <- rbind(predict.dist.Ythan.S10.NBi.sort[25000], predict.dist.Ythan.S10.NBi.sort[50000], predict.dist.Ythan.S10.NBi.sort[125000], predict.dist.Ythan.S10.NBi.sort[160000], predict.dist.Ythan.S10.NBi.sort[840000], predict.dist.Ythan.S10.NBi.sort[875000], predict.dist.Ythan.S10.NBi.sort[950000], predict.dist.Ythan.S10.NBi.sort[975000])
predict.dist.Ythan.S25.NBi.percentiles <- rbind(predict.dist.Ythan.S25.NBi.sort[25000], predict.dist.Ythan.S25.NBi.sort[50000], predict.dist.Ythan.S25.NBi.sort[125000], predict.dist.Ythan.S25.NBi.sort[160000], predict.dist.Ythan.S25.NBi.sort[840000], predict.dist.Ythan.S25.NBi.sort[875000], predict.dist.Ythan.S25.NBi.sort[950000], predict.dist.Ythan.S25.NBi.sort[975000])
predict.dist.Ythan.S50.NBi.percentiles <- rbind(predict.dist.Ythan.S50.NBi.sort[25000], predict.dist.Ythan.S50.NBi.sort[50000], predict.dist.Ythan.S50.NBi.sort[125000], predict.dist.Ythan.S50.NBi.sort[160000], predict.dist.Ythan.S50.NBi.sort[840000], predict.dist.Ythan.S50.NBi.sort[875000], predict.dist.Ythan.S50.NBi.sort[950000], predict.dist.Ythan.S50.NBi.sort[975000])
predict.dist.Ythan.S75.NBi.percentiles <- rbind(predict.dist.Ythan.S75.NBi.sort[25000], predict.dist.Ythan.S75.NBi.sort[50000], predict.dist.Ythan.S75.NBi.sort[125000], predict.dist.Ythan.S75.NBi.sort[160000], predict.dist.Ythan.S75.NBi.sort[840000], predict.dist.Ythan.S75.NBi.sort[875000], predict.dist.Ythan.S75.NBi.sort[950000], predict.dist.Ythan.S75.NBi.sort[975000])

predict.dist.Eco.S1.NBi.percentiles <- rbind(predict.dist.Eco.S1.NBi.sort[25000], predict.dist.Eco.S1.NBi.sort[50000], predict.dist.Eco.S1.NBi.sort[125000], predict.dist.Eco.S1.NBi.sort[160000], predict.dist.Eco.S1.NBi.sort[840000], predict.dist.Eco.S1.NBi.sort[875000], predict.dist.Eco.S1.NBi.sort[950000], predict.dist.Eco.S1.NBi.sort[975000])
predict.dist.Eco.S10.NBi.percentiles <- rbind(predict.dist.Eco.S10.NBi.sort[25000], predict.dist.Eco.S10.NBi.sort[50000], predict.dist.Eco.S10.NBi.sort[125000], predict.dist.Eco.S10.NBi.sort[160000], predict.dist.Eco.S10.NBi.sort[840000], predict.dist.Eco.S10.NBi.sort[875000], predict.dist.Eco.S10.NBi.sort[950000], predict.dist.Eco.S10.NBi.sort[975000])
predict.dist.Eco.S25.NBi.percentiles <- rbind(predict.dist.Eco.S25.NBi.sort[25000], predict.dist.Eco.S25.NBi.sort[50000], predict.dist.Eco.S25.NBi.sort[125000], predict.dist.Eco.S25.NBi.sort[160000], predict.dist.Eco.S25.NBi.sort[840000], predict.dist.Eco.S25.NBi.sort[875000], predict.dist.Eco.S25.NBi.sort[950000], predict.dist.Eco.S25.NBi.sort[975000])
predict.dist.Eco.S50.NBi.percentiles <- rbind(predict.dist.Eco.S50.NBi.sort[25000], predict.dist.Eco.S50.NBi.sort[50000], predict.dist.Eco.S50.NBi.sort[125000], predict.dist.Eco.S50.NBi.sort[160000], predict.dist.Eco.S50.NBi.sort[840000], predict.dist.Eco.S50.NBi.sort[875000], predict.dist.Eco.S50.NBi.sort[950000], predict.dist.Eco.S50.NBi.sort[975000])
predict.dist.Eco.S75.NBi.percentiles <- rbind(predict.dist.Eco.S75.NBi.sort[25000], predict.dist.Eco.S75.NBi.sort[50000], predict.dist.Eco.S75.NBi.sort[125000], predict.dist.Eco.S75.NBi.sort[160000], predict.dist.Eco.S75.NBi.sort[840000], predict.dist.Eco.S75.NBi.sort[875000], predict.dist.Eco.S75.NBi.sort[950000], predict.dist.Eco.S75.NBi.sort[975000])

predict.dist.Terr.S1.NBi.percentiles <- rbind(predict.dist.Terr.S1.NBi.sort[25000], predict.dist.Terr.S1.NBi.sort[50000], predict.dist.Terr.S1.NBi.sort[125000], predict.dist.Terr.S1.NBi.sort[160000], predict.dist.Terr.S1.NBi.sort[840000], predict.dist.Terr.S1.NBi.sort[875000], predict.dist.Terr.S1.NBi.sort[950000], predict.dist.Terr.S1.NBi.sort[975000])
predict.dist.Terr.S10.NBi.percentiles <- rbind(predict.dist.Terr.S10.NBi.sort[25000], predict.dist.Terr.S10.NBi.sort[50000], predict.dist.Terr.S10.NBi.sort[125000], predict.dist.Terr.S10.NBi.sort[160000], predict.dist.Terr.S10.NBi.sort[840000], predict.dist.Terr.S10.NBi.sort[875000], predict.dist.Terr.S10.NBi.sort[950000], predict.dist.Terr.S10.NBi.sort[975000])
predict.dist.Terr.S25.NBi.percentiles <- rbind(predict.dist.Terr.S25.NBi.sort[25000], predict.dist.Terr.S25.NBi.sort[50000], predict.dist.Terr.S25.NBi.sort[125000], predict.dist.Terr.S25.NBi.sort[160000], predict.dist.Terr.S25.NBi.sort[840000], predict.dist.Terr.S25.NBi.sort[875000], predict.dist.Terr.S25.NBi.sort[950000], predict.dist.Terr.S25.NBi.sort[975000])
predict.dist.Terr.S50.NBi.percentiles <- rbind(predict.dist.Terr.S50.NBi.sort[25000], predict.dist.Terr.S50.NBi.sort[50000], predict.dist.Terr.S50.NBi.sort[125000], predict.dist.Terr.S50.NBi.sort[160000], predict.dist.Terr.S50.NBi.sort[840000], predict.dist.Terr.S50.NBi.sort[875000], predict.dist.Terr.S50.NBi.sort[950000], predict.dist.Terr.S50.NBi.sort[975000])
predict.dist.Terr.S75.NBi.percentiles <- rbind(predict.dist.Terr.S75.NBi.sort[25000], predict.dist.Terr.S75.NBi.sort[50000], predict.dist.Terr.S75.NBi.sort[125000], predict.dist.Terr.S75.NBi.sort[160000], predict.dist.Terr.S75.NBi.sort[840000], predict.dist.Terr.S75.NBi.sort[875000], predict.dist.Terr.S75.NBi.sort[950000], predict.dist.Terr.S75.NBi.sort[975000])

predict.dist.NBi.percentiles <- cbind(predict.dist.Ythan.S1.NBi.percentiles, predict.dist.Ythan.S10.NBi.percentiles, predict.dist.Ythan.S25.NBi.percentiles, predict.dist.Ythan.S50.NBi.percentiles, predict.dist.Ythan.S75.NBi.percentiles, predict.dist.Eco.S1.NBi.percentiles, predict.dist.Eco.S10.NBi.percentiles, predict.dist.Eco.S25.NBi.percentiles, predict.dist.Eco.S50.NBi.percentiles, predict.dist.Eco.S75.NBi.percentiles, predict.dist.Terr.S1.NBi.percentiles, predict.dist.Terr.S10.NBi.percentiles, predict.dist.Terr.S25.NBi.percentiles, predict.dist.Terr.S50.NBi.percentiles, predict.dist.Terr.S75.NBi.percentiles)

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

colnames(predict.dist.NBi.percentiles) <- c('Ythan_S1', 'Ythan_S10', 'Ythan_S25', 'Ythan_S50', 'Ythan_S75', 'Eco_S1', 'Eco_S10', 'Eco_S25', 'Eco_S50', 'Eco_S75', 'Terr_S1', 'Terr_S10', 'Terr_S25', 'Terr_S50', 'Terr_S75')
rownames(predict.dist.NBi.percentiles) <- c('0.025', '0.05', '0.125', '0.16', '0.84', '0.875', '0.95', '0.975')
write.table(predict.dist.NBi.percentiles, 'predictDist_NBi_percentiles.txt')

predict.dist.NBi <- rbind(predict.dist.Ythan.S1.NBi, predict.dist.Ythan.S10.NBi, predict.dist.Ythan.S25.NBi, predict.dist.Ythan.S50.NBi, predict.dist.Ythan.S75.NBi, predict.dist.Eco.S1.NBi, predict.dist.Eco.S10.NBi, predict.dist.Eco.S25.NBi, predict.dist.Eco.S50.NBi, predict.dist.Eco.S75.NBi, predict.dist.Terr.S1.NBi, predict.dist.Terr.S10.NBi, predict.dist.Terr.S25.NBi, predict.dist.Terr.S50.NBi, predict.dist.Terr.S75.NBi)

rownames(predict.dist.NBi) <- c('Ythan_S1', 'Ythan_S10', 'Ythan_S25', 'Ythan_S50', 'Ythan_S75', 'Eco_S1', 'Eco_S10', 'Eco_S25', 'Eco_S50', 'Eco_S75', 'Terr_S10', 'Terr_S1', 'Terr_S25', 'Terr_S50', 'Terr_S75')
write.table(predict.dist.NBi, 'predictDist_NBi.txt')