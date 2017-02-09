library(betareg)

###############################
# Load data

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')
load('networksModels_NDi.rdata')

Ythan.red.S1.NDi <- t(as.matrix(c(1, Ythan.red.S1.NDi)))
Ythan.red.S10.NDi <- t(as.matrix(c(1, Ythan.red.S10.NDi)))
Ythan.red.S25.NDi <- t(as.matrix(c(1, Ythan.red.S25.NDi)))
Ythan.red.S50.NDi <- t(as.matrix(c(1, Ythan.red.S50.NDi)))
Ythan.red.S75.NDi <- t(as.matrix(c(1, Ythan.red.S75.NDi)))

Eco.red.S1.NDi <- t(as.matrix(c(1, Eco.red.S1.NDi)))
Eco.red.S10.NDi <- t(as.matrix(c(1, Eco.red.S10.NDi)))
Eco.red.S25.NDi <- t(as.matrix(c(1, Eco.red.S25.NDi)))
Eco.red.S50.NDi <- t(as.matrix(c(1, Eco.red.S50.NDi)))
Eco.red.S75.NDi <- t(as.matrix(c(1, Eco.red.S75.NDi)))

Terr.red.S1.NDi <- t(as.matrix(c(1, Terr.red.S1.NDi)))
Terr.red.S10.NDi <- t(as.matrix(c(1, Terr.red.S10.NDi)))
Terr.red.S25.NDi <- t(as.matrix(c(1, Terr.red.S25.NDi)))
Terr.red.S50.NDi <- t(as.matrix(c(1, Terr.red.S50.NDi)))
Terr.red.S75.NDi <- t(as.matrix(c(1, Terr.red.S75.NDi)))

###############################

coef.betareg.S1.NDi <- summary(model.betareg.S1.NDi)$coefficients$mean[,1]
coef.betareg.S10.NDi <- summary(model.betareg.S10.NDi)$coefficients$mean[,1]
coef.betareg.S25.NDi <- summary(model.betareg.S25.NDi)$coefficients$mean[,1]
coef.betareg.S50.NDi <- summary(model.betareg.S50.NDi)$coefficients$mean[,1]
coef.betareg.S75.NDi <- summary(model.betareg.S75.NDi)$coefficients$mean[,1]

coef.betareg.S1.NDi <- as.matrix(coef.betareg.S1.NDi)
coef.betareg.S10.NDi <- as.matrix(coef.betareg.S10.NDi)
coef.betareg.S25.NDi <- as.matrix(coef.betareg.S25.NDi)
coef.betareg.S50.NDi <- as.matrix(coef.betareg.S50.NDi)
coef.betareg.S75.NDi <- as.matrix(coef.betareg.S75.NDi)

se.coef.betareg.S1.NDi <- summary(model.betareg.S1.NDi)$coefficients$mean[,2]
se.coef.betareg.S10.NDi <- summary(model.betareg.S10.NDi)$coefficients$mean[,2]
se.coef.betareg.S25.NDi <- summary(model.betareg.S25.NDi)$coefficients$mean[,2]
se.coef.betareg.S50.NDi <- summary(model.betareg.S50.NDi)$coefficients$mean[,2]
se.coef.betareg.S75.NDi <- summary(model.betareg.S75.NDi)$coefficients$mean[,2]

se.coef.betareg.S1.NDi <- as.matrix(se.coef.betareg.S1.NDi )
se.coef.betareg.S10.NDi <- as.matrix(se.coef.betareg.S10.NDi )
se.coef.betareg.S25.NDi <- as.matrix(se.coef.betareg.S25.NDi )
se.coef.betareg.S50.NDi <- as.matrix(se.coef.betareg.S50.NDi )
se.coef.betareg.S75.NDi <- as.matrix(se.coef.betareg.S75.NDi )

numCoef.betareg.S1.NDi <- dim(coef.betareg.S1.NDi)[1]
numCoef.betareg.S10.NDi <- dim(coef.betareg.S10.NDi)[1]
numCoef.betareg.S25.NDi <- dim(coef.betareg.S25.NDi)[1]
numCoef.betareg.S50.NDi <- dim(coef.betareg.S50.NDi)[1]
numCoef.betareg.S75.NDi <- dim(coef.betareg.S75.NDi)[1]

rand.coef.betareg.S1.NDi <- matrix(0,numCoef.betareg.S1.NDi,100)
rand.coef.betareg.S10.NDi <- matrix(0,numCoef.betareg.S10.NDi,100)
rand.coef.betareg.S25.NDi <- matrix(0,numCoef.betareg.S25.NDi,100)
rand.coef.betareg.S50.NDi <- matrix(0,numCoef.betareg.S50.NDi,100)
rand.coef.betareg.S75.NDi <- matrix(0,numCoef.betareg.S75.NDi,100)

###############################
# Generate random Betas

for (i in 1:numCoef.betareg.S1.NDi) {
  for (j in 1:100) {
    rand.coef.betareg.S1.NDi[i,j] <- rnorm(1,coef.betareg.S1.NDi[i],(se.coef.betareg.S1.NDi[i])^2)
  }
}

for (i in 1:numCoef.betareg.S10.NDi) {
  for (j in 1:100) {
    rand.coef.betareg.S10.NDi[i,j] <- rnorm(1,coef.betareg.S10.NDi[i],(se.coef.betareg.S10.NDi[i])^2)
  }
}

for (i in 1:numCoef.betareg.S25.NDi) {
  for (j in 1:100) {
    rand.coef.betareg.S25.NDi[i,j] <- rnorm(1,coef.betareg.S25.NDi[i],(se.coef.betareg.S25.NDi[i])^2)
  }
}

for (i in 1:numCoef.betareg.S50.NDi) {
  for (j in 1:100) {
    rand.coef.betareg.S50.NDi[i,j] <- rnorm(1,coef.betareg.S50.NDi[i],(se.coef.betareg.S50.NDi[i])^2)
  }
}

for (i in 1:numCoef.betareg.S75.NDi) {
  for (j in 1:100) {
    rand.coef.betareg.S75.NDi[i,j] <- rnorm(1,coef.betareg.S75.NDi[i],(se.coef.betareg.S75.NDi[i])^2)
  }
}
###############################
# Calculate g(mu)


xB.Ythan.S1.NDi.rand <- Ythan.red.S1.NDi %*% rand.coef.betareg.S1.NDi
xB.Ythan.S10.NDi.rand <- Ythan.red.S10.NDi %*% rand.coef.betareg.S10.NDi
xB.Ythan.S25.NDi.rand <- Ythan.red.S25.NDi %*% rand.coef.betareg.S25.NDi
xB.Ythan.S50.NDi.rand <- Ythan.red.S50.NDi %*% rand.coef.betareg.S50.NDi
xB.Ythan.S75.NDi.rand <- Ythan.red.S75.NDi %*% rand.coef.betareg.S75.NDi

mu.Ythan.S1.NDi <- (exp(xB.Ythan.S1.NDi.rand))/(1 + (exp(xB.Ythan.S1.NDi.rand)))
mu.Ythan.S10.NDi <- (exp(xB.Ythan.S10.NDi.rand))/(1 + (exp(xB.Ythan.S10.NDi.rand)))
mu.Ythan.S25.NDi <- (exp(xB.Ythan.S25.NDi.rand))/(1 + (exp(xB.Ythan.S25.NDi.rand)))
mu.Ythan.S50.NDi <- (exp(xB.Ythan.S50.NDi.rand))/(1 + (exp(xB.Ythan.S50.NDi.rand)))
mu.Ythan.S75.NDi <- (exp(xB.Ythan.S75.NDi.rand))/(1 + (exp(xB.Ythan.S75.NDi.rand)))

xB.Eco.S1.NDi.rand <- Eco.red.S1.NDi %*% rand.coef.betareg.S1.NDi
xB.Eco.S10.NDi.rand <- Eco.red.S10.NDi %*% rand.coef.betareg.S10.NDi
xB.Eco.S25.NDi.rand <- Eco.red.S25.NDi %*% rand.coef.betareg.S25.NDi
xB.Eco.S50.NDi.rand <- Eco.red.S50.NDi %*% rand.coef.betareg.S50.NDi
xB.Eco.S75.NDi.rand <- Eco.red.S75.NDi %*% rand.coef.betareg.S75.NDi

mu.Eco.S1.NDi <- (exp(xB.Eco.S1.NDi.rand))/(1 + (exp(xB.Eco.S1.NDi.rand)))
mu.Eco.S10.NDi <- (exp(xB.Eco.S10.NDi.rand))/(1 + (exp(xB.Eco.S10.NDi.rand)))
mu.Eco.S25.NDi <- (exp(xB.Eco.S25.NDi.rand))/(1 + (exp(xB.Eco.S25.NDi.rand)))
mu.Eco.S50.NDi <- (exp(xB.Eco.S50.NDi.rand))/(1 + (exp(xB.Eco.S50.NDi.rand)))
mu.Eco.S75.NDi <- (exp(xB.Eco.S75.NDi.rand))/(1 + (exp(xB.Eco.S75.NDi.rand)))

xB.Terr.S1.NDi.rand <- Terr.red.S1.NDi %*% rand.coef.betareg.S1.NDi
xB.Terr.S10.NDi.rand <- Terr.red.S10.NDi %*% rand.coef.betareg.S10.NDi
xB.Terr.S25.NDi.rand <- Terr.red.S25.NDi %*% rand.coef.betareg.S25.NDi
xB.Terr.S50.NDi.rand <- Terr.red.S50.NDi %*% rand.coef.betareg.S50.NDi
xB.Terr.S75.NDi.rand <- Terr.red.S75.NDi %*% rand.coef.betareg.S75.NDi

mu.Terr.S1.NDi <- (exp(xB.Terr.S1.NDi.rand))/(1 + (exp(xB.Terr.S1.NDi.rand)))
mu.Terr.S10.NDi <- (exp(xB.Terr.S10.NDi.rand))/(1 + (exp(xB.Terr.S10.NDi.rand)))
mu.Terr.S25.NDi <- (exp(xB.Terr.S25.NDi.rand))/(1 + (exp(xB.Terr.S25.NDi.rand)))
mu.Terr.S50.NDi <- (exp(xB.Terr.S50.NDi.rand))/(1 + (exp(xB.Terr.S50.NDi.rand)))
mu.Terr.S75.NDi <- (exp(xB.Terr.S75.NDi.rand))/(1 + (exp(xB.Terr.S75.NDi.rand)))

###############################
# Sample phi

phi.S1.NDi <- summary(model.betareg.S1.NDi)$coefficients$precision[,1]
phi.S10.NDi <- summary(model.betareg.S10.NDi)$coefficients$precision[,1]
phi.S25.NDi <- summary(model.betareg.S25.NDi)$coefficients$precision[,1]
phi.S50.NDi <- summary(model.betareg.S50.NDi)$coefficients$precision[,1]
phi.S75.NDi <- summary(model.betareg.S75.NDi)$coefficients$precision[,1]

phi.S1.NDi <- as.matrix(phi.S1.NDi)
phi.S10.NDi <- as.matrix(phi.S10.NDi)
phi.S25.NDi <- as.matrix(phi.S25.NDi)
phi.S50.NDi <- as.matrix(phi.S50.NDi)
phi.S75.NDi <- as.matrix(phi.S75.NDi)

se.phi.S1.NDi <- summary(model.betareg.S1.NDi)$coefficients$precision[,2]
se.phi.S10.NDi <- summary(model.betareg.S10.NDi)$coefficients$precision[,2]
se.phi.S25.NDi <- summary(model.betareg.S25.NDi)$coefficients$precision[,2]
se.phi.S50.NDi <- summary(model.betareg.S50.NDi)$coefficients$precision[,2]
se.phi.S75.NDi <- summary(model.betareg.S75.NDi)$coefficients$precision[,2]

se.phi.S1.NDi <- as.matrix(se.phi.S1.NDi)
se.phi.S10.NDi <- as.matrix(se.phi.S10.NDi)
se.phi.S25.NDi <- as.matrix(se.phi.S25.NDi)
se.phi.S50.NDi <- as.matrix(se.phi.S50.NDi)
se.phi.S75.NDi <- as.matrix(se.phi.S75.NDi)

rand.phi.S1.NDi <- matrix(0,1,100)
rand.phi.S10.NDi <- matrix(0,1,100)
rand.phi.S25.NDi <- matrix(0,1,100)
rand.phi.S50.NDi <- matrix(0,1,100)
rand.phi.S75.NDi <- matrix(0,1,100)

for (j in 1:100) {
  rand.phi.S1.NDi[1,j] <- rnorm(1,phi.S1.NDi,(se.phi.S1.NDi)^2)
}

for (j in 1:100) {
  rand.phi.S10.NDi[1,j] <- rnorm(1,phi.S10.NDi,(se.phi.S10.NDi)^2)
}

for (j in 1:100) {
  rand.phi.S25.NDi[1,j] <- rnorm(1,phi.S25.NDi,(se.phi.S25.NDi)^2)
}

for (j in 1:100) {
  rand.phi.S50.NDi[1,j] <- rnorm(1,phi.S50.NDi,(se.phi.S50.NDi)^2)
}

for (j in 1:100) {
  rand.phi.S75.NDi[1,j] <- rnorm(1,phi.S75.NDi,(se.phi.S75.NDi)^2)
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

predict.dist.Ythan.S1.NDi <- matrix(0,1,1000000)
predict.dist.Ythan.S10.NDi <- matrix(0,1,1000000)
predict.dist.Ythan.S25.NDi <- matrix(0,1,1000000)
predict.dist.Ythan.S50.NDi <- matrix(0,1,1000000)
predict.dist.Ythan.S75.NDi <- matrix(0,1,1000000)

predict.dist.Eco.S1.NDi <- matrix(0,1,1000000)
predict.dist.Eco.S10.NDi <- matrix(0,1,1000000)
predict.dist.Eco.S25.NDi <- matrix(0,1,1000000)
predict.dist.Eco.S50.NDi <- matrix(0,1,1000000)
predict.dist.Eco.S75.NDi <- matrix(0,1,1000000)

predict.dist.Terr.S1.NDi <- matrix(0,1,1000000)
predict.dist.Terr.S10.NDi <- matrix(0,1,1000000)
predict.dist.Terr.S25.NDi <- matrix(0,1,1000000)
predict.dist.Terr.S50.NDi <- matrix(0,1,1000000)
predict.dist.Terr.S75.NDi <- matrix(0,1,1000000)



t <- 1
for (i in 1:100){			# mu samples	
  for (j in 1:100){			# phi samples
    for (k in 1:100){		   	# y samples

      predict.dist.Ythan.S1.NDi[t] <- y.betaDistSample(mu.Ythan.S1.NDi[1,i],rand.phi.S1.NDi[j])
      predict.dist.Ythan.S10.NDi[t] <- y.betaDistSample(mu.Ythan.S10.NDi[1,i],rand.phi.S10.NDi[j])
      predict.dist.Ythan.S25.NDi[t] <- y.betaDistSample(mu.Ythan.S25.NDi[1,i],rand.phi.S25.NDi[j])
      predict.dist.Ythan.S50.NDi[t] <- y.betaDistSample(mu.Ythan.S50.NDi[1,i],rand.phi.S50.NDi[j])
      predict.dist.Ythan.S75.NDi[t] <- y.betaDistSample(mu.Ythan.S75.NDi[1,i],rand.phi.S75.NDi[j])

      predict.dist.Eco.S1.NDi[t] <- y.betaDistSample(mu.Eco.S1.NDi[1,i],rand.phi.S1.NDi[j])
      predict.dist.Eco.S10.NDi[t] <- y.betaDistSample(mu.Eco.S10.NDi[1,i],rand.phi.S10.NDi[j])
      predict.dist.Eco.S25.NDi[t] <- y.betaDistSample(mu.Eco.S25.NDi[1,i],rand.phi.S25.NDi[j])
      predict.dist.Eco.S50.NDi[t] <- y.betaDistSample(mu.Eco.S50.NDi[1,i],rand.phi.S50.NDi[j])
      predict.dist.Eco.S75.NDi[t] <- y.betaDistSample(mu.Eco.S75.NDi[1,i],rand.phi.S75.NDi[j])

      predict.dist.Terr.S1.NDi[t] <- y.betaDistSample(mu.Terr.S1.NDi[1,i],rand.phi.S1.NDi[j])
      predict.dist.Terr.S10.NDi[t] <- y.betaDistSample(mu.Terr.S10.NDi[1,i],rand.phi.S10.NDi[j])
      predict.dist.Terr.S25.NDi[t] <- y.betaDistSample(mu.Terr.S25.NDi[1,i],rand.phi.S25.NDi[j])
      predict.dist.Terr.S50.NDi[t] <- y.betaDistSample(mu.Terr.S50.NDi[1,i],rand.phi.S50.NDi[j])
      predict.dist.Terr.S75.NDi[t] <- y.betaDistSample(mu.Terr.S75.NDi[1,i],rand.phi.S75.NDi[j])

      t <- t + 1
    }
  }
}


predict.dist.Ythan.S1.NDi.sort <- sort(predict.dist.Ythan.S1.NDi)
predict.dist.Ythan.S10.NDi.sort <- sort(predict.dist.Ythan.S10.NDi)
predict.dist.Ythan.S25.NDi.sort <- sort(predict.dist.Ythan.S25.NDi)
predict.dist.Ythan.S50.NDi.sort <- sort(predict.dist.Ythan.S50.NDi)
predict.dist.Ythan.S75.NDi.sort <- sort(predict.dist.Ythan.S75.NDi)

predict.dist.Eco.S1.NDi.sort <- sort(predict.dist.Eco.S1.NDi)
predict.dist.Eco.S10.NDi.sort <- sort(predict.dist.Eco.S10.NDi)
predict.dist.Eco.S25.NDi.sort <- sort(predict.dist.Eco.S25.NDi)
predict.dist.Eco.S50.NDi.sort <- sort(predict.dist.Eco.S50.NDi)
predict.dist.Eco.S75.NDi.sort <- sort(predict.dist.Eco.S75.NDi)

predict.dist.Terr.S1.NDi.sort <- sort(predict.dist.Terr.S1.NDi)
predict.dist.Terr.S10.NDi.sort <- sort(predict.dist.Terr.S10.NDi)
predict.dist.Terr.S25.NDi.sort <- sort(predict.dist.Terr.S25.NDi)
predict.dist.Terr.S50.NDi.sort <- sort(predict.dist.Terr.S50.NDi)
predict.dist.Terr.S75.NDi.sort <- sort(predict.dist.Terr.S75.NDi)

predict.dist.Ythan.S1.NDi.percentiles <- rbind(predict.dist.Ythan.S1.NDi.sort[25000], predict.dist.Ythan.S1.NDi.sort[50000], predict.dist.Ythan.S1.NDi.sort[125000], predict.dist.Ythan.S1.NDi.sort[160000], predict.dist.Ythan.S1.NDi.sort[840000], predict.dist.Ythan.S1.NDi.sort[875000], predict.dist.Ythan.S1.NDi.sort[950000], predict.dist.Ythan.S1.NDi.sort[975000])
predict.dist.Ythan.S10.NDi.percentiles <- rbind(predict.dist.Ythan.S10.NDi.sort[25000], predict.dist.Ythan.S10.NDi.sort[50000], predict.dist.Ythan.S10.NDi.sort[125000], predict.dist.Ythan.S10.NDi.sort[160000], predict.dist.Ythan.S10.NDi.sort[840000], predict.dist.Ythan.S10.NDi.sort[875000], predict.dist.Ythan.S10.NDi.sort[950000], predict.dist.Ythan.S10.NDi.sort[975000])
predict.dist.Ythan.S25.NDi.percentiles <- rbind(predict.dist.Ythan.S25.NDi.sort[25000], predict.dist.Ythan.S25.NDi.sort[50000], predict.dist.Ythan.S25.NDi.sort[125000], predict.dist.Ythan.S25.NDi.sort[160000], predict.dist.Ythan.S25.NDi.sort[840000], predict.dist.Ythan.S25.NDi.sort[875000], predict.dist.Ythan.S25.NDi.sort[950000], predict.dist.Ythan.S25.NDi.sort[975000])
predict.dist.Ythan.S50.NDi.percentiles <- rbind(predict.dist.Ythan.S50.NDi.sort[25000], predict.dist.Ythan.S50.NDi.sort[50000], predict.dist.Ythan.S50.NDi.sort[125000], predict.dist.Ythan.S50.NDi.sort[160000], predict.dist.Ythan.S50.NDi.sort[840000], predict.dist.Ythan.S50.NDi.sort[875000], predict.dist.Ythan.S50.NDi.sort[950000], predict.dist.Ythan.S50.NDi.sort[975000])
predict.dist.Ythan.S75.NDi.percentiles <- rbind(predict.dist.Ythan.S75.NDi.sort[25000], predict.dist.Ythan.S75.NDi.sort[50000], predict.dist.Ythan.S75.NDi.sort[125000], predict.dist.Ythan.S75.NDi.sort[160000], predict.dist.Ythan.S75.NDi.sort[840000], predict.dist.Ythan.S75.NDi.sort[875000], predict.dist.Ythan.S75.NDi.sort[950000], predict.dist.Ythan.S75.NDi.sort[975000])

predict.dist.Eco.S1.NDi.percentiles <- rbind(predict.dist.Eco.S1.NDi.sort[25000], predict.dist.Eco.S1.NDi.sort[50000], predict.dist.Eco.S1.NDi.sort[125000], predict.dist.Eco.S1.NDi.sort[160000], predict.dist.Eco.S1.NDi.sort[840000], predict.dist.Eco.S1.NDi.sort[875000], predict.dist.Eco.S1.NDi.sort[950000], predict.dist.Eco.S1.NDi.sort[975000])
predict.dist.Eco.S10.NDi.percentiles <- rbind(predict.dist.Eco.S10.NDi.sort[25000], predict.dist.Eco.S10.NDi.sort[50000], predict.dist.Eco.S10.NDi.sort[125000], predict.dist.Eco.S10.NDi.sort[160000], predict.dist.Eco.S10.NDi.sort[840000], predict.dist.Eco.S10.NDi.sort[875000], predict.dist.Eco.S10.NDi.sort[950000], predict.dist.Eco.S10.NDi.sort[975000])
predict.dist.Eco.S25.NDi.percentiles <- rbind(predict.dist.Eco.S25.NDi.sort[25000], predict.dist.Eco.S25.NDi.sort[50000], predict.dist.Eco.S25.NDi.sort[125000], predict.dist.Eco.S25.NDi.sort[160000], predict.dist.Eco.S25.NDi.sort[840000], predict.dist.Eco.S25.NDi.sort[875000], predict.dist.Eco.S25.NDi.sort[950000], predict.dist.Eco.S25.NDi.sort[975000])
predict.dist.Eco.S50.NDi.percentiles <- rbind(predict.dist.Eco.S50.NDi.sort[25000], predict.dist.Eco.S50.NDi.sort[50000], predict.dist.Eco.S50.NDi.sort[125000], predict.dist.Eco.S50.NDi.sort[160000], predict.dist.Eco.S50.NDi.sort[840000], predict.dist.Eco.S50.NDi.sort[875000], predict.dist.Eco.S50.NDi.sort[950000], predict.dist.Eco.S50.NDi.sort[975000])
predict.dist.Eco.S75.NDi.percentiles <- rbind(predict.dist.Eco.S75.NDi.sort[25000], predict.dist.Eco.S75.NDi.sort[50000], predict.dist.Eco.S75.NDi.sort[125000], predict.dist.Eco.S75.NDi.sort[160000], predict.dist.Eco.S75.NDi.sort[840000], predict.dist.Eco.S75.NDi.sort[875000], predict.dist.Eco.S75.NDi.sort[950000], predict.dist.Eco.S75.NDi.sort[975000])

predict.dist.Terr.S1.NDi.percentiles <- rbind(predict.dist.Terr.S1.NDi.sort[25000], predict.dist.Terr.S1.NDi.sort[50000], predict.dist.Terr.S1.NDi.sort[125000], predict.dist.Terr.S1.NDi.sort[160000], predict.dist.Terr.S1.NDi.sort[840000], predict.dist.Terr.S1.NDi.sort[875000], predict.dist.Terr.S1.NDi.sort[950000], predict.dist.Terr.S1.NDi.sort[975000])
predict.dist.Terr.S10.NDi.percentiles <- rbind(predict.dist.Terr.S10.NDi.sort[25000], predict.dist.Terr.S10.NDi.sort[50000], predict.dist.Terr.S10.NDi.sort[125000], predict.dist.Terr.S10.NDi.sort[160000], predict.dist.Terr.S10.NDi.sort[840000], predict.dist.Terr.S10.NDi.sort[875000], predict.dist.Terr.S10.NDi.sort[950000], predict.dist.Terr.S10.NDi.sort[975000])
predict.dist.Terr.S25.NDi.percentiles <- rbind(predict.dist.Terr.S25.NDi.sort[25000], predict.dist.Terr.S25.NDi.sort[50000], predict.dist.Terr.S25.NDi.sort[125000], predict.dist.Terr.S25.NDi.sort[160000], predict.dist.Terr.S25.NDi.sort[840000], predict.dist.Terr.S25.NDi.sort[875000], predict.dist.Terr.S25.NDi.sort[950000], predict.dist.Terr.S25.NDi.sort[975000])
predict.dist.Terr.S50.NDi.percentiles <- rbind(predict.dist.Terr.S50.NDi.sort[25000], predict.dist.Terr.S50.NDi.sort[50000], predict.dist.Terr.S50.NDi.sort[125000], predict.dist.Terr.S50.NDi.sort[160000], predict.dist.Terr.S50.NDi.sort[840000], predict.dist.Terr.S50.NDi.sort[875000], predict.dist.Terr.S50.NDi.sort[950000], predict.dist.Terr.S50.NDi.sort[975000])
predict.dist.Terr.S75.NDi.percentiles <- rbind(predict.dist.Terr.S75.NDi.sort[25000], predict.dist.Terr.S75.NDi.sort[50000], predict.dist.Terr.S75.NDi.sort[125000], predict.dist.Terr.S75.NDi.sort[160000], predict.dist.Terr.S75.NDi.sort[840000], predict.dist.Terr.S75.NDi.sort[875000], predict.dist.Terr.S75.NDi.sort[950000], predict.dist.Terr.S75.NDi.sort[975000])

predict.dist.NDi.percentiles <- cbind(predict.dist.Ythan.S1.NDi.percentiles, predict.dist.Ythan.S10.NDi.percentiles, predict.dist.Ythan.S25.NDi.percentiles, predict.dist.Ythan.S50.NDi.percentiles, predict.dist.Ythan.S75.NDi.percentiles, predict.dist.Eco.S1.NDi.percentiles, predict.dist.Eco.S10.NDi.percentiles, predict.dist.Eco.S25.NDi.percentiles, predict.dist.Eco.S50.NDi.percentiles, predict.dist.Eco.S75.NDi.percentiles, predict.dist.Terr.S1.NDi.percentiles, predict.dist.Terr.S10.NDi.percentiles, predict.dist.Terr.S25.NDi.percentiles, predict.dist.Terr.S50.NDi.percentiles, predict.dist.Terr.S75.NDi.percentiles)

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

colnames(predict.dist.NDi.percentiles) <- c('Ythan_S1', 'Ythan_S10', 'Ythan_S25', 'Ythan_S50', 'Ythan_S75', 'Eco_S1', 'Eco_S10', 'Eco_S25', 'Eco_S50', 'Eco_S75', 'Terr_S1', 'Terr_S10', 'Terr_S25', 'Terr_S50', 'Terr_S75')
rownames(predict.dist.NDi.percentiles) <- c('0.025', '0.05', '0.125', '0.16', '0.84', '0.875', '0.95', '0.975')
write.table(predict.dist.NDi.percentiles, 'predictDist_NDi_percentiles.txt')

predict.dist.NDi <- rbind(predict.dist.Ythan.S1.NDi, predict.dist.Ythan.S10.NDi, predict.dist.Ythan.S25.NDi, predict.dist.Ythan.S50.NDi, predict.dist.Ythan.S75.NDi, predict.dist.Eco.S1.NDi, predict.dist.Eco.S10.NDi, predict.dist.Eco.S25.NDi, predict.dist.Eco.S50.NDi, predict.dist.Eco.S75.NDi, predict.dist.Terr.S1.NDi, predict.dist.Terr.S10.NDi, predict.dist.Terr.S25.NDi, predict.dist.Terr.S50.NDi, predict.dist.Terr.S75.NDi)

rownames(predict.dist.NDi) <- c('Ythan_S1', 'Ythan_S10', 'Ythan_S25', 'Ythan_S50', 'Ythan_S75', 'Eco_S1', 'Eco_S10', 'Eco_S25', 'Eco_S50', 'Eco_S75', 'Terr_S10', 'Terr_S1', 'Terr_S25', 'Terr_S50', 'Terr_S75')
write.table(predict.dist.NDi, 'predictDist_NDi.txt')