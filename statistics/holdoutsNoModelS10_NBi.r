############################################################
# Define variables for the holdout script

# Data to predict from
data <- covariates.norm

# Data to predict
actual <- S10.rel

# Initialize error vectors
vecMSE.betareg.S10.noModel.NBi <- matrix(0,0,0)
vecMAE.betareg.S10.noModel.NBi <- matrix(0,0,0)
vecRMSE.betareg.S10.noModel.NBi <- matrix(0,0,0)
meanMSE.betareg.S10.noModel.NBi <- c()
meanMAE.betareg.S10.noModel.NBi <- c()
meanRMSE.betareg.S10.noModel.NBi <- c()

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

mean.S10.NBi <- mean(leftover.actual)     

#Calculate mean error for this holdout sample
vecMSE.betareg.S10.noModel.NBi[i] = mean((holdout.actual - mean.S10.NBi)^2)
vecRMSE.betareg.S10.noModel.NBi[i] = sqrt(mean((holdout.actual - mean.S10.NBi)^2))
vecMAE.betareg.S10.noModel.NBi[i] = mean(abs(holdout.actual - mean.S10.NBi))

}

############################################################
# Output

meanMSE.betareg.S10.noModel.NBi <- mean(vecMSE.betareg.S10.noModel.NBi)
meanMAE.betareg.S10.noModel.NBi <- mean(vecMAE.betareg.S10.noModel.NBi)
meanRMSE.betareg.S10.noModel.NBi <- mean(vecRMSE.betareg.S10.noModel.NBi)