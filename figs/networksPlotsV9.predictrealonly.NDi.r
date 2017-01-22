# Predictions histograms - real networks

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

load('confidenceBetareg_NDi.rdata')

real.S.rel.NDi <- read.table('realS_NDi.txt') 
real.S.rel.NDi <- real.S.rel.NDi[,-c(1, 2)]        # remove IEEE networks

predict.dist.NDi.percentiles <- read.table('predictDist_NDi_percentiles.txt', header = TRUE)
predict.dist.NDi.percentiles <- predict.dist.NDi.percentiles[, -c(1, 2, 3, 4, 5, 6, 7, 8)]

prediction.S.rel.NDi <- read.table('predictS_NDi.txt')
prediction.S.rel.NDi <- prediction.S.rel.NDi[, -c(1, 2)]

predict.dist.Ythan <- cbind(predict.dist.Ythan.S1.NDi, predict.dist.Ythan.S10.NDi, predict.dist.Ythan.S25.NDi, predict.dist.Ythan.S50.NDi, predict.dist.Ythan.S75.NDi)
predict.dist.Eco <- cbind(predict.dist.Eco.S1.NDi, predict.dist.Eco.S10.NDi, predict.dist.Eco.S25.NDi, predict.dist.Eco.S50.NDi, predict.dist.Eco.S75.NDi)
predict.dist.Terr <- cbind(predict.dist.Terr.S1.NDi, predict.dist.Terr.S10.NDi, predict.dist.Terr.S25.NDi, predict.dist.Terr.S50.NDi, predict.dist.Terr.S75.NDi)

predict.dist <- cbind(predict.dist.Ythan,predict.dist.Eco,predict.dist.Terr)

predict.real.dist.dfr <- data.frame()

numRemovals <- c('1','10%','25%','50%','75%')

# Ythan, 1 removed
predict.real.dist.dfr[1:1000000,1] <- rep(real.S.rel.NDi[1,1],1000000)
predict.real.dist.dfr[1:1000000,2] <- rep(prediction.S.rel.NDi[1,1],1000000)
predict.real.dist.dfr[1:1000000,3] <- rep('Ythan',1000000)
predict.real.dist.dfr[1:1000000,4] <- rep(numRemovals[1],1000000)

# Ythan, 10% removed
predict.real.dist.dfr[1000001:2000000,1] <- rep(real.S.rel.NDi[2,1],1000000)
predict.real.dist.dfr[1000001:2000000,2] <- rep(prediction.S.rel.NDi[2,1],1000000)
predict.real.dist.dfr[1000001:2000000,3] <- rep('Ythan',1000000)
predict.real.dist.dfr[1000001:2000000,4] <- rep(numRemovals[2],1000000)

# Ythan, 25% removed
predict.real.dist.dfr[2000001:3000000,1] <- rep(real.S.rel.NDi[3,1],1000000)
predict.real.dist.dfr[2000001:3000000,2] <- rep(prediction.S.rel.NDi[3,1],1000000)
predict.real.dist.dfr[2000001:3000000,3] <- rep('Ythan',1000000)
predict.real.dist.dfr[2000001:3000000,4] <- rep(numRemovals[3],1000000)

# Ythan, 50% removed
predict.real.dist.dfr[3000001:4000000,1] <- rep(real.S.rel.NDi[4,1],1000000)
predict.real.dist.dfr[3000001:4000000,2] <- rep(prediction.S.rel.NDi[4,1],1000000)
predict.real.dist.dfr[3000001:4000000,3] <- rep('Ythan',1000000)
predict.real.dist.dfr[3000001:4000000,4] <- rep(numRemovals[4],1000000)

# Ythan, 75% removed
predict.real.dist.dfr[4000001:5000000,1] <- rep(real.S.rel.NDi[5,1],1000000)
predict.real.dist.dfr[4000001:5000000,2] <- rep(prediction.S.rel.NDi[5,1],1000000)
predict.real.dist.dfr[4000001:5000000,3] <- rep('Ythan',1000000)
predict.real.dist.dfr[4000001:5000000,4] <- rep(numRemovals[5],1000000)

# Eco, 1 removed
predict.real.dist.dfr[5000001:6000000,1] <- rep(real.S.rel.NDi[1,2],1000000)
predict.real.dist.dfr[5000001:6000000,2] <- rep(prediction.S.rel.NDi[1,2],1000000)
predict.real.dist.dfr[5000001:6000000,3] <- rep('Eco',1000000)
predict.real.dist.dfr[5000001:6000000,4] <- rep(numRemovals[1],1000000)

# Eco, 10% removed
predict.real.dist.dfr[6000001:7000000,1] <- rep(real.S.rel.NDi[2,2],1000000)
predict.real.dist.dfr[6000001:7000000,2] <- rep(prediction.S.rel.NDi[2,2],1000000)
predict.real.dist.dfr[6000001:7000000,3] <- rep('Eco',1000000)
predict.real.dist.dfr[6000001:7000000,4] <- rep(numRemovals[2],1000000)

# Eco, 25% removed
predict.real.dist.dfr[7000001:8000000,1] <- rep(real.S.rel.NDi[3,2],1000000)
predict.real.dist.dfr[7000001:8000000,2] <- rep(prediction.S.rel.NDi[3,2],1000000)
predict.real.dist.dfr[7000001:8000000,3] <- rep('Eco',1000000)
predict.real.dist.dfr[7000001:8000000,4] <- rep(numRemovals[3],1000000)

# Eco, 50% removed
predict.real.dist.dfr[8000001:9000000,1] <- rep(real.S.rel.NDi[4,2],1000000)
predict.real.dist.dfr[8000001:9000000,2] <- rep(prediction.S.rel.NDi[4,2],1000000)
predict.real.dist.dfr[8000001:9000000,3] <- rep('Eco',1000000)
predict.real.dist.dfr[8000001:9000000,4] <- rep(numRemovals[4],1000000)

# Eco, 75% removed
predict.real.dist.dfr[9000001:10000000,1] <- rep(real.S.rel.NDi[5,2],1000000)
predict.real.dist.dfr[9000001:10000000,2] <- rep(prediction.S.rel.NDi[5,2],1000000)
predict.real.dist.dfr[9000001:10000000,3] <- rep('Eco',1000000)
predict.real.dist.dfr[9000001:10000000,4] <- rep(numRemovals[5],1000000)

# Terr, 1 removed
predict.real.dist.dfr[10000001:9000000,1] <- rep(real.S.rel.NDi[1,3],1000000)
predict.real.dist.dfr[10000001:9000000,2] <- rep(prediction.S.rel.NDi[1,3],1000000)
predict.real.dist.dfr[10000001:9000000,3] <- rep('Terr',1000000)
predict.real.dist.dfr[10000001:9000000,4] <- rep(numRemovals[1],1000000)

# Terr, 10% removed
predict.real.dist.dfr[11000001:9000000,1] <- rep(real.S.rel.NDi[2,3],1000000)
predict.real.dist.dfr[11000001:9000000,2] <- rep(prediction.S.rel.NDi[2,3],1000000)
predict.real.dist.dfr[11000001:9000000,3] <- rep('Terr',1000000)
predict.real.dist.dfr[11000001:9000000,4] <- rep(numRemovals[2],1000000)

# Terr, 25% removed
predict.real.dist.dfr[12000001:13000000,1] <- rep(real.S.rel.NDi[3,3],1000000)
predict.real.dist.dfr[12000001:13000000,2] <- rep(prediction.S.rel.NDi[3,3],1000000)
predict.real.dist.dfr[12000001:13000000,3] <- rep('Terr',1000000)
predict.real.dist.dfr[12000001:13000000,4] <- rep(numRemovals[3],1000000)

# Terr, 50% removed
predict.real.dist.dfr[13000001:14000000,1] <- rep(real.S.rel.NDi[4,3],1000000)
predict.real.dist.dfr[13000001:14000000,2] <- rep(prediction.S.rel.NDi[4,3],1000000)
predict.real.dist.dfr[13000001:14000000,3] <- rep('Terr',1000000)
predict.real.dist.dfr[13000001:14000000,4] <- rep(numRemovals[4],1000000)

# Terr, 75% removed
predict.real.dist.dfr[14000001:15000000,1] <- rep(real.S.rel.NDi[5,3],1000000)
predict.real.dist.dfr[14000001:15000000,2] <- rep(prediction.S.rel.NDi[5,3],1000000)
predict.real.dist.dfr[14000001:15000000,3] <- rep('Terr',1000000)
predict.real.dist.dfr[14000001:15000000,4] <- rep(numRemovals[5],1000000)

predict.real.dist.dfr[,5] <- t(predict.dist)

################################################################################

save.image('predict.real.dist.dfr.V9.NDi.Rdata')
