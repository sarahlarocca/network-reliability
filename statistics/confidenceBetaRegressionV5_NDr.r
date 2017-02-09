library(betareg)

###############################
# Load data

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')
load('networksModels_NDr_V2.rdata')

Ythan.red.S1.NDr <- t(as.matrix(c(1, Ythan.red.S1.NDr)))
Ythan.red.S10.NDr <- t(as.matrix(c(1, Ythan.red.S10.NDr)))
Ythan.red.S25.NDr <- t(as.matrix(c(1, Ythan.red.S25.NDr)))
Ythan.red.S50.NDr <- t(as.matrix(c(1, Ythan.red.S50.NDr)))
Ythan.red.S75.NDr <- t(as.matrix(c(1, Ythan.red.S75.NDr)))

Eco.red.S1.NDr <- t(as.matrix(c(1, Eco.red.S1.NDr)))
Eco.red.S10.NDr <- t(as.matrix(c(1, Eco.red.S10.NDr)))
Eco.red.S25.NDr <- t(as.matrix(c(1, Eco.red.S25.NDr)))
Eco.red.S50.NDr <- t(as.matrix(c(1, Eco.red.S50.NDr)))
Eco.red.S75.NDr <- t(as.matrix(c(1, Eco.red.S75.NDr)))

Terr.red.S1.NDr <- t(as.matrix(c(1, Terr.red.S1.NDr)))
Terr.red.S10.NDr <- t(as.matrix(c(1, Terr.red.S10.NDr)))
Terr.red.S25.NDr <- t(as.matrix(c(1, Terr.red.S25.NDr)))
Terr.red.S50.NDr <- t(as.matrix(c(1, Terr.red.S50.NDr)))
Terr.red.S75.NDr <- t(as.matrix(c(1, Terr.red.S75.NDr)))

###############################

coef.betareg.S1.NDr <- summary(model.betareg.S1.NDr)$coefficients$mean[,1]
coef.betareg.S10.NDr <- summary(model.betareg.S10.NDr)$coefficients$mean[,1]
coef.betareg.S25.NDr <- summary(model.betareg.S25.NDr)$coefficients$mean[,1]
coef.betareg.S50.NDr <- summary(model.betareg.S50.NDr)$coefficients$mean[,1]
coef.betareg.S75.NDr <- summary(model.betareg.S75.NDr)$coefficients$mean[,1]

coef.betareg.S1.NDr <- as.matrix(coef.betareg.S1.NDr)
coef.betareg.S10.NDr <- as.matrix(coef.betareg.S10.NDr)
coef.betareg.S25.NDr <- as.matrix(coef.betareg.S25.NDr)
coef.betareg.S50.NDr <- as.matrix(coef.betareg.S50.NDr)
coef.betareg.S75.NDr <- as.matrix(coef.betareg.S75.NDr)

se.coef.betareg.S1.NDr <- summary(model.betareg.S1.NDr)$coefficients$mean[,2]
se.coef.betareg.S10.NDr <- summary(model.betareg.S10.NDr)$coefficients$mean[,2]
se.coef.betareg.S25.NDr <- summary(model.betareg.S25.NDr)$coefficients$mean[,2]
se.coef.betareg.S50.NDr <- summary(model.betareg.S50.NDr)$coefficients$mean[,2]
se.coef.betareg.S75.NDr <- summary(model.betareg.S75.NDr)$coefficients$mean[,2]

se.coef.betareg.S1.NDr <- as.matrix(se.coef.betareg.S1.NDr )
se.coef.betareg.S10.NDr <- as.matrix(se.coef.betareg.S10.NDr )
se.coef.betareg.S25.NDr <- as.matrix(se.coef.betareg.S25.NDr )
se.coef.betareg.S50.NDr <- as.matrix(se.coef.betareg.S50.NDr )
se.coef.betareg.S75.NDr <- as.matrix(se.coef.betareg.S75.NDr )

numCoef.betareg.S1.NDr <- dim(coef.betareg.S1.NDr)[1]
numCoef.betareg.S10.NDr <- dim(coef.betareg.S10.NDr)[1]
numCoef.betareg.S25.NDr <- dim(coef.betareg.S25.NDr)[1]
numCoef.betareg.S50.NDr <- dim(coef.betareg.S50.NDr)[1]
numCoef.betareg.S75.NDr <- dim(coef.betareg.S75.NDr)[1]

rand.coef.betareg.S1.NDr <- matrix(0,numCoef.betareg.S1.NDr,100)
rand.coef.betareg.S10.NDr <- matrix(0,numCoef.betareg.S10.NDr,100)
rand.coef.betareg.S25.NDr <- matrix(0,numCoef.betareg.S25.NDr,100)
rand.coef.betareg.S50.NDr <- matrix(0,numCoef.betareg.S50.NDr,100)
rand.coef.betareg.S75.NDr <- matrix(0,numCoef.betareg.S75.NDr,100)

###############################
# Generate random Betas

for (i in 1:numCoef.betareg.S1.NDr) {
  for (j in 1:100) {
    rand.coef.betareg.S1.NDr[i,j] <- rnorm(1,coef.betareg.S1.NDr[i],(se.coef.betareg.S1.NDr[i])^2)
  }
}

for (i in 1:numCoef.betareg.S10.NDr) {
  for (j in 1:100) {
    rand.coef.betareg.S10.NDr[i,j] <- rnorm(1,coef.betareg.S10.NDr[i],(se.coef.betareg.S10.NDr[i])^2)
  }
}

for (i in 1:numCoef.betareg.S25.NDr) {
  for (j in 1:100) {
    rand.coef.betareg.S25.NDr[i,j] <- rnorm(1,coef.betareg.S25.NDr[i],(se.coef.betareg.S25.NDr[i])^2)
  }
}

for (i in 1:numCoef.betareg.S50.NDr) {
  for (j in 1:100) {
    rand.coef.betareg.S50.NDr[i,j] <- rnorm(1,coef.betareg.S50.NDr[i],(se.coef.betareg.S50.NDr[i])^2)
  }
}

for (i in 1:numCoef.betareg.S75.NDr) {
  for (j in 1:100) {
    rand.coef.betareg.S75.NDr[i,j] <- rnorm(1,coef.betareg.S75.NDr[i],(se.coef.betareg.S75.NDr[i])^2)
  }
}
###############################
# Calculate g(mu)


xB.Ythan.S1.NDr.rand <- Ythan.red.S1.NDr %*% rand.coef.betareg.S1.NDr
xB.Ythan.S10.NDr.rand <- Ythan.red.S10.NDr %*% rand.coef.betareg.S10.NDr
xB.Ythan.S25.NDr.rand <- Ythan.red.S25.NDr %*% rand.coef.betareg.S25.NDr
xB.Ythan.S50.NDr.rand <- Ythan.red.S50.NDr %*% rand.coef.betareg.S50.NDr
xB.Ythan.S75.NDr.rand <- Ythan.red.S75.NDr %*% rand.coef.betareg.S75.NDr

mu.Ythan.S1.NDr <- (exp(xB.Ythan.S1.NDr.rand))/(1 + (exp(xB.Ythan.S1.NDr.rand)))
mu.Ythan.S10.NDr <- (exp(xB.Ythan.S10.NDr.rand))/(1 + (exp(xB.Ythan.S10.NDr.rand)))
mu.Ythan.S25.NDr <- (exp(xB.Ythan.S25.NDr.rand))/(1 + (exp(xB.Ythan.S25.NDr.rand)))
mu.Ythan.S50.NDr <- (exp(xB.Ythan.S50.NDr.rand))/(1 + (exp(xB.Ythan.S50.NDr.rand)))
mu.Ythan.S75.NDr <- (exp(xB.Ythan.S75.NDr.rand))/(1 + (exp(xB.Ythan.S75.NDr.rand)))

xB.Eco.S1.NDr.rand <- Eco.red.S1.NDr %*% rand.coef.betareg.S1.NDr
xB.Eco.S10.NDr.rand <- Eco.red.S10.NDr %*% rand.coef.betareg.S10.NDr
xB.Eco.S25.NDr.rand <- Eco.red.S25.NDr %*% rand.coef.betareg.S25.NDr
xB.Eco.S50.NDr.rand <- Eco.red.S50.NDr %*% rand.coef.betareg.S50.NDr
xB.Eco.S75.NDr.rand <- Eco.red.S75.NDr %*% rand.coef.betareg.S75.NDr

mu.Eco.S1.NDr <- (exp(xB.Eco.S1.NDr.rand))/(1 + (exp(xB.Eco.S1.NDr.rand)))
mu.Eco.S10.NDr <- (exp(xB.Eco.S10.NDr.rand))/(1 + (exp(xB.Eco.S10.NDr.rand)))
mu.Eco.S25.NDr <- (exp(xB.Eco.S25.NDr.rand))/(1 + (exp(xB.Eco.S25.NDr.rand)))
mu.Eco.S50.NDr <- (exp(xB.Eco.S50.NDr.rand))/(1 + (exp(xB.Eco.S50.NDr.rand)))
mu.Eco.S75.NDr <- (exp(xB.Eco.S75.NDr.rand))/(1 + (exp(xB.Eco.S75.NDr.rand)))

xB.Terr.S1.NDr.rand <- Terr.red.S1.NDr %*% rand.coef.betareg.S1.NDr
xB.Terr.S10.NDr.rand <- Terr.red.S10.NDr %*% rand.coef.betareg.S10.NDr
xB.Terr.S25.NDr.rand <- Terr.red.S25.NDr %*% rand.coef.betareg.S25.NDr
xB.Terr.S50.NDr.rand <- Terr.red.S50.NDr %*% rand.coef.betareg.S50.NDr
xB.Terr.S75.NDr.rand <- Terr.red.S75.NDr %*% rand.coef.betareg.S75.NDr

mu.Terr.S1.NDr <- (exp(xB.Terr.S1.NDr.rand))/(1 + (exp(xB.Terr.S1.NDr.rand)))
mu.Terr.S10.NDr <- (exp(xB.Terr.S10.NDr.rand))/(1 + (exp(xB.Terr.S10.NDr.rand)))
mu.Terr.S25.NDr <- (exp(xB.Terr.S25.NDr.rand))/(1 + (exp(xB.Terr.S25.NDr.rand)))
mu.Terr.S50.NDr <- (exp(xB.Terr.S50.NDr.rand))/(1 + (exp(xB.Terr.S50.NDr.rand)))
mu.Terr.S75.NDr <- (exp(xB.Terr.S75.NDr.rand))/(1 + (exp(xB.Terr.S75.NDr.rand)))

###############################
# Sample phi

phi.S1.NDr <- summary(model.betareg.S1.NDr)$coefficients$precision[,1]
phi.S10.NDr <- summary(model.betareg.S10.NDr)$coefficients$precision[,1]
phi.S25.NDr <- summary(model.betareg.S25.NDr)$coefficients$precision[,1]
phi.S50.NDr <- summary(model.betareg.S50.NDr)$coefficients$precision[,1]
phi.S75.NDr <- summary(model.betareg.S75.NDr)$coefficients$precision[,1]

phi.S1.NDr <- as.matrix(phi.S1.NDr)
phi.S10.NDr <- as.matrix(phi.S10.NDr)
phi.S25.NDr <- as.matrix(phi.S25.NDr)
phi.S50.NDr <- as.matrix(phi.S50.NDr)
phi.S75.NDr <- as.matrix(phi.S75.NDr)

se.phi.S1.NDr <- summary(model.betareg.S1.NDr)$coefficients$precision[,2]
se.phi.S10.NDr <- summary(model.betareg.S10.NDr)$coefficients$precision[,2]
se.phi.S25.NDr <- summary(model.betareg.S25.NDr)$coefficients$precision[,2]
se.phi.S50.NDr <- summary(model.betareg.S50.NDr)$coefficients$precision[,2]
se.phi.S75.NDr <- summary(model.betareg.S75.NDr)$coefficients$precision[,2]

se.phi.S1.NDr <- as.matrix(se.phi.S1.NDr)
se.phi.S10.NDr <- as.matrix(se.phi.S10.NDr)
se.phi.S25.NDr <- as.matrix(se.phi.S25.NDr)
se.phi.S50.NDr <- as.matrix(se.phi.S50.NDr)
se.phi.S75.NDr <- as.matrix(se.phi.S75.NDr)

rand.phi.S1.NDr <- matrix(0,1,100)
rand.phi.S10.NDr <- matrix(0,1,100)
rand.phi.S25.NDr <- matrix(0,1,100)
rand.phi.S50.NDr <- matrix(0,1,100)
rand.phi.S75.NDr <- matrix(0,1,100)

for (j in 1:100) {
  rand.phi.S1.NDr[1,j] <- rnorm(1,phi.S1.NDr,(se.phi.S1.NDr)^2)
}

for (j in 1:100) {
  rand.phi.S10.NDr[1,j] <- rnorm(1,phi.S10.NDr,(se.phi.S10.NDr)^2)
}

for (j in 1:100) {
  rand.phi.S25.NDr[1,j] <- rnorm(1,phi.S25.NDr,(se.phi.S25.NDr)^2)
}

for (j in 1:100) {
  rand.phi.S50.NDr[1,j] <- rnorm(1,phi.S50.NDr,(se.phi.S50.NDr)^2)
}

for (j in 1:100) {
  rand.phi.S75.NDr[1,j] <- rnorm(1,phi.S75.NDr,(se.phi.S75.NDr)^2)
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

predict.dist.Ythan.S1.NDr <- matrix(0,1,1000000)
predict.dist.Ythan.S10.NDr <- matrix(0,1,1000000)
predict.dist.Ythan.S25.NDr <- matrix(0,1,1000000)
predict.dist.Ythan.S50.NDr <- matrix(0,1,1000000)
predict.dist.Ythan.S75.NDr <- matrix(0,1,1000000)

predict.dist.Eco.S1.NDr <- matrix(0,1,1000000)
predict.dist.Eco.S10.NDr <- matrix(0,1,1000000)
predict.dist.Eco.S25.NDr <- matrix(0,1,1000000)
predict.dist.Eco.S50.NDr <- matrix(0,1,1000000)
predict.dist.Eco.S75.NDr <- matrix(0,1,1000000)

predict.dist.Terr.S1.NDr <- matrix(0,1,1000000)
predict.dist.Terr.S10.NDr <- matrix(0,1,1000000)
predict.dist.Terr.S25.NDr <- matrix(0,1,1000000)
predict.dist.Terr.S50.NDr <- matrix(0,1,1000000)
predict.dist.Terr.S75.NDr <- matrix(0,1,1000000)



t <- 1
for (i in 1:100){			# mu samples	
  for (j in 1:100){			# phi samples
    for (k in 1:100){		   	# y samples

      predict.dist.Ythan.S1.NDr[t] <- y.betaDistSample(mu.Ythan.S1.NDr[1,i],rand.phi.S1.NDr[j])
      predict.dist.Ythan.S10.NDr[t] <- y.betaDistSample(mu.Ythan.S10.NDr[1,i],rand.phi.S10.NDr[j])
      predict.dist.Ythan.S25.NDr[t] <- y.betaDistSample(mu.Ythan.S25.NDr[1,i],rand.phi.S25.NDr[j])
      predict.dist.Ythan.S50.NDr[t] <- y.betaDistSample(mu.Ythan.S50.NDr[1,i],rand.phi.S50.NDr[j])
      predict.dist.Ythan.S75.NDr[t] <- y.betaDistSample(mu.Ythan.S75.NDr[1,i],rand.phi.S75.NDr[j])

      predict.dist.Eco.S1.NDr[t] <- y.betaDistSample(mu.Eco.S1.NDr[1,i],rand.phi.S1.NDr[j])
      predict.dist.Eco.S10.NDr[t] <- y.betaDistSample(mu.Eco.S10.NDr[1,i],rand.phi.S10.NDr[j])
      predict.dist.Eco.S25.NDr[t] <- y.betaDistSample(mu.Eco.S25.NDr[1,i],rand.phi.S25.NDr[j])
      predict.dist.Eco.S50.NDr[t] <- y.betaDistSample(mu.Eco.S50.NDr[1,i],rand.phi.S50.NDr[j])
      predict.dist.Eco.S75.NDr[t] <- y.betaDistSample(mu.Eco.S75.NDr[1,i],rand.phi.S75.NDr[j])

      predict.dist.Terr.S1.NDr[t] <- y.betaDistSample(mu.Terr.S1.NDr[1,i],rand.phi.S1.NDr[j])
      predict.dist.Terr.S10.NDr[t] <- y.betaDistSample(mu.Terr.S10.NDr[1,i],rand.phi.S10.NDr[j])
      predict.dist.Terr.S25.NDr[t] <- y.betaDistSample(mu.Terr.S25.NDr[1,i],rand.phi.S25.NDr[j])
      predict.dist.Terr.S50.NDr[t] <- y.betaDistSample(mu.Terr.S50.NDr[1,i],rand.phi.S50.NDr[j])
      predict.dist.Terr.S75.NDr[t] <- y.betaDistSample(mu.Terr.S75.NDr[1,i],rand.phi.S75.NDr[j])

      t <- t + 1
    }
  }
}


predict.dist.Ythan.S1.NDr.sort <- sort(predict.dist.Ythan.S1.NDr)
predict.dist.Ythan.S10.NDr.sort <- sort(predict.dist.Ythan.S10.NDr)
predict.dist.Ythan.S25.NDr.sort <- sort(predict.dist.Ythan.S25.NDr)
predict.dist.Ythan.S50.NDr.sort <- sort(predict.dist.Ythan.S50.NDr)
predict.dist.Ythan.S75.NDr.sort <- sort(predict.dist.Ythan.S75.NDr)

predict.dist.Eco.S1.NDr.sort <- sort(predict.dist.Eco.S1.NDr)
predict.dist.Eco.S10.NDr.sort <- sort(predict.dist.Eco.S10.NDr)
predict.dist.Eco.S25.NDr.sort <- sort(predict.dist.Eco.S25.NDr)
predict.dist.Eco.S50.NDr.sort <- sort(predict.dist.Eco.S50.NDr)
predict.dist.Eco.S75.NDr.sort <- sort(predict.dist.Eco.S75.NDr)

predict.dist.Terr.S1.NDr.sort <- sort(predict.dist.Terr.S1.NDr)
predict.dist.Terr.S10.NDr.sort <- sort(predict.dist.Terr.S10.NDr)
predict.dist.Terr.S25.NDr.sort <- sort(predict.dist.Terr.S25.NDr)
predict.dist.Terr.S50.NDr.sort <- sort(predict.dist.Terr.S50.NDr)
predict.dist.Terr.S75.NDr.sort <- sort(predict.dist.Terr.S75.NDr)

predict.dist.Ythan.S1.NDr.percentiles <- rbind(predict.dist.Ythan.S1.NDr.sort[25000], predict.dist.Ythan.S1.NDr.sort[50000], predict.dist.Ythan.S1.NDr.sort[125000], predict.dist.Ythan.S1.NDr.sort[160000], predict.dist.Ythan.S1.NDr.sort[840000], predict.dist.Ythan.S1.NDr.sort[875000], predict.dist.Ythan.S1.NDr.sort[950000], predict.dist.Ythan.S1.NDr.sort[975000])
predict.dist.Ythan.S10.NDr.percentiles <- rbind(predict.dist.Ythan.S10.NDr.sort[25000], predict.dist.Ythan.S10.NDr.sort[50000], predict.dist.Ythan.S10.NDr.sort[125000], predict.dist.Ythan.S10.NDr.sort[160000], predict.dist.Ythan.S10.NDr.sort[840000], predict.dist.Ythan.S10.NDr.sort[875000], predict.dist.Ythan.S10.NDr.sort[950000], predict.dist.Ythan.S10.NDr.sort[975000])
predict.dist.Ythan.S25.NDr.percentiles <- rbind(predict.dist.Ythan.S25.NDr.sort[25000], predict.dist.Ythan.S25.NDr.sort[50000], predict.dist.Ythan.S25.NDr.sort[125000], predict.dist.Ythan.S25.NDr.sort[160000], predict.dist.Ythan.S25.NDr.sort[840000], predict.dist.Ythan.S25.NDr.sort[875000], predict.dist.Ythan.S25.NDr.sort[950000], predict.dist.Ythan.S25.NDr.sort[975000])
predict.dist.Ythan.S50.NDr.percentiles <- rbind(predict.dist.Ythan.S50.NDr.sort[25000], predict.dist.Ythan.S50.NDr.sort[50000], predict.dist.Ythan.S50.NDr.sort[125000], predict.dist.Ythan.S50.NDr.sort[160000], predict.dist.Ythan.S50.NDr.sort[840000], predict.dist.Ythan.S50.NDr.sort[875000], predict.dist.Ythan.S50.NDr.sort[950000], predict.dist.Ythan.S50.NDr.sort[975000])
predict.dist.Ythan.S75.NDr.percentiles <- rbind(predict.dist.Ythan.S75.NDr.sort[25000], predict.dist.Ythan.S75.NDr.sort[50000], predict.dist.Ythan.S75.NDr.sort[125000], predict.dist.Ythan.S75.NDr.sort[160000], predict.dist.Ythan.S75.NDr.sort[840000], predict.dist.Ythan.S75.NDr.sort[875000], predict.dist.Ythan.S75.NDr.sort[950000], predict.dist.Ythan.S75.NDr.sort[975000])

predict.dist.Eco.S1.NDr.percentiles <- rbind(predict.dist.Eco.S1.NDr.sort[25000], predict.dist.Eco.S1.NDr.sort[50000], predict.dist.Eco.S1.NDr.sort[125000], predict.dist.Eco.S1.NDr.sort[160000], predict.dist.Eco.S1.NDr.sort[840000], predict.dist.Eco.S1.NDr.sort[875000], predict.dist.Eco.S1.NDr.sort[950000], predict.dist.Eco.S1.NDr.sort[975000])
predict.dist.Eco.S10.NDr.percentiles <- rbind(predict.dist.Eco.S10.NDr.sort[25000], predict.dist.Eco.S10.NDr.sort[50000], predict.dist.Eco.S10.NDr.sort[125000], predict.dist.Eco.S10.NDr.sort[160000], predict.dist.Eco.S10.NDr.sort[840000], predict.dist.Eco.S10.NDr.sort[875000], predict.dist.Eco.S10.NDr.sort[950000], predict.dist.Eco.S10.NDr.sort[975000])
predict.dist.Eco.S25.NDr.percentiles <- rbind(predict.dist.Eco.S25.NDr.sort[25000], predict.dist.Eco.S25.NDr.sort[50000], predict.dist.Eco.S25.NDr.sort[125000], predict.dist.Eco.S25.NDr.sort[160000], predict.dist.Eco.S25.NDr.sort[840000], predict.dist.Eco.S25.NDr.sort[875000], predict.dist.Eco.S25.NDr.sort[950000], predict.dist.Eco.S25.NDr.sort[975000])
predict.dist.Eco.S50.NDr.percentiles <- rbind(predict.dist.Eco.S50.NDr.sort[25000], predict.dist.Eco.S50.NDr.sort[50000], predict.dist.Eco.S50.NDr.sort[125000], predict.dist.Eco.S50.NDr.sort[160000], predict.dist.Eco.S50.NDr.sort[840000], predict.dist.Eco.S50.NDr.sort[875000], predict.dist.Eco.S50.NDr.sort[950000], predict.dist.Eco.S50.NDr.sort[975000])
predict.dist.Eco.S75.NDr.percentiles <- rbind(predict.dist.Eco.S75.NDr.sort[25000], predict.dist.Eco.S75.NDr.sort[50000], predict.dist.Eco.S75.NDr.sort[125000], predict.dist.Eco.S75.NDr.sort[160000], predict.dist.Eco.S75.NDr.sort[840000], predict.dist.Eco.S75.NDr.sort[875000], predict.dist.Eco.S75.NDr.sort[950000], predict.dist.Eco.S75.NDr.sort[975000])

predict.dist.Terr.S1.NDr.percentiles <- rbind(predict.dist.Terr.S1.NDr.sort[25000], predict.dist.Terr.S1.NDr.sort[50000], predict.dist.Terr.S1.NDr.sort[125000], predict.dist.Terr.S1.NDr.sort[160000], predict.dist.Terr.S1.NDr.sort[840000], predict.dist.Terr.S1.NDr.sort[875000], predict.dist.Terr.S1.NDr.sort[950000], predict.dist.Terr.S1.NDr.sort[975000])
predict.dist.Terr.S10.NDr.percentiles <- rbind(predict.dist.Terr.S10.NDr.sort[25000], predict.dist.Terr.S10.NDr.sort[50000], predict.dist.Terr.S10.NDr.sort[125000], predict.dist.Terr.S10.NDr.sort[160000], predict.dist.Terr.S10.NDr.sort[840000], predict.dist.Terr.S10.NDr.sort[875000], predict.dist.Terr.S10.NDr.sort[950000], predict.dist.Terr.S10.NDr.sort[975000])
predict.dist.Terr.S25.NDr.percentiles <- rbind(predict.dist.Terr.S25.NDr.sort[25000], predict.dist.Terr.S25.NDr.sort[50000], predict.dist.Terr.S25.NDr.sort[125000], predict.dist.Terr.S25.NDr.sort[160000], predict.dist.Terr.S25.NDr.sort[840000], predict.dist.Terr.S25.NDr.sort[875000], predict.dist.Terr.S25.NDr.sort[950000], predict.dist.Terr.S25.NDr.sort[975000])
predict.dist.Terr.S50.NDr.percentiles <- rbind(predict.dist.Terr.S50.NDr.sort[25000], predict.dist.Terr.S50.NDr.sort[50000], predict.dist.Terr.S50.NDr.sort[125000], predict.dist.Terr.S50.NDr.sort[160000], predict.dist.Terr.S50.NDr.sort[840000], predict.dist.Terr.S50.NDr.sort[875000], predict.dist.Terr.S50.NDr.sort[950000], predict.dist.Terr.S50.NDr.sort[975000])
predict.dist.Terr.S75.NDr.percentiles <- rbind(predict.dist.Terr.S75.NDr.sort[25000], predict.dist.Terr.S75.NDr.sort[50000], predict.dist.Terr.S75.NDr.sort[125000], predict.dist.Terr.S75.NDr.sort[160000], predict.dist.Terr.S75.NDr.sort[840000], predict.dist.Terr.S75.NDr.sort[875000], predict.dist.Terr.S75.NDr.sort[950000], predict.dist.Terr.S75.NDr.sort[975000])

predict.dist.NDr.percentiles <- cbind(predict.dist.Ythan.S1.NDr.percentiles, predict.dist.Ythan.S10.NDr.percentiles, predict.dist.Ythan.S25.NDr.percentiles, predict.dist.Ythan.S50.NDr.percentiles, predict.dist.Ythan.S75.NDr.percentiles, predict.dist.Eco.S1.NDr.percentiles, predict.dist.Eco.S10.NDr.percentiles, predict.dist.Eco.S25.NDr.percentiles, predict.dist.Eco.S50.NDr.percentiles, predict.dist.Eco.S75.NDr.percentiles, predict.dist.Terr.S1.NDr.percentiles, predict.dist.Terr.S10.NDr.percentiles, predict.dist.Terr.S25.NDr.percentiles, predict.dist.Terr.S50.NDr.percentiles, predict.dist.Terr.S75.NDr.percentiles)

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

colnames(predict.dist.NDr.percentiles) <- c('Ythan_S1', 'Ythan_S10', 'Ythan_S25', 'Ythan_S50', 'Ythan_S75', 'Eco_S1', 'Eco_S10', 'Eco_S25', 'Eco_S50', 'Eco_S75', 'Terr_S1', 'Terr_S10', 'Terr_S25', 'Terr_S50', 'Terr_S75')
rownames(predict.dist.NDr.percentiles) <- c('0.025', '0.05', '0.125', '0.16', '0.84', '0.875', '0.95', '0.975')
write.table(predict.dist.NDr.percentiles, 'predictDist_NDr_percentiles_V2.txt')

predict.dist.NDr <- rbind(predict.dist.Ythan.S1.NDr, predict.dist.Ythan.S10.NDr, predict.dist.Ythan.S25.NDr, predict.dist.Ythan.S50.NDr, predict.dist.Ythan.S75.NDr, predict.dist.Eco.S1.NDr, predict.dist.Eco.S10.NDr, predict.dist.Eco.S25.NDr, predict.dist.Eco.S50.NDr, predict.dist.Eco.S75.NDr, predict.dist.Terr.S1.NDr, predict.dist.Terr.S10.NDr, predict.dist.Terr.S25.NDr, predict.dist.Terr.S50.NDr, predict.dist.Terr.S75.NDr)

rownames(predict.dist.NDr) <- c('Ythan_S1', 'Ythan_S10', 'Ythan_S25', 'Ythan_S50', 'Ythan_S75', 'Eco_S1', 'Eco_S10', 'Eco_S25', 'Eco_S50', 'Eco_S75', 'Terr_S10', 'Terr_S1', 'Terr_S25', 'Terr_S50', 'Terr_S75')
write.table(predict.dist.NDr, 'predictDist_NDr_V2.txt')