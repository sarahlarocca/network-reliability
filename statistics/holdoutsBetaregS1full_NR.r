# Fit model to data

model.betareg.S1.NR <- betareg(S1.rel ~ covariates.norm)     
# fit initial model

model.betareg.S1.coef.p.NR <- coeftest(model.betareg.S1.NR)[,4]
# p-values for initial model

remove.ind <- c()
j <- 0
covariates.red <- covariates.norm

while (sum(model.betareg.S1.coef.p.NR > 0.05) > 0){
# while there are covariates with p > 0.05
  j <- j + 1
  remove.ind[j] <- which(model.betareg.S1.coef.p.NR == max(model.betareg.S1.coef.p.NR))
  covariates.red <- covariates.red[,-(remove.ind[j]-1)]
  model.betareg.S1.NR <- betareg(S1.rel ~ covariates.red)    
  model.betareg.S1.coef.p.NR <- coeftest(model.betareg.S1.NR)[,4]
}

################################################################################

# Reduce IEEE118 data

IEEE118.red <- cbind(IEEE118$kMean,IEEE118$CbMean,IEEE118$CbMax,IEEE118$Cmean,IEEE118$Cstd,IEEE118$lMax,IEEE118$lStd)
for (m in 1:j){
  if (!is.null(remove.ind)){
    IEEE118.red <- IEEE118.red[-(remove.ind[m]-1)]
  }    
}

# Calculate fitted Y

fitted.value <- c()
fitted.value <- model.betareg.S1.NR$coefficients$mean[1]
for (l in 1:length(IEEE118.red)){
  fitted.value <- fitted.value + model.betareg.S1.NR$coefficients$mean[l+1]*IEEE118.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S1.IEEE118.NR = mean((S1.rel.IEEE118 - fitted.value)^2)
MAE.model.betareg.S1.IEEE118.NR = mean(abs(S1.rel.IEEE118 - fitted.value))

prediction.S1.IEEE118.NR <- fitted.value

################################################################################

# Reduce IEEE300 data

IEEE300.red <- cbind(IEEE300$kMean,IEEE300$CbMean,IEEE300$CbMax,IEEE300$Cmean,IEEE300$Cstd,IEEE300$lMax,IEEE300$lStd)
for (m in 1:j){
  if (!is.null(remove.ind)){
    IEEE300.red <- IEEE300.red[-(remove.ind[m]-1)]
  }    
}

# Calculate fitted Y

fitted.value <- c()
fitted.value <- model.betareg.S1.NR$coefficients$mean[1]
for (l in 1:length(IEEE300.red)){
  fitted.value <- fitted.value + model.betareg.S1.NR$coefficients$mean[l+1]*IEEE300.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S1.IEEE300.NR = mean((S1.rel.IEEE300 - fitted.value)^2)
MAE.model.betareg.S1.IEEE300.NR = mean(abs(S1.rel.IEEE300 - fitted.value))

prediction.S1.IEEE300.NR <- fitted.value

################################################################################

# Reduce Ythan data

Ythan.red <- cbind(Ythan$kMean,Ythan$CbMean,Ythan$CbMax,Ythan$Cmean,Ythan$Cstd,Ythan$lMax,Ythan$lStd)
for (m in 1:j){
  if (!is.null(remove.ind)){
    Ythan.red <- Ythan.red[-(remove.ind[m]-1)]
  }    
}

# Calculate fitted Y

fitted.value <- c()
fitted.value <- model.betareg.S1.NR$coefficients$mean[1]
for (l in 1:length(Ythan.red)){
  fitted.value <- fitted.value + model.betareg.S1.NR$coefficients$mean[l+1]*Ythan.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S1.Ythan.NR = mean((S1.rel.Ythan - fitted.value)^2)
MAE.model.betareg.S1.Ythan.NR = mean(abs(S1.rel.Ythan - fitted.value))

prediction.S1.Ythan.NR <- fitted.value

################################################################################

x.red.S1.NR <- covariates.red