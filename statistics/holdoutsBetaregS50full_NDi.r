# Fit model to data

model.betareg.S50.NDi <- betareg(S50.rel ~ covariates.norm)     
# fit initial model

model.betareg.S50.coef.p.NDi <- coeftest(model.betareg.S50.NDi)[,4]
# p-values for initial model

remove.ind <- c()
j <- 0
covariates.red <- covariates.norm

while (sum(model.betareg.S50.coef.p.NDi > 0.05) > 0){
# while there are covariates with p > 0.05
  j <- j + 1
  remove.ind[j] <- which(model.betareg.S50.coef.p.NDi == max(model.betareg.S50.coef.p.NDi))
  covariates.red <- covariates.red[,-(remove.ind[j]-1)]
  model.betareg.S50.NDi <- betareg(S50.rel ~ covariates.red)    
  model.betareg.S50.coef.p.NDi <- coeftest(model.betareg.S50.NDi)[,4]
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
fitted.value <- model.betareg.S50.NDi$coefficients$mean[1]
for (l in 1:length(IEEE118.red)){
  fitted.value <- fitted.value + model.betareg.S50.NDi$coefficients$mean[l+1]*IEEE118.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S50.IEEE118.NDi = mean((S50.rel.IEEE118 - fitted.value)^2)
MAE.model.betareg.S50.IEEE118.NDi = mean(abs(S50.rel.IEEE118 - fitted.value))

prediction.S50.IEEE118.NDi <- fitted.value

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
fitted.value <- model.betareg.S50.NDi$coefficients$mean[1]
for (l in 1:length(IEEE300.red)){
  fitted.value <- fitted.value + model.betareg.S50.NDi$coefficients$mean[l+1]*IEEE300.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S50.IEEE300.NDi = mean((S50.rel.IEEE300 - fitted.value)^2)
MAE.model.betareg.S50.IEEE300.NDi = mean(abs(S50.rel.IEEE300 - fitted.value))

prediction.S50.IEEE300.NDi <- fitted.value

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
fitted.value <- model.betareg.S50.NDi$coefficients$mean[1]
for (l in 1:length(Ythan.red)){
  fitted.value <- fitted.value + model.betareg.S50.NDi$coefficients$mean[l+1]*Ythan.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S50.Ythan.NDi = mean((S50.rel.Ythan - fitted.value)^2)
MAE.model.betareg.S50.Ythan.NDi = mean(abs(S50.rel.Ythan - fitted.value))

prediction.S50.Ythan.NDi <- fitted.value

################################################################################

x.red.S50.NDi <- covariates.red