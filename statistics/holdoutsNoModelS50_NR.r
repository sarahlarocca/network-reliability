############################################################
# Define variables for the holdout script

# Data to predict from
data <- covariates.norm

# Data to predict
actual <- S50.rel

# Initialize error vectors
vecMSE.betareg.S50.noModel.NR <- matrix(0,0,0)
vecMAE.betareg.S50.noModel.NR <- matrix(0,0,0)
vecRMSE.betareg.S50.noModel.NR <- matrix(0,0,0)
meanMSE.betareg.S50.noModel.NR <- c()
meanMAE.betareg.S50.noModel.NR <- c()
meanRMSE.betareg.S50.noModel.NR <- c()

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

mean.S50.NR <- mean(leftover.actual)     

#Calculate mean error for this holdout sample
vecMSE.betareg.S50.noModel.NR[i] = mean((holdout.actual - mean.S50.NR)^2)
vecRMSE.betareg.S50.noModel.NR[i] = sqrt(mean((holdout.actual - mean.S50.NR)^2))
vecMAE.betareg.S50.noModel.NR[i] = mean(abs(holdout.actual - mean.S50.NR))

}

############################################################
# Output

meanMSE.betareg.S50.noModel.NR <- mean(vecMSE.betareg.S50.noModel.NR)
meanMAE.betareg.S50.noModel.NR <- mean(vecMAE.betareg.S50.noModel.NR)
meanRMSE.betareg.S50.noModel.NR <- mean(vecRMSE.betareg.S50.noModel.NR)