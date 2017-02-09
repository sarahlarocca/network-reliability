library(betareg)

###############################
# Load data

setwd('/media/Files/JHU/Infrastructure/networks2012/statistics/results')
load('networksModelsNormalv6_NR.rdata')

IEEE118.red.S10.NR <- t(as.matrix(c(1, IEEE118.red.S10.NR)))
IEEE118.red.S25.NR <- t(as.matrix(c(1, IEEE118.red.S25.NR)))
IEEE118.red.S50.NR <- t(as.matrix(c(1, IEEE118.red.S50.NR)))
IEEE118.red.S75.NR <- t(as.matrix(c(1, IEEE118.red.S75.NR)))

IEEE300.red.S10.NR <- t(as.matrix(c(1, IEEE300.red.S10.NR)))
IEEE300.red.S25.NR <- t(as.matrix(c(1, IEEE300.red.S25.NR)))
IEEE300.red.S50.NR <- t(as.matrix(c(1, IEEE300.red.S50.NR)))
IEEE300.red.S75.NR <- t(as.matrix(c(1, IEEE300.red.S75.NR)))

Ythan.red.S10.NR <- t(as.matrix(c(1, Ythan.red.S10.NR)))
Ythan.red.S25.NR <- t(as.matrix(c(1, Ythan.red.S25.NR)))
Ythan.red.S50.NR <- t(as.matrix(c(1, Ythan.red.S50.NR)))
Ythan.red.S75.NR <- t(as.matrix(c(1, Ythan.red.S75.NR)))

Eco.red.S10.NR <- t(as.matrix(c(1, Eco.red.S10.NR)))
Eco.red.S25.NR <- t(as.matrix(c(1, Eco.red.S25.NR)))
Eco.red.S50.NR <- t(as.matrix(c(1, Eco.red.S50.NR)))
Eco.red.S75.NR <- t(as.matrix(c(1, Eco.red.S75.NR)))

Terr.red.S10.NR <- t(as.matrix(c(1, Terr.red.S10.NR)))
Terr.red.S25.NR <- t(as.matrix(c(1, Terr.red.S25.NR)))
Terr.red.S50.NR <- t(as.matrix(c(1, Terr.red.S50.NR)))
Terr.red.S75.NR <- t(as.matrix(c(1, Terr.red.S75.NR)))

###############################

coef.betareg.S10.NR <- summary(model.betareg.S10.NR)$coefficients$mean[,1]
coef.betareg.S25.NR <- summary(model.betareg.S25.NR)$coefficients$mean[,1]
coef.betareg.S50.NR <- summary(model.betareg.S50.NR)$coefficients$mean[,1]
coef.betareg.S75.NR <- summary(model.betareg.S75.NR)$coefficients$mean[,1]

coef.betareg.S10.NR <- as.matrix(coef.betareg.S10.NR)
coef.betareg.S25.NR <- as.matrix(coef.betareg.S25.NR)
coef.betareg.S50.NR <- as.matrix(coef.betareg.S50.NR)
coef.betareg.S75.NR <- as.matrix(coef.betareg.S75.NR)

se.coef.betareg.S10.NR <- summary(model.betareg.S10.NR)$coefficients$mean[,2]
se.coef.betareg.S25.NR <- summary(model.betareg.S25.NR)$coefficients$mean[,2]
se.coef.betareg.S50.NR <- summary(model.betareg.S50.NR)$coefficients$mean[,2]
se.coef.betareg.S75.NR <- summary(model.betareg.S75.NR)$coefficients$mean[,2]

se.coef.betareg.S10.NR <- as.matrix(se.coef.betareg.S10.NR )
se.coef.betareg.S25.NR <- as.matrix(se.coef.betareg.S25.NR )
se.coef.betareg.S50.NR <- as.matrix(se.coef.betareg.S50.NR )
se.coef.betareg.S75.NR <- as.matrix(se.coef.betareg.S75.NR )

numCoef.betareg.S10.NR <- dim(coef.betareg.S10.NR)[1]
numCoef.betareg.S25.NR <- dim(coef.betareg.S25.NR)[1]
numCoef.betareg.S50.NR <- dim(coef.betareg.S50.NR)[1]
numCoef.betareg.S75.NR <- dim(coef.betareg.S75.NR)[1]

rand.coef.betareg.S10.NR <- matrix(0,numCoef.betareg.S10.NR,1000)
rand.coef.betareg.S25.NR <- matrix(0,numCoef.betareg.S25.NR,1000)
rand.coef.betareg.S50.NR <- matrix(0,numCoef.betareg.S50.NR,1000)
rand.coef.betareg.S75.NR <- matrix(0,numCoef.betareg.S75.NR,1000)

###############################
# Generate random Betas

for (i in 1:numCoef.betareg.S10.NR) {
  for (j in 1:1000) {
    rand.coef.betareg.S10.NR[i,j] <- rnorm(1,coef.betareg.S10.NR[i],(se.coef.betareg.S10.NR[i])^2)
  }
}

for (i in 1:numCoef.betareg.S25.NR) {
  for (j in 1:1000) {
    rand.coef.betareg.S25.NR[i,j] <- rnorm(1,coef.betareg.S25.NR[i],(se.coef.betareg.S25.NR[i])^2)
  }
}

for (i in 1:numCoef.betareg.S50.NR) {
  for (j in 1:1000) {
    rand.coef.betareg.S50.NR[i,j] <- rnorm(1,coef.betareg.S50.NR[i],(se.coef.betareg.S50.NR[i])^2)
  }
}

for (i in 1:numCoef.betareg.S75.NR) {
  for (j in 1:1000) {
    rand.coef.betareg.S75.NR[i,j] <- rnorm(1,coef.betareg.S75.NR[i],(se.coef.betareg.S75.NR[i])^2)
  }
}
###############################
# Calculate g(mu)

xB.IEEE118.S10.NR.rand <- IEEE118.red.S10.NR %*% rand.coef.betareg.S10.NR
xB.IEEE118.S25.NR.rand <- IEEE118.red.S25.NR %*% rand.coef.betareg.S25.NR
xB.IEEE118.S50.NR.rand <- IEEE118.red.S50.NR %*% rand.coef.betareg.S50.NR
xB.IEEE118.S75.NR.rand <- IEEE118.red.S75.NR %*% rand.coef.betareg.S75.NR

mu.IEEE118.S10.NR <- (exp(xB.IEEE118.S10.NR.rand))/(1 + (exp(xB.IEEE118.S10.NR.rand)))
mu.IEEE118.S25.NR <- (exp(xB.IEEE118.S25.NR.rand))/(1 + (exp(xB.IEEE118.S25.NR.rand)))
mu.IEEE118.S50.NR <- (exp(xB.IEEE118.S50.NR.rand))/(1 + (exp(xB.IEEE118.S50.NR.rand)))
mu.IEEE118.S75.NR <- (exp(xB.IEEE118.S75.NR.rand))/(1 + (exp(xB.IEEE118.S75.NR.rand)))

xB.IEEE300.S10.NR.rand <- IEEE300.red.S10.NR %*% rand.coef.betareg.S10.NR
xB.IEEE300.S25.NR.rand <- IEEE300.red.S25.NR %*% rand.coef.betareg.S25.NR
xB.IEEE300.S50.NR.rand <- IEEE300.red.S50.NR %*% rand.coef.betareg.S50.NR
xB.IEEE300.S75.NR.rand <- IEEE300.red.S75.NR %*% rand.coef.betareg.S75.NR

mu.IEEE300.S10.NR <- (exp(xB.IEEE300.S10.NR.rand))/(1 + (exp(xB.IEEE300.S10.NR.rand)))
mu.IEEE300.S25.NR <- (exp(xB.IEEE300.S25.NR.rand))/(1 + (exp(xB.IEEE300.S25.NR.rand)))
mu.IEEE300.S50.NR <- (exp(xB.IEEE300.S50.NR.rand))/(1 + (exp(xB.IEEE300.S50.NR.rand)))
mu.IEEE300.S75.NR <- (exp(xB.IEEE300.S75.NR.rand))/(1 + (exp(xB.IEEE300.S75.NR.rand)))

xB.Ythan.S10.NR.rand <- Ythan.red.S10.NR %*% rand.coef.betareg.S10.NR
xB.Ythan.S25.NR.rand <- Ythan.red.S25.NR %*% rand.coef.betareg.S25.NR
xB.Ythan.S50.NR.rand <- Ythan.red.S50.NR %*% rand.coef.betareg.S50.NR
xB.Ythan.S75.NR.rand <- Ythan.red.S75.NR %*% rand.coef.betareg.S75.NR

mu.Ythan.S10.NR <- (exp(xB.Ythan.S10.NR.rand))/(1 + (exp(xB.Ythan.S10.NR.rand)))
mu.Ythan.S25.NR <- (exp(xB.Ythan.S25.NR.rand))/(1 + (exp(xB.Ythan.S25.NR.rand)))
mu.Ythan.S50.NR <- (exp(xB.Ythan.S50.NR.rand))/(1 + (exp(xB.Ythan.S50.NR.rand)))
mu.Ythan.S75.NR <- (exp(xB.Ythan.S75.NR.rand))/(1 + (exp(xB.Ythan.S75.NR.rand)))

xB.Eco.S10.NR.rand <- Eco.red.S10.NR %*% rand.coef.betareg.S10.NR
xB.Eco.S25.NR.rand <- Eco.red.S25.NR %*% rand.coef.betareg.S25.NR
xB.Eco.S50.NR.rand <- Eco.red.S50.NR %*% rand.coef.betareg.S50.NR
xB.Eco.S75.NR.rand <- Eco.red.S75.NR %*% rand.coef.betareg.S75.NR

mu.Eco.S10.NR <- (exp(xB.Eco.S10.NR.rand))/(1 + (exp(xB.Eco.S10.NR.rand)))
mu.Eco.S25.NR <- (exp(xB.Eco.S25.NR.rand))/(1 + (exp(xB.Eco.S25.NR.rand)))
mu.Eco.S50.NR <- (exp(xB.Eco.S50.NR.rand))/(1 + (exp(xB.Eco.S50.NR.rand)))
mu.Eco.S75.NR <- (exp(xB.Eco.S75.NR.rand))/(1 + (exp(xB.Eco.S75.NR.rand)))

xB.Terr.S10.NR.rand <- Terr.red.S10.NR %*% rand.coef.betareg.S10.NR
xB.Terr.S25.NR.rand <- Terr.red.S25.NR %*% rand.coef.betareg.S25.NR
xB.Terr.S50.NR.rand <- Terr.red.S50.NR %*% rand.coef.betareg.S50.NR
xB.Terr.S75.NR.rand <- Terr.red.S75.NR %*% rand.coef.betareg.S75.NR

mu.Terr.S10.NR <- (exp(xB.Terr.S10.NR.rand))/(1 + (exp(xB.Terr.S10.NR.rand)))
mu.Terr.S25.NR <- (exp(xB.Terr.S25.NR.rand))/(1 + (exp(xB.Terr.S25.NR.rand)))
mu.Terr.S50.NR <- (exp(xB.Terr.S50.NR.rand))/(1 + (exp(xB.Terr.S50.NR.rand)))
mu.Terr.S75.NR <- (exp(xB.Terr.S75.NR.rand))/(1 + (exp(xB.Terr.S75.NR.rand)))

###############################
# Sample phi

phi.S10.NR <- summary(model.betareg.S10.NR)$coefficients$precision[,1]
phi.S25.NR <- summary(model.betareg.S25.NR)$coefficients$precision[,1]
phi.S50.NR <- summary(model.betareg.S50.NR)$coefficients$precision[,1]
phi.S75.NR <- summary(model.betareg.S75.NR)$coefficients$precision[,1]

phi.S10.NR <- as.matrix(phi.S10.NR)
phi.S25.NR <- as.matrix(phi.S25.NR)
phi.S50.NR <- as.matrix(phi.S50.NR)
phi.S75.NR <- as.matrix(phi.S75.NR)

se.phi.S10.NR <- summary(model.betareg.S10.NR)$coefficients$precision[,2]
se.phi.S25.NR <- summary(model.betareg.S25.NR)$coefficients$precision[,2]
se.phi.S50.NR <- summary(model.betareg.S50.NR)$coefficients$precision[,2]
se.phi.S75.NR <- summary(model.betareg.S75.NR)$coefficients$precision[,2]

se.phi.S10.NR <- as.matrix(se.phi.S10.NR)
se.phi.S25.NR <- as.matrix(se.phi.S25.NR)
se.phi.S50.NR <- as.matrix(se.phi.S50.NR)
se.phi.S75.NR <- as.matrix(se.phi.S75.NR)

rand.phi.S10.NR <- matrix(0,1,1000)
rand.phi.S25.NR <- matrix(0,1,1000)
rand.phi.S50.NR <- matrix(0,1,1000)
rand.phi.S75.NR <- matrix(0,1,1000)

for (j in 1:1000) {
  rand.phi.S10.NR[1,j] <- rnorm(1,phi.S10.NR,(se.phi.S10.NR)^2)
}

for (j in 1:1000) {
  rand.phi.S25.NR[1,j] <- rnorm(1,phi.S25.NR,(se.phi.S25.NR)^2)
}

for (j in 1:1000) {
  rand.phi.S50.NR[1,j] <- rnorm(1,phi.S50.NR,(se.phi.S50.NR)^2)
}

for (j in 1:1000) {
  rand.phi.S75.NR[1,j] <- rnorm(1,phi.S75.NR,(se.phi.S75.NR)^2)
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

predict.dist.IEEE118.S10.NR <- matrix(0,1,1000000)
predict.dist.IEEE118.S25.NR <- matrix(0,1,1000000)
predict.dist.IEEE118.S50.NR <- matrix(0,1,1000000)
predict.dist.IEEE118.S75.NR <- matrix(0,1,1000000)

predict.dist.IEEE300.S10.NR <- matrix(0,1,1000000)
predict.dist.IEEE300.S25.NR <- matrix(0,1,1000000)
predict.dist.IEEE300.S50.NR <- matrix(0,1,1000000)
predict.dist.IEEE300.S75.NR <- matrix(0,1,1000000)

predict.dist.Ythan.S10.NR <- matrix(0,1,1000000)
predict.dist.Ythan.S25.NR <- matrix(0,1,1000000)
predict.dist.Ythan.S50.NR <- matrix(0,1,1000000)
predict.dist.Ythan.S75.NR <- matrix(0,1,1000000)

predict.dist.Eco.S10.NR <- matrix(0,1,1000000)
predict.dist.Eco.S25.NR <- matrix(0,1,1000000)
predict.dist.Eco.S50.NR <- matrix(0,1,1000000)
predict.dist.Eco.S75.NR <- matrix(0,1,1000000)

predict.dist.Terr.S10.NR <- matrix(0,1,1000000)
predict.dist.Terr.S25.NR <- matrix(0,1,1000000)
predict.dist.Terr.S50.NR <- matrix(0,1,1000000)
predict.dist.Terr.S75.NR <- matrix(0,1,1000000)



t <- 1
for (i in 1:100){			# mu samples	
  for (j in 1:100){			# phi samples
    for (k in 1:100){		   	# y samples
      predict.dist.IEEE118.S10.NR[t] <- y.betaDistSample(mu.IEEE118.S10.NR[1,i],rand.phi.S10.NR[j])
      predict.dist.IEEE118.S25.NR[t] <- y.betaDistSample(mu.IEEE118.S25.NR[1,i],rand.phi.S25.NR[j])
      predict.dist.IEEE118.S50.NR[t] <- y.betaDistSample(mu.IEEE118.S50.NR[1,i],rand.phi.S50.NR[j])
      predict.dist.IEEE118.S75.NR[t] <- y.betaDistSample(mu.IEEE118.S75.NR[1,i],rand.phi.S75.NR[j])

      predict.dist.IEEE300.S10.NR[t] <- y.betaDistSample(mu.IEEE300.S10.NR[1,i],rand.phi.S10.NR[j])
      predict.dist.IEEE300.S25.NR[t] <- y.betaDistSample(mu.IEEE300.S25.NR[1,i],rand.phi.S25.NR[j])
      predict.dist.IEEE300.S50.NR[t] <- y.betaDistSample(mu.IEEE300.S50.NR[1,i],rand.phi.S50.NR[j])
      predict.dist.IEEE300.S75.NR[t] <- y.betaDistSample(mu.IEEE300.S75.NR[1,i],rand.phi.S75.NR[j])

      predict.dist.Ythan.S10.NR[t] <- y.betaDistSample(mu.Ythan.S10.NR[1,i],rand.phi.S10.NR[j])
      predict.dist.Ythan.S25.NR[t] <- y.betaDistSample(mu.Ythan.S25.NR[1,i],rand.phi.S25.NR[j])
      predict.dist.Ythan.S50.NR[t] <- y.betaDistSample(mu.Ythan.S50.NR[1,i],rand.phi.S50.NR[j])
      predict.dist.Ythan.S75.NR[t] <- y.betaDistSample(mu.Ythan.S75.NR[1,i],rand.phi.S75.NR[j])

      predict.dist.Eco.S10.NR[t] <- y.betaDistSample(mu.Eco.S10.NR[1,i],rand.phi.S10.NR[j])
      predict.dist.Eco.S25.NR[t] <- y.betaDistSample(mu.Eco.S25.NR[1,i],rand.phi.S25.NR[j])
      predict.dist.Eco.S50.NR[t] <- y.betaDistSample(mu.Eco.S50.NR[1,i],rand.phi.S50.NR[j])
      predict.dist.Eco.S75.NR[t] <- y.betaDistSample(mu.Eco.S75.NR[1,i],rand.phi.S75.NR[j])

      predict.dist.Terr.S10.NR[t] <- y.betaDistSample(mu.Terr.S10.NR[1,i],rand.phi.S10.NR[j])
      predict.dist.Terr.S25.NR[t] <- y.betaDistSample(mu.Terr.S25.NR[1,i],rand.phi.S25.NR[j])
      predict.dist.Terr.S50.NR[t] <- y.betaDistSample(mu.Terr.S50.NR[1,i],rand.phi.S50.NR[j])
      predict.dist.Terr.S75.NR[t] <- y.betaDistSample(mu.Terr.S75.NR[1,i],rand.phi.S75.NR[j])

      t <- t + 1
    }
  }
}

predict.dist.IEEE118.S10.NR.sort <- sort(predict.dist.IEEE118.S10.NR)
predict.dist.IEEE118.S25.NR.sort <- sort(predict.dist.IEEE118.S25.NR)
predict.dist.IEEE118.S50.NR.sort <- sort(predict.dist.IEEE118.S50.NR)
predict.dist.IEEE118.S75.NR.sort <- sort(predict.dist.IEEE118.S75.NR)

predict.dist.IEEE300.S10.NR.sort <- sort(predict.dist.IEEE300.S10.NR)
predict.dist.IEEE300.S25.NR.sort <- sort(predict.dist.IEEE300.S25.NR)
predict.dist.IEEE300.S50.NR.sort <- sort(predict.dist.IEEE300.S50.NR)
predict.dist.IEEE300.S75.NR.sort <- sort(predict.dist.IEEE300.S75.NR)

predict.dist.Ythan.S10.NR.sort <- sort(predict.dist.Ythan.S10.NR)
predict.dist.Ythan.S25.NR.sort <- sort(predict.dist.Ythan.S25.NR)
predict.dist.Ythan.S50.NR.sort <- sort(predict.dist.Ythan.S50.NR)
predict.dist.Ythan.S75.NR.sort <- sort(predict.dist.Ythan.S75.NR)

predict.dist.Eco.S10.NR.sort <- sort(predict.dist.Eco.S10.NR)
predict.dist.Eco.S25.NR.sort <- sort(predict.dist.Eco.S25.NR)
predict.dist.Eco.S50.NR.sort <- sort(predict.dist.Eco.S50.NR)
predict.dist.Eco.S75.NR.sort <- sort(predict.dist.Eco.S75.NR)

predict.dist.Terr.S10.NR.sort <- sort(predict.dist.Terr.S10.NR)
predict.dist.Terr.S25.NR.sort <- sort(predict.dist.Terr.S25.NR)
predict.dist.Terr.S50.NR.sort <- sort(predict.dist.Terr.S50.NR)
predict.dist.Terr.S75.NR.sort <- sort(predict.dist.Terr.S75.NR)

predict.dist.IEEE118.S10.NR.percentiles <- rbind(predict.dist.IEEE118.S10.NR.sort[25000], predict.dist.IEEE118.S10.NR.sort[50000], predict.dist.IEEE118.S10.NR.sort[125000], predict.dist.IEEE118.S10.NR.sort[160000], predict.dist.IEEE118.S10.NR.sort[840000], predict.dist.IEEE118.S10.NR.sort[875000], predict.dist.IEEE118.S10.NR.sort[950000], predict.dist.IEEE118.S10.NR.sort[975000])
predict.dist.IEEE118.S25.NR.percentiles <- rbind(predict.dist.IEEE118.S25.NR.sort[25000], predict.dist.IEEE118.S25.NR.sort[50000], predict.dist.IEEE118.S25.NR.sort[125000], predict.dist.IEEE118.S25.NR.sort[160000], predict.dist.IEEE118.S25.NR.sort[840000], predict.dist.IEEE118.S25.NR.sort[875000], predict.dist.IEEE118.S25.NR.sort[950000], predict.dist.IEEE118.S25.NR.sort[975000])
predict.dist.IEEE118.S50.NR.percentiles <- rbind(predict.dist.IEEE118.S50.NR.sort[25000], predict.dist.IEEE118.S50.NR.sort[50000], predict.dist.IEEE118.S50.NR.sort[125000], predict.dist.IEEE118.S50.NR.sort[160000], predict.dist.IEEE118.S50.NR.sort[840000], predict.dist.IEEE118.S50.NR.sort[875000], predict.dist.IEEE118.S50.NR.sort[950000], predict.dist.IEEE118.S50.NR.sort[975000])
predict.dist.IEEE118.S75.NR.percentiles <- rbind(predict.dist.IEEE118.S75.NR.sort[25000], predict.dist.IEEE118.S75.NR.sort[50000], predict.dist.IEEE118.S75.NR.sort[125000], predict.dist.IEEE118.S75.NR.sort[160000], predict.dist.IEEE118.S75.NR.sort[840000], predict.dist.IEEE118.S75.NR.sort[875000], predict.dist.IEEE118.S75.NR.sort[950000], predict.dist.IEEE118.S75.NR.sort[975000])

predict.dist.IEEE300.S10.NR.percentiles <- rbind(predict.dist.IEEE300.S10.NR.sort[25000], predict.dist.IEEE300.S10.NR.sort[50000], predict.dist.IEEE300.S10.NR.sort[125000], predict.dist.IEEE300.S10.NR.sort[160000], predict.dist.IEEE300.S10.NR.sort[840000], predict.dist.IEEE300.S10.NR.sort[875000], predict.dist.IEEE300.S10.NR.sort[950000], predict.dist.IEEE300.S10.NR.sort[975000])
predict.dist.IEEE300.S25.NR.percentiles <- rbind(predict.dist.IEEE300.S25.NR.sort[25000], predict.dist.IEEE300.S25.NR.sort[50000], predict.dist.IEEE300.S25.NR.sort[125000], predict.dist.IEEE300.S25.NR.sort[160000], predict.dist.IEEE300.S25.NR.sort[840000], predict.dist.IEEE300.S25.NR.sort[875000], predict.dist.IEEE300.S25.NR.sort[950000], predict.dist.IEEE300.S25.NR.sort[975000])
predict.dist.IEEE300.S50.NR.percentiles <- rbind(predict.dist.IEEE300.S50.NR.sort[25000], predict.dist.IEEE300.S50.NR.sort[50000], predict.dist.IEEE300.S50.NR.sort[125000], predict.dist.IEEE300.S50.NR.sort[160000], predict.dist.IEEE300.S50.NR.sort[840000], predict.dist.IEEE300.S50.NR.sort[875000], predict.dist.IEEE300.S50.NR.sort[950000], predict.dist.IEEE300.S50.NR.sort[975000])
predict.dist.IEEE300.S75.NR.percentiles <- rbind(predict.dist.IEEE300.S75.NR.sort[25000], predict.dist.IEEE300.S75.NR.sort[50000], predict.dist.IEEE300.S75.NR.sort[125000], predict.dist.IEEE300.S75.NR.sort[160000], predict.dist.IEEE300.S75.NR.sort[840000], predict.dist.IEEE300.S75.NR.sort[875000], predict.dist.IEEE300.S75.NR.sort[950000], predict.dist.IEEE300.S75.NR.sort[975000])

predict.dist.Ythan.S10.NR.percentiles <- rbind(predict.dist.Ythan.S10.NR.sort[25000], predict.dist.Ythan.S10.NR.sort[50000], predict.dist.Ythan.S10.NR.sort[125000], predict.dist.Ythan.S10.NR.sort[160000], predict.dist.Ythan.S10.NR.sort[840000], predict.dist.Ythan.S10.NR.sort[875000], predict.dist.Ythan.S10.NR.sort[950000], predict.dist.Ythan.S10.NR.sort[975000])
predict.dist.Ythan.S25.NR.percentiles <- rbind(predict.dist.Ythan.S25.NR.sort[25000], predict.dist.Ythan.S25.NR.sort[50000], predict.dist.Ythan.S25.NR.sort[125000], predict.dist.Ythan.S25.NR.sort[160000], predict.dist.Ythan.S25.NR.sort[840000], predict.dist.Ythan.S25.NR.sort[875000], predict.dist.Ythan.S25.NR.sort[950000], predict.dist.Ythan.S25.NR.sort[975000])
predict.dist.Ythan.S50.NR.percentiles <- rbind(predict.dist.Ythan.S50.NR.sort[25000], predict.dist.Ythan.S50.NR.sort[50000], predict.dist.Ythan.S50.NR.sort[125000], predict.dist.Ythan.S50.NR.sort[160000], predict.dist.Ythan.S50.NR.sort[840000], predict.dist.Ythan.S50.NR.sort[875000], predict.dist.Ythan.S50.NR.sort[950000], predict.dist.Ythan.S50.NR.sort[975000])
predict.dist.Ythan.S75.NR.percentiles <- rbind(predict.dist.Ythan.S75.NR.sort[25000], predict.dist.Ythan.S75.NR.sort[50000], predict.dist.Ythan.S75.NR.sort[125000], predict.dist.Ythan.S75.NR.sort[160000], predict.dist.Ythan.S75.NR.sort[840000], predict.dist.Ythan.S75.NR.sort[875000], predict.dist.Ythan.S75.NR.sort[950000], predict.dist.Ythan.S75.NR.sort[975000])

predict.dist.Eco.S10.NR.percentiles <- rbind(predict.dist.Eco.S10.NR.sort[25000], predict.dist.Eco.S10.NR.sort[50000], predict.dist.Eco.S10.NR.sort[125000], predict.dist.Eco.S10.NR.sort[160000], predict.dist.Eco.S10.NR.sort[840000], predict.dist.Eco.S10.NR.sort[875000], predict.dist.Eco.S10.NR.sort[950000], predict.dist.Eco.S10.NR.sort[975000])
predict.dist.Eco.S25.NR.percentiles <- rbind(predict.dist.Eco.S25.NR.sort[25000], predict.dist.Eco.S25.NR.sort[50000], predict.dist.Eco.S25.NR.sort[125000], predict.dist.Eco.S25.NR.sort[160000], predict.dist.Eco.S25.NR.sort[840000], predict.dist.Eco.S25.NR.sort[875000], predict.dist.Eco.S25.NR.sort[950000], predict.dist.Eco.S25.NR.sort[975000])
predict.dist.Eco.S50.NR.percentiles <- rbind(predict.dist.Eco.S50.NR.sort[25000], predict.dist.Eco.S50.NR.sort[50000], predict.dist.Eco.S50.NR.sort[125000], predict.dist.Eco.S50.NR.sort[160000], predict.dist.Eco.S50.NR.sort[840000], predict.dist.Eco.S50.NR.sort[875000], predict.dist.Eco.S50.NR.sort[950000], predict.dist.Eco.S50.NR.sort[975000])
predict.dist.Eco.S75.NR.percentiles <- rbind(predict.dist.Eco.S75.NR.sort[25000], predict.dist.Eco.S75.NR.sort[50000], predict.dist.Eco.S75.NR.sort[125000], predict.dist.Eco.S75.NR.sort[160000], predict.dist.Eco.S75.NR.sort[840000], predict.dist.Eco.S75.NR.sort[875000], predict.dist.Eco.S75.NR.sort[950000], predict.dist.Eco.S75.NR.sort[975000])

predict.dist.Terr.S10.NR.percentiles <- rbind(predict.dist.Terr.S10.NR.sort[25000], predict.dist.Terr.S10.NR.sort[50000], predict.dist.Terr.S10.NR.sort[125000], predict.dist.Terr.S10.NR.sort[160000], predict.dist.Terr.S10.NR.sort[840000], predict.dist.Terr.S10.NR.sort[875000], predict.dist.Terr.S10.NR.sort[950000], predict.dist.Terr.S10.NR.sort[975000])
predict.dist.Terr.S25.NR.percentiles <- rbind(predict.dist.Terr.S25.NR.sort[25000], predict.dist.Terr.S25.NR.sort[50000], predict.dist.Terr.S25.NR.sort[125000], predict.dist.Terr.S25.NR.sort[160000], predict.dist.Terr.S25.NR.sort[840000], predict.dist.Terr.S25.NR.sort[875000], predict.dist.Terr.S25.NR.sort[950000], predict.dist.Terr.S25.NR.sort[975000])
predict.dist.Terr.S50.NR.percentiles <- rbind(predict.dist.Terr.S50.NR.sort[25000], predict.dist.Terr.S50.NR.sort[50000], predict.dist.Terr.S50.NR.sort[125000], predict.dist.Terr.S50.NR.sort[160000], predict.dist.Terr.S50.NR.sort[840000], predict.dist.Terr.S50.NR.sort[875000], predict.dist.Terr.S50.NR.sort[950000], predict.dist.Terr.S50.NR.sort[975000])
predict.dist.Terr.S75.NR.percentiles <- rbind(predict.dist.Terr.S75.NR.sort[25000], predict.dist.Terr.S75.NR.sort[50000], predict.dist.Terr.S75.NR.sort[125000], predict.dist.Terr.S75.NR.sort[160000], predict.dist.Terr.S75.NR.sort[840000], predict.dist.Terr.S75.NR.sort[875000], predict.dist.Terr.S75.NR.sort[950000], predict.dist.Terr.S75.NR.sort[975000])

predict.dist.NR.percentiles <- cbind(predict.dist.IEEE118.S10.NR.percentiles, predict.dist.IEEE118.S25.NR.percentiles, predict.dist.IEEE118.S50.NR.percentiles, predict.dist.IEEE118.S75.NR.percentiles, predict.dist.IEEE300.S10.NR.percentiles, predict.dist.IEEE300.S25.NR.percentiles, predict.dist.IEEE300.S50.NR.percentiles, predict.dist.IEEE300.S75.NR.percentiles, predict.dist.Ythan.S10.NR.percentiles, predict.dist.Ythan.S25.NR.percentiles, predict.dist.Ythan.S50.NR.percentiles, predict.dist.Ythan.S75.NR.percentiles, predict.dist.Eco.S10.NR.percentiles, predict.dist.Eco.S25.NR.percentiles, predict.dist.Eco.S50.NR.percentiles, predict.dist.Eco.S75.NR.percentiles, predict.dist.Terr.S10.NR.percentiles, predict.dist.Terr.S25.NR.percentiles, predict.dist.Terr.S50.NR.percentiles, predict.dist.Terr.S75.NR.percentiles)

colnames(predict.dist.NR.percentiles) <- c('IEEE118_S10', 'IEEE118_S25', 'IEEE118_S50', 'IEEE118_S75', 'IEEE300_S10', 'IEEE300_S25', 'IEEE300_S50', 'IEEE300_S75', 'Ythan_S10', 'Ythan_S25', 'Ythan_S50', 'Ythan_S75', 'Eco_S10', 'Eco_S25', 'Eco_S50', 'Eco_S75', 'Terr_S10', 'Terr_S25', 'Terr_S50', 'Terr_S75')
rownames(predict.dist.NR.percentiles) <- c('0.025', '0.05', '0.125', '0.16', '0.84', '0.875', '0.95', '0.975')
write.table(predict.dist.NR.percentiles, 'predictDist_NR_percentiles.txt')

predict.dist.NR <- rbind(predict.dist.IEEE118.S10.NR, predict.dist.IEEE118.S25.NR, predict.dist.IEEE118.S50.NR, predict.dist.IEEE118.S75.NR, predict.dist.IEEE300.S10.NR, predict.dist.IEEE300.S25.NR, predict.dist.IEEE300.S50.NR, predict.dist.IEEE300.S75.NR, predict.dist.Ythan.S10.NR, predict.dist.Ythan.S25.NR, predict.dist.Ythan.S50.NR, predict.dist.Ythan.S75.NR, predict.dist.Eco.S10.NR, predict.dist.Eco.S25.NR, predict.dist.Eco.S50.NR, predict.dist.Eco.S75.NR, predict.dist.Terr.S10.NR, predict.dist.Terr.S25.NR, predict.dist.Terr.S50.NR, predict.dist.Terr.S75.NR)

rownames(predict.dist.NR) <- c('IEEE118_S10', 'IEEE118_S25', 'IEEE118_S50', 'IEEE118_S75', 'IEEE300_S10', 'IEEE300_S25', 'IEEE300_S50', 'IEEE300_S75', 'Ythan_S10', 'Ythan_S25', 'Ythan_S50', 'Ythan_S75', 'Eco_S10', 'Eco_S25', 'Eco_S50', 'Eco_S75', 'Terr_S10', 'Terr_S25', 'Terr_S50', 'Terr_S75')
write.table(predict.dist.NR, 'predictDist_NR.txt')