############################################################
# Define variables for the holdout script

# Data to predict from
data <- covariates.norm

# Data to predict
actual <- S75.rel

# Initialize error vectors
vecMSE.betareg.S75.NBr <- matrix(0,0,0)
vecMAE.betareg.S75.NBr <- matrix(0,0,0)
vecRMSE.betareg.S75.NBr <- matrix(0,0,0)
meanMSE.betareg.S75.NBr <- c()
meanMAE.betareg.S75.NBr <- c()
meanRMSE.betareg.S75.NBr <- c()


################################################################################
# Holdouts

for(i in 1:numHoldouts){

# Generate random string
y <- holdout.indices[i,]

# Create holdout sample for this iteration
tmp.data <- cbind(data,y)
tmp.actual <- cbind(actual,y)

holdout.data <- subset(tmp.data,y==1)[,1:ncol(data)]
holdout.actual <- subset(tmp.actual,y==1)[,1]
leftover.data <- subset(tmp.data,y==0)[,1:ncol(data)]
leftover.actual <- subset(tmp.actual,y==0)[,1]

# Fit Model to leftover data

model.betareg.S75.NBr <- betareg(leftover.actual ~ leftover.data)     
# fit initial model

model.betareg.S75.coef.p.NBr <- coeftest(model.betareg.S75.NBr)[,4]
# p-values for initial model

remove.ind <- c()
j <- 0
leftover.data.red <- leftover.data

while (sum(model.betareg.S75.coef.p.NBr > 0.05) > 0){
# while there are covariates with p > 0.05
  j <- j + 1
  remove.ind[j] <- which(model.betareg.S75.coef.p.NBr == max(model.betareg.S75.coef.p.NBr))
  leftover.data.red <- leftover.data.red[,-(remove.ind[j]-1)]
  model.betareg.S75.NBr <- betareg(leftover.actual ~ leftover.data.red)    
  model.betareg.S75.coef.p.NBr <- coeftest(model.betareg.S75.NBr)[,4]
}

# Reduce holdout data

holdout.data.red <- holdout.data
for (m in 1:j){
  if (!is.null(remove.ind)){
    holdout.data.red <- holdout.data.red[,-(remove.ind[m]-1)]
  }    
}

# Calculate fitted Y

fitted.value <- c()
for (k in 1:nrow(holdout.data.red)){
  fitted.value[k] <- model.betareg.S75.NBr$coefficients$mean[1]
  for (l in 1:ncol(holdout.data.red)){
    fitted.value[k] <- fitted.value[k] + model.betareg.S75.NBr$coefficients$mean[l+1]*holdout.data.red[k,l]
  }
  fitted.value[k] <- (exp(fitted.value[k]))/(1+exp(fitted.value[k]))
}


#Calculate mean error for this holdout sample
vecMSE.betareg.S75.NBr[i] <- mean((holdout.actual - fitted.value)^2)
vecMAE.betareg.S75.NBr[i] <- mean(abs(holdout.actual - fitted.value))
vecRMSE.betareg.S75.NBr[i] <- sqrt(vecMSE.betareg.S75.NBr[i])

}

############################################################
# Output

meanMSE.betareg.S75.NBr <- mean(vecMSE.betareg.S75.NBr)
meanMAE.betareg.S75.NBr <- mean(vecMAE.betareg.S75.NBr)
meanRMSE.betareg.S75.NBr <- mean(vecRMSE.betareg.S75.NBr)