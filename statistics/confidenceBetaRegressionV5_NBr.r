library(betareg)

###############################
# Load data

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')
load('networksModels_NBr.rdata')

Ythan.red.S1.NBr <- t(as.matrix(c(1, Ythan.red.S1.NBr)))
Ythan.red.S10.NBr <- t(as.matrix(c(1, Ythan.red.S10.NBr)))
Ythan.red.S25.NBr <- t(as.matrix(c(1, Ythan.red.S25.NBr)))
Ythan.red.S50.NBr <- t(as.matrix(c(1, Ythan.red.S50.NBr)))
Ythan.red.S75.NBr <- t(as.matrix(c(1, Ythan.red.S75.NBr)))

Eco.red.S1.NBr <- t(as.matrix(c(1, Eco.red.S1.NBr)))
Eco.red.S10.NBr <- t(as.matrix(c(1, Eco.red.S10.NBr)))
Eco.red.S25.NBr <- t(as.matrix(c(1, Eco.red.S25.NBr)))
Eco.red.S50.NBr <- t(as.matrix(c(1, Eco.red.S50.NBr)))
Eco.red.S75.NBr <- t(as.matrix(c(1, Eco.red.S75.NBr)))

Terr.red.S1.NBr <- t(as.matrix(c(1, Terr.red.S1.NBr)))
Terr.red.S10.NBr <- t(as.matrix(c(1, Terr.red.S10.NBr)))
Terr.red.S25.NBr <- t(as.matrix(c(1, Terr.red.S25.NBr)))
Terr.red.S50.NBr <- t(as.matrix(c(1, Terr.red.S50.NBr)))
Terr.red.S75.NBr <- t(as.matrix(c(1, Terr.red.S75.NBr)))

###############################

coef.betareg.S1.NBr <- summary(model.betareg.S1.NBr)$coefficients$mean[,1]
coef.betareg.S10.NBr <- summary(model.betareg.S10.NBr)$coefficients$mean[,1]
coef.betareg.S25.NBr <- summary(model.betareg.S25.NBr)$coefficients$mean[,1]
coef.betareg.S50.NBr <- summary(model.betareg.S50.NBr)$coefficients$mean[,1]
coef.betareg.S75.NBr <- summary(model.betareg.S75.NBr)$coefficients$mean[,1]

coef.betareg.S1.NBr <- as.matrix(coef.betareg.S1.NBr)
coef.betareg.S10.NBr <- as.matrix(coef.betareg.S10.NBr)
coef.betareg.S25.NBr <- as.matrix(coef.betareg.S25.NBr)
coef.betareg.S50.NBr <- as.matrix(coef.betareg.S50.NBr)
coef.betareg.S75.NBr <- as.matrix(coef.betareg.S75.NBr)

se.coef.betareg.S1.NBr <- summary(model.betareg.S1.NBr)$coefficients$mean[,2]
se.coef.betareg.S10.NBr <- summary(model.betareg.S10.NBr)$coefficients$mean[,2]
se.coef.betareg.S25.NBr <- summary(model.betareg.S25.NBr)$coefficients$mean[,2]
se.coef.betareg.S50.NBr <- summary(model.betareg.S50.NBr)$coefficients$mean[,2]
se.coef.betareg.S75.NBr <- summary(model.betareg.S75.NBr)$coefficients$mean[,2]

se.coef.betareg.S1.NBr <- as.matrix(se.coef.betareg.S1.NBr )
se.coef.betareg.S10.NBr <- as.matrix(se.coef.betareg.S10.NBr )
se.coef.betareg.S25.NBr <- as.matrix(se.coef.betareg.S25.NBr )
se.coef.betareg.S50.NBr <- as.matrix(se.coef.betareg.S50.NBr )
se.coef.betareg.S75.NBr <- as.matrix(se.coef.betareg.S75.NBr )

numCoef.betareg.S1.NBr <- dim(coef.betareg.S1.NBr)[1]
numCoef.betareg.S10.NBr <- dim(coef.betareg.S10.NBr)[1]
numCoef.betareg.S25.NBr <- dim(coef.betareg.S25.NBr)[1]
numCoef.betareg.S50.NBr <- dim(coef.betareg.S50.NBr)[1]
numCoef.betareg.S75.NBr <- dim(coef.betareg.S75.NBr)[1]

rand.coef.betareg.S1.NBr <- matrix(0,numCoef.betareg.S1.NBr,100)
rand.coef.betareg.S10.NBr <- matrix(0,numCoef.betareg.S10.NBr,100)
rand.coef.betareg.S25.NBr <- matrix(0,numCoef.betareg.S25.NBr,100)
rand.coef.betareg.S50.NBr <- matrix(0,numCoef.betareg.S50.NBr,100)
rand.coef.betareg.S75.NBr <- matrix(0,numCoef.betareg.S75.NBr,100)

###############################
# Generate random Betas

for (i in 1:numCoef.betareg.S1.NBr) {
  for (j in 1:100) {
    rand.coef.betareg.S1.NBr[i,j] <- rnorm(1,coef.betareg.S1.NBr[i],(se.coef.betareg.S1.NBr[i])^2)
  }
}

for (i in 1:numCoef.betareg.S10.NBr) {
  for (j in 1:100) {
    rand.coef.betareg.S10.NBr[i,j] <- rnorm(1,coef.betareg.S10.NBr[i],(se.coef.betareg.S10.NBr[i])^2)
  }
}

for (i in 1:numCoef.betareg.S25.NBr) {
  for (j in 1:100) {
    rand.coef.betareg.S25.NBr[i,j] <- rnorm(1,coef.betareg.S25.NBr[i],(se.coef.betareg.S25.NBr[i])^2)
  }
}

for (i in 1:numCoef.betareg.S50.NBr) {
  for (j in 1:100) {
    rand.coef.betareg.S50.NBr[i,j] <- rnorm(1,coef.betareg.S50.NBr[i],(se.coef.betareg.S50.NBr[i])^2)
  }
}

for (i in 1:numCoef.betareg.S75.NBr) {
  for (j in 1:100) {
    rand.coef.betareg.S75.NBr[i,j] <- rnorm(1,coef.betareg.S75.NBr[i],(se.coef.betareg.S75.NBr[i])^2)
  }
}
###############################
# Calculate g(mu)


xB.Ythan.S1.NBr.rand <- Ythan.red.S1.NBr %*% rand.coef.betareg.S1.NBr
xB.Ythan.S10.NBr.rand <- Ythan.red.S10.NBr %*% rand.coef.betareg.S10.NBr
xB.Ythan.S25.NBr.rand <- Ythan.red.S25.NBr %*% rand.coef.betareg.S25.NBr
xB.Ythan.S50.NBr.rand <- Ythan.red.S50.NBr %*% rand.coef.betareg.S50.NBr
xB.Ythan.S75.NBr.rand <- Ythan.red.S75.NBr %*% rand.coef.betareg.S75.NBr

mu.Ythan.S1.NBr <- (exp(xB.Ythan.S1.NBr.rand))/(1 + (exp(xB.Ythan.S1.NBr.rand)))
mu.Ythan.S10.NBr <- (exp(xB.Ythan.S10.NBr.rand))/(1 + (exp(xB.Ythan.S10.NBr.rand)))
mu.Ythan.S25.NBr <- (exp(xB.Ythan.S25.NBr.rand))/(1 + (exp(xB.Ythan.S25.NBr.rand)))
mu.Ythan.S50.NBr <- (exp(xB.Ythan.S50.NBr.rand))/(1 + (exp(xB.Ythan.S50.NBr.rand)))
mu.Ythan.S75.NBr <- (exp(xB.Ythan.S75.NBr.rand))/(1 + (exp(xB.Ythan.S75.NBr.rand)))

xB.Eco.S1.NBr.rand <- Eco.red.S1.NBr %*% rand.coef.betareg.S1.NBr
xB.Eco.S10.NBr.rand <- Eco.red.S10.NBr %*% rand.coef.betareg.S10.NBr
xB.Eco.S25.NBr.rand <- Eco.red.S25.NBr %*% rand.coef.betareg.S25.NBr
xB.Eco.S50.NBr.rand <- Eco.red.S50.NBr %*% rand.coef.betareg.S50.NBr
xB.Eco.S75.NBr.rand <- Eco.red.S75.NBr %*% rand.coef.betareg.S75.NBr

mu.Eco.S1.NBr <- (exp(xB.Eco.S1.NBr.rand))/(1 + (exp(xB.Eco.S1.NBr.rand)))
mu.Eco.S10.NBr <- (exp(xB.Eco.S10.NBr.rand))/(1 + (exp(xB.Eco.S10.NBr.rand)))
mu.Eco.S25.NBr <- (exp(xB.Eco.S25.NBr.rand))/(1 + (exp(xB.Eco.S25.NBr.rand)))
mu.Eco.S50.NBr <- (exp(xB.Eco.S50.NBr.rand))/(1 + (exp(xB.Eco.S50.NBr.rand)))
mu.Eco.S75.NBr <- (exp(xB.Eco.S75.NBr.rand))/(1 + (exp(xB.Eco.S75.NBr.rand)))

xB.Terr.S1.NBr.rand <- Terr.red.S1.NBr %*% rand.coef.betareg.S1.NBr
xB.Terr.S10.NBr.rand <- Terr.red.S10.NBr %*% rand.coef.betareg.S10.NBr
xB.Terr.S25.NBr.rand <- Terr.red.S25.NBr %*% rand.coef.betareg.S25.NBr
xB.Terr.S50.NBr.rand <- Terr.red.S50.NBr %*% rand.coef.betareg.S50.NBr
xB.Terr.S75.NBr.rand <- Terr.red.S75.NBr %*% rand.coef.betareg.S75.NBr

mu.Terr.S1.NBr <- (exp(xB.Terr.S1.NBr.rand))/(1 + (exp(xB.Terr.S1.NBr.rand)))
mu.Terr.S10.NBr <- (exp(xB.Terr.S10.NBr.rand))/(1 + (exp(xB.Terr.S10.NBr.rand)))
mu.Terr.S25.NBr <- (exp(xB.Terr.S25.NBr.rand))/(1 + (exp(xB.Terr.S25.NBr.rand)))
mu.Terr.S50.NBr <- (exp(xB.Terr.S50.NBr.rand))/(1 + (exp(xB.Terr.S50.NBr.rand)))
mu.Terr.S75.NBr <- (exp(xB.Terr.S75.NBr.rand))/(1 + (exp(xB.Terr.S75.NBr.rand)))

###############################
# Sample phi

phi.S1.NBr <- summary(model.betareg.S1.NBr)$coefficients$precision[,1]
phi.S10.NBr <- summary(model.betareg.S10.NBr)$coefficients$precision[,1]
phi.S25.NBr <- summary(model.betareg.S25.NBr)$coefficients$precision[,1]
phi.S50.NBr <- summary(model.betareg.S50.NBr)$coefficients$precision[,1]
phi.S75.NBr <- summary(model.betareg.S75.NBr)$coefficients$precision[,1]

phi.S1.NBr <- as.matrix(phi.S1.NBr)
phi.S10.NBr <- as.matrix(phi.S10.NBr)
phi.S25.NBr <- as.matrix(phi.S25.NBr)
phi.S50.NBr <- as.matrix(phi.S50.NBr)
phi.S75.NBr <- as.matrix(phi.S75.NBr)

se.phi.S1.NBr <- summary(model.betareg.S1.NBr)$coefficients$precision[,2]
se.phi.S10.NBr <- summary(model.betareg.S10.NBr)$coefficients$precision[,2]
se.phi.S25.NBr <- summary(model.betareg.S25.NBr)$coefficients$precision[,2]
se.phi.S50.NBr <- summary(model.betareg.S50.NBr)$coefficients$precision[,2]
se.phi.S75.NBr <- summary(model.betareg.S75.NBr)$coefficients$precision[,2]

se.phi.S1.NBr <- as.matrix(se.phi.S1.NBr)
se.phi.S10.NBr <- as.matrix(se.phi.S10.NBr)
se.phi.S25.NBr <- as.matrix(se.phi.S25.NBr)
se.phi.S50.NBr <- as.matrix(se.phi.S50.NBr)
se.phi.S75.NBr <- as.matrix(se.phi.S75.NBr)

rand.phi.S1.NBr <- matrix(0,1,100)
rand.phi.S10.NBr <- matrix(0,1,100)
rand.phi.S25.NBr <- matrix(0,1,100)
rand.phi.S50.NBr <- matrix(0,1,100)
rand.phi.S75.NBr <- matrix(0,1,100)

for (j in 1:100) {
  rand.phi.S1.NBr[1,j] <- rnorm(1,phi.S1.NBr,(se.phi.S1.NBr)^2)
}

for (j in 1:100) {
  rand.phi.S10.NBr[1,j] <- rnorm(1,phi.S10.NBr,(se.phi.S10.NBr)^2)
}

for (j in 1:100) {
  rand.phi.S25.NBr[1,j] <- rnorm(1,phi.S25.NBr,(se.phi.S25.NBr)^2)
}

for (j in 1:100) {
  rand.phi.S50.NBr[1,j] <- rnorm(1,phi.S50.NBr,(se.phi.S50.NBr)^2)
}

for (j in 1:100) {
  rand.phi.S75.NBr[1,j] <- rnorm(1,phi.S75.NBr,(se.phi.S75.NBr)^2)
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

predict.dist.Ythan.S1.NBr <- matrix(0,1,1000000)
predict.dist.Ythan.S10.NBr <- matrix(0,1,1000000)
predict.dist.Ythan.S25.NBr <- matrix(0,1,1000000)
predict.dist.Ythan.S50.NBr <- matrix(0,1,1000000)
predict.dist.Ythan.S75.NBr <- matrix(0,1,1000000)

predict.dist.Eco.S1.NBr <- matrix(0,1,1000000)
predict.dist.Eco.S10.NBr <- matrix(0,1,1000000)
predict.dist.Eco.S25.NBr <- matrix(0,1,1000000)
predict.dist.Eco.S50.NBr <- matrix(0,1,1000000)
predict.dist.Eco.S75.NBr <- matrix(0,1,1000000)

predict.dist.Terr.S1.NBr <- matrix(0,1,1000000)
predict.dist.Terr.S10.NBr <- matrix(0,1,1000000)
predict.dist.Terr.S25.NBr <- matrix(0,1,1000000)
predict.dist.Terr.S50.NBr <- matrix(0,1,1000000)
predict.dist.Terr.S75.NBr <- matrix(0,1,1000000)



t <- 1
for (i in 1:100){			# mu samples	
  for (j in 1:100){			# phi samples
    for (k in 1:100){		   	# y samples

      predict.dist.Ythan.S1.NBr[t] <- y.betaDistSample(mu.Ythan.S1.NBr[1,i],rand.phi.S1.NBr[j])
      predict.dist.Ythan.S10.NBr[t] <- y.betaDistSample(mu.Ythan.S10.NBr[1,i],rand.phi.S10.NBr[j])
      predict.dist.Ythan.S25.NBr[t] <- y.betaDistSample(mu.Ythan.S25.NBr[1,i],rand.phi.S25.NBr[j])
      predict.dist.Ythan.S50.NBr[t] <- y.betaDistSample(mu.Ythan.S50.NBr[1,i],rand.phi.S50.NBr[j])
      predict.dist.Ythan.S75.NBr[t] <- y.betaDistSample(mu.Ythan.S75.NBr[1,i],rand.phi.S75.NBr[j])

      predict.dist.Eco.S1.NBr[t] <- y.betaDistSample(mu.Eco.S1.NBr[1,i],rand.phi.S1.NBr[j])
      predict.dist.Eco.S10.NBr[t] <- y.betaDistSample(mu.Eco.S10.NBr[1,i],rand.phi.S10.NBr[j])
      predict.dist.Eco.S25.NBr[t] <- y.betaDistSample(mu.Eco.S25.NBr[1,i],rand.phi.S25.NBr[j])
      predict.dist.Eco.S50.NBr[t] <- y.betaDistSample(mu.Eco.S50.NBr[1,i],rand.phi.S50.NBr[j])
      predict.dist.Eco.S75.NBr[t] <- y.betaDistSample(mu.Eco.S75.NBr[1,i],rand.phi.S75.NBr[j])

      predict.dist.Terr.S1.NBr[t] <- y.betaDistSample(mu.Terr.S1.NBr[1,i],rand.phi.S1.NBr[j])
      predict.dist.Terr.S10.NBr[t] <- y.betaDistSample(mu.Terr.S10.NBr[1,i],rand.phi.S10.NBr[j])
      predict.dist.Terr.S25.NBr[t] <- y.betaDistSample(mu.Terr.S25.NBr[1,i],rand.phi.S25.NBr[j])
      predict.dist.Terr.S50.NBr[t] <- y.betaDistSample(mu.Terr.S50.NBr[1,i],rand.phi.S50.NBr[j])
      predict.dist.Terr.S75.NBr[t] <- y.betaDistSample(mu.Terr.S75.NBr[1,i],rand.phi.S75.NBr[j])

      t <- t + 1
    }
  }
}


predict.dist.Ythan.S1.NBr.sort <- sort(predict.dist.Ythan.S1.NBr)
predict.dist.Ythan.S10.NBr.sort <- sort(predict.dist.Ythan.S10.NBr)
predict.dist.Ythan.S25.NBr.sort <- sort(predict.dist.Ythan.S25.NBr)
predict.dist.Ythan.S50.NBr.sort <- sort(predict.dist.Ythan.S50.NBr)
predict.dist.Ythan.S75.NBr.sort <- sort(predict.dist.Ythan.S75.NBr)

predict.dist.Eco.S1.NBr.sort <- sort(predict.dist.Eco.S1.NBr)
predict.dist.Eco.S10.NBr.sort <- sort(predict.dist.Eco.S10.NBr)
predict.dist.Eco.S25.NBr.sort <- sort(predict.dist.Eco.S25.NBr)
predict.dist.Eco.S50.NBr.sort <- sort(predict.dist.Eco.S50.NBr)
predict.dist.Eco.S75.NBr.sort <- sort(predict.dist.Eco.S75.NBr)

predict.dist.Terr.S1.NBr.sort <- sort(predict.dist.Terr.S1.NBr)
predict.dist.Terr.S10.NBr.sort <- sort(predict.dist.Terr.S10.NBr)
predict.dist.Terr.S25.NBr.sort <- sort(predict.dist.Terr.S25.NBr)
predict.dist.Terr.S50.NBr.sort <- sort(predict.dist.Terr.S50.NBr)
predict.dist.Terr.S75.NBr.sort <- sort(predict.dist.Terr.S75.NBr)

predict.dist.Ythan.S1.NBr.percentiles <- rbind(predict.dist.Ythan.S1.NBr.sort[25000], predict.dist.Ythan.S1.NBr.sort[50000], predict.dist.Ythan.S1.NBr.sort[125000], predict.dist.Ythan.S1.NBr.sort[160000], predict.dist.Ythan.S1.NBr.sort[840000], predict.dist.Ythan.S1.NBr.sort[875000], predict.dist.Ythan.S1.NBr.sort[950000], predict.dist.Ythan.S1.NBr.sort[975000])
predict.dist.Ythan.S10.NBr.percentiles <- rbind(predict.dist.Ythan.S10.NBr.sort[25000], predict.dist.Ythan.S10.NBr.sort[50000], predict.dist.Ythan.S10.NBr.sort[125000], predict.dist.Ythan.S10.NBr.sort[160000], predict.dist.Ythan.S10.NBr.sort[840000], predict.dist.Ythan.S10.NBr.sort[875000], predict.dist.Ythan.S10.NBr.sort[950000], predict.dist.Ythan.S10.NBr.sort[975000])
predict.dist.Ythan.S25.NBr.percentiles <- rbind(predict.dist.Ythan.S25.NBr.sort[25000], predict.dist.Ythan.S25.NBr.sort[50000], predict.dist.Ythan.S25.NBr.sort[125000], predict.dist.Ythan.S25.NBr.sort[160000], predict.dist.Ythan.S25.NBr.sort[840000], predict.dist.Ythan.S25.NBr.sort[875000], predict.dist.Ythan.S25.NBr.sort[950000], predict.dist.Ythan.S25.NBr.sort[975000])
predict.dist.Ythan.S50.NBr.percentiles <- rbind(predict.dist.Ythan.S50.NBr.sort[25000], predict.dist.Ythan.S50.NBr.sort[50000], predict.dist.Ythan.S50.NBr.sort[125000], predict.dist.Ythan.S50.NBr.sort[160000], predict.dist.Ythan.S50.NBr.sort[840000], predict.dist.Ythan.S50.NBr.sort[875000], predict.dist.Ythan.S50.NBr.sort[950000], predict.dist.Ythan.S50.NBr.sort[975000])
predict.dist.Ythan.S75.NBr.percentiles <- rbind(predict.dist.Ythan.S75.NBr.sort[25000], predict.dist.Ythan.S75.NBr.sort[50000], predict.dist.Ythan.S75.NBr.sort[125000], predict.dist.Ythan.S75.NBr.sort[160000], predict.dist.Ythan.S75.NBr.sort[840000], predict.dist.Ythan.S75.NBr.sort[875000], predict.dist.Ythan.S75.NBr.sort[950000], predict.dist.Ythan.S75.NBr.sort[975000])

predict.dist.Eco.S1.NBr.percentiles <- rbind(predict.dist.Eco.S1.NBr.sort[25000], predict.dist.Eco.S1.NBr.sort[50000], predict.dist.Eco.S1.NBr.sort[125000], predict.dist.Eco.S1.NBr.sort[160000], predict.dist.Eco.S1.NBr.sort[840000], predict.dist.Eco.S1.NBr.sort[875000], predict.dist.Eco.S1.NBr.sort[950000], predict.dist.Eco.S1.NBr.sort[975000])
predict.dist.Eco.S10.NBr.percentiles <- rbind(predict.dist.Eco.S10.NBr.sort[25000], predict.dist.Eco.S10.NBr.sort[50000], predict.dist.Eco.S10.NBr.sort[125000], predict.dist.Eco.S10.NBr.sort[160000], predict.dist.Eco.S10.NBr.sort[840000], predict.dist.Eco.S10.NBr.sort[875000], predict.dist.Eco.S10.NBr.sort[950000], predict.dist.Eco.S10.NBr.sort[975000])
predict.dist.Eco.S25.NBr.percentiles <- rbind(predict.dist.Eco.S25.NBr.sort[25000], predict.dist.Eco.S25.NBr.sort[50000], predict.dist.Eco.S25.NBr.sort[125000], predict.dist.Eco.S25.NBr.sort[160000], predict.dist.Eco.S25.NBr.sort[840000], predict.dist.Eco.S25.NBr.sort[875000], predict.dist.Eco.S25.NBr.sort[950000], predict.dist.Eco.S25.NBr.sort[975000])
predict.dist.Eco.S50.NBr.percentiles <- rbind(predict.dist.Eco.S50.NBr.sort[25000], predict.dist.Eco.S50.NBr.sort[50000], predict.dist.Eco.S50.NBr.sort[125000], predict.dist.Eco.S50.NBr.sort[160000], predict.dist.Eco.S50.NBr.sort[840000], predict.dist.Eco.S50.NBr.sort[875000], predict.dist.Eco.S50.NBr.sort[950000], predict.dist.Eco.S50.NBr.sort[975000])
predict.dist.Eco.S75.NBr.percentiles <- rbind(predict.dist.Eco.S75.NBr.sort[25000], predict.dist.Eco.S75.NBr.sort[50000], predict.dist.Eco.S75.NBr.sort[125000], predict.dist.Eco.S75.NBr.sort[160000], predict.dist.Eco.S75.NBr.sort[840000], predict.dist.Eco.S75.NBr.sort[875000], predict.dist.Eco.S75.NBr.sort[950000], predict.dist.Eco.S75.NBr.sort[975000])

predict.dist.Terr.S1.NBr.percentiles <- rbind(predict.dist.Terr.S1.NBr.sort[25000], predict.dist.Terr.S1.NBr.sort[50000], predict.dist.Terr.S1.NBr.sort[125000], predict.dist.Terr.S1.NBr.sort[160000], predict.dist.Terr.S1.NBr.sort[840000], predict.dist.Terr.S1.NBr.sort[875000], predict.dist.Terr.S1.NBr.sort[950000], predict.dist.Terr.S1.NBr.sort[975000])
predict.dist.Terr.S10.NBr.percentiles <- rbind(predict.dist.Terr.S10.NBr.sort[25000], predict.dist.Terr.S10.NBr.sort[50000], predict.dist.Terr.S10.NBr.sort[125000], predict.dist.Terr.S10.NBr.sort[160000], predict.dist.Terr.S10.NBr.sort[840000], predict.dist.Terr.S10.NBr.sort[875000], predict.dist.Terr.S10.NBr.sort[950000], predict.dist.Terr.S10.NBr.sort[975000])
predict.dist.Terr.S25.NBr.percentiles <- rbind(predict.dist.Terr.S25.NBr.sort[25000], predict.dist.Terr.S25.NBr.sort[50000], predict.dist.Terr.S25.NBr.sort[125000], predict.dist.Terr.S25.NBr.sort[160000], predict.dist.Terr.S25.NBr.sort[840000], predict.dist.Terr.S25.NBr.sort[875000], predict.dist.Terr.S25.NBr.sort[950000], predict.dist.Terr.S25.NBr.sort[975000])
predict.dist.Terr.S50.NBr.percentiles <- rbind(predict.dist.Terr.S50.NBr.sort[25000], predict.dist.Terr.S50.NBr.sort[50000], predict.dist.Terr.S50.NBr.sort[125000], predict.dist.Terr.S50.NBr.sort[160000], predict.dist.Terr.S50.NBr.sort[840000], predict.dist.Terr.S50.NBr.sort[875000], predict.dist.Terr.S50.NBr.sort[950000], predict.dist.Terr.S50.NBr.sort[975000])
predict.dist.Terr.S75.NBr.percentiles <- rbind(predict.dist.Terr.S75.NBr.sort[25000], predict.dist.Terr.S75.NBr.sort[50000], predict.dist.Terr.S75.NBr.sort[125000], predict.dist.Terr.S75.NBr.sort[160000], predict.dist.Terr.S75.NBr.sort[840000], predict.dist.Terr.S75.NBr.sort[875000], predict.dist.Terr.S75.NBr.sort[950000], predict.dist.Terr.S75.NBr.sort[975000])

predict.dist.NBr.percentiles <- cbind(predict.dist.Ythan.S1.NBr.percentiles, predict.dist.Ythan.S10.NBr.percentiles, predict.dist.Ythan.S25.NBr.percentiles, predict.dist.Ythan.S50.NBr.percentiles, predict.dist.Ythan.S75.NBr.percentiles, predict.dist.Eco.S1.NBr.percentiles, predict.dist.Eco.S10.NBr.percentiles, predict.dist.Eco.S25.NBr.percentiles, predict.dist.Eco.S50.NBr.percentiles, predict.dist.Eco.S75.NBr.percentiles, predict.dist.Terr.S1.NBr.percentiles, predict.dist.Terr.S10.NBr.percentiles, predict.dist.Terr.S25.NBr.percentiles, predict.dist.Terr.S50.NBr.percentiles, predict.dist.Terr.S75.NBr.percentiles)

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

colnames(predict.dist.NBr.percentiles) <- c('Ythan_S1', 'Ythan_S10', 'Ythan_S25', 'Ythan_S50', 'Ythan_S75', 'Eco_S1', 'Eco_S10', 'Eco_S25', 'Eco_S50', 'Eco_S75', 'Terr_S1', 'Terr_S10', 'Terr_S25', 'Terr_S50', 'Terr_S75')
rownames(predict.dist.NBr.percentiles) <- c('0.025', '0.05', '0.125', '0.16', '0.84', '0.875', '0.95', '0.975')
write.table(predict.dist.NBr.percentiles, 'predictDist_NBr_percentiles.txt')

predict.dist.NBr <- rbind(predict.dist.Ythan.S1.NBr, predict.dist.Ythan.S10.NBr, predict.dist.Ythan.S25.NBr, predict.dist.Ythan.S50.NBr, predict.dist.Ythan.S75.NBr, predict.dist.Eco.S1.NBr, predict.dist.Eco.S10.NBr, predict.dist.Eco.S25.NBr, predict.dist.Eco.S50.NBr, predict.dist.Eco.S75.NBr, predict.dist.Terr.S1.NBr, predict.dist.Terr.S10.NBr, predict.dist.Terr.S25.NBr, predict.dist.Terr.S50.NBr, predict.dist.Terr.S75.NBr)

rownames(predict.dist.NBr) <- c('Ythan_S1', 'Ythan_S10', 'Ythan_S25', 'Ythan_S50', 'Ythan_S75', 'Eco_S1', 'Eco_S10', 'Eco_S25', 'Eco_S50', 'Eco_S75', 'Terr_S10', 'Terr_S1', 'Terr_S25', 'Terr_S50', 'Terr_S75')
write.table(predict.dist.NBr, 'predictDist_NBr.txt')