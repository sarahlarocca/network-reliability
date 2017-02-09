############################################################
# Define variables for the holdout script

# Data to predict from
data <- covariates.norm

# Data to predict
actual <- S25.rel

# Initialize error vectors
vecMSE.betareg.S25.noModel.NDr <- matrix(0,0,0)
vecMAE.betareg.S25.noModel.NDr <- matrix(0,0,0)
vecRMSE.betareg.S25.noModel.NDr <- matrix(0,0,0)
meanMSE.betareg.S25.noModel.NDr <- c()
meanMAE.betareg.S25.noModel.NDr <- c()
meanRMSE.betareg.S25.noModel.NDr <- c()

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

mean.S25.NDr <- mean(leftover.actual)     

#Calculate mean error for this holdout sample
vecMSE.betareg.S25.noModel.NDr[i] = mean((holdout.actual - mean.S25.NDr)^2)
vecRMSE.betareg.S25.noModel.NDr[i] = sqrt(mean((holdout.actual - mean.S25.NDr)^2))
vecMAE.betareg.S25.noModel.NDr[i] = mean(abs(holdout.actual - mean.S25.NDr))

}

############################################################
# Output

meanMSE.betareg.S25.noModel.NDr <- mean(vecMSE.betareg.S25.noModel.NDr)
meanMAE.betareg.S25.noModel.NDr <- mean(vecMAE.betareg.S25.noModel.NDr)
meanRMSE.betareg.S25.noModel.NDr <- mean(vecRMSE.betareg.S25.noModel.NDr)