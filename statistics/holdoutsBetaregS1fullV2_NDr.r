# Fit model to data

model.betareg.S1.NDr <- betareg(S1.rel ~ covariates.norm)     
# fit initial model

model.betareg.S1.coef.p.NDr <- coeftest(model.betareg.S1.NDr)[,4]
# p-values for initial model

remove.ind <- c()
j <- 0
covariates.red <- covariates.norm

while (sum(model.betareg.S1.coef.p.NDr > 0.05) > 0){
# while there are covariates with p > 0.05
  j <- j + 1
  remove.ind[j] <- which(model.betareg.S1.coef.p.NDr == max(model.betareg.S1.coef.p.NDr))
  covariates.red <- covariates.red[,-(remove.ind[j]-1)]
  model.betareg.S1.NDr <- betareg(S1.rel ~ covariates.red)    
  model.betareg.S1.coef.p.NDr <- coeftest(model.betareg.S1.NDr)[,4]
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
fitted.value <- model.betareg.S1.NDr$coefficients$mean[1]
for (l in 1:length(IEEE118.red)){
  fitted.value <- fitted.value + model.betareg.S1.NDr$coefficients$mean[l+1]*IEEE118.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S1.IEEE118.NDr = mean((S1.rel.IEEE118 - fitted.value)^2)
MAE.model.betareg.S1.IEEE118.NDr = mean(abs(S1.rel.IEEE118 - fitted.value))

prediction.S1.IEEE118.NDr <- fitted.value

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
fitted.value <- model.betareg.S1.NDr$coefficients$mean[1]
for (l in 1:length(IEEE300.red)){
  fitted.value <- fitted.value + model.betareg.S1.NDr$coefficients$mean[l+1]*IEEE300.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S1.IEEE300.NDr = mean((S1.rel.IEEE300 - fitted.value)^2)
MAE.model.betareg.S1.IEEE300.NDr = mean(abs(S1.rel.IEEE300 - fitted.value))

prediction.S1.IEEE300.NDr <- fitted.value

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
fitted.value <- model.betareg.S1.NDr$coefficients$mean[1]
for (l in 1:length(Ythan.red)){
  fitted.value <- fitted.value + model.betareg.S1.NDr$coefficients$mean[l+1]*Ythan.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S1.Ythan.NDr = mean((S1.rel.Ythan - fitted.value)^2)
MAE.model.betareg.S1.Ythan.NDr = mean(abs(S1.rel.Ythan - fitted.value))

prediction.S1.Ythan.NDr <- fitted.value

################################################################################

# Reduce Eco data

Eco.red <- cbind(Eco$kMean,Eco$CbMean,Eco$CbMax,Eco$Cmean,Eco$Cstd,Eco$lMax,Eco$lStd)
for (m in 1:j){
  if (!is.null(remove.ind)){
    Eco.red <- Eco.red[-(remove.ind[m]-1)]
  }    
}

# Calculate fitted Y

fitted.value <- c()
fitted.value <- model.betareg.S1.NDr$coefficients$mean[1]
for (l in 1:length(Eco.red)){
  fitted.value <- fitted.value + model.betareg.S1.NDr$coefficients$mean[l+1]*Eco.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S1.Eco.NDr = mean((S1.rel.Eco - fitted.value)^2)
MAE.model.betareg.S1.Eco.NDr = mean(abs(S1.rel.Eco - fitted.value))

prediction.S1.Eco.NDr <- fitted.value

################################################################################

# Reduce Terr data

Terr.red <- cbind(Terr$kMean,Terr$CbMean,Terr$CbMax,Terr$Cmean,Terr$Cstd,Terr$lMax,Terr$lStd)
for (m in 1:j){
  if (!is.null(remove.ind)){
    Terr.red <- Terr.red[-(remove.ind[m]-1)]
  }    
}

# Calculate fitted Y

fitted.value <- c()
fitted.value <- model.betareg.S1.NDr$coefficients$mean[1]
for (l in 1:length(Terr.red)){
  fitted.value <- fitted.value + model.betareg.S1.NDr$coefficients$mean[l+1]*Terr.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S1.Terr.NDr = mean((S1.rel.Terr - fitted.value)^2)
MAE.model.betareg.S1.Terr.NDr = mean(abs(S1.rel.Terr - fitted.value))

prediction.S1.Terr.NDr <- fitted.value

################################################################################

x.red.S1.NDr <- covariates.red
remove.ind.S1.NDr <- remove.ind
IEEE118.red.S1.NDr <- IEEE118.red
IEEE300.red.S1.NDr <- IEEE300.red
Ythan.red.S1.NDr <- Ythan.red
Eco.red.S1.NDr <- Eco.red
Terr.red.S1.NDr <- Terr.red