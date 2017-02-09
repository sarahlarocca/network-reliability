# Fit model to data

model.betareg.S25.NBi <- betareg(S25.rel ~ covariates.norm)     
# fit initial model

model.betareg.S25.coef.p.NBi <- coeftest(model.betareg.S25.NBi)[,4]
# p-values for initial model

remove.ind <- c()
j <- 0
covariates.red <- covariates.norm

while (sum(model.betareg.S25.coef.p.NBi > 0.05) > 0){
# while there are covariates with p > 0.05
  j <- j + 1
  remove.ind[j] <- which(model.betareg.S25.coef.p.NBi == max(model.betareg.S25.coef.p.NBi))
  covariates.red <- covariates.red[,-(remove.ind[j]-1)]
  model.betareg.S25.NBi <- betareg(S25.rel ~ covariates.red)    
  model.betareg.S25.coef.p.NBi <- coeftest(model.betareg.S25.NBi)[,4]
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
fitted.value <- model.betareg.S25.NBi$coefficients$mean[1]
for (l in 1:length(IEEE118.red)){
  fitted.value <- fitted.value + model.betareg.S25.NBi$coefficients$mean[l+1]*IEEE118.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S25.IEEE118.NBi = mean((S25.rel.IEEE118 - fitted.value)^2)
MAE.model.betareg.S25.IEEE118.NBi = mean(abs(S25.rel.IEEE118 - fitted.value))

prediction.S25.IEEE118.NBi <- fitted.value

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
fitted.value <- model.betareg.S25.NBi$coefficients$mean[1]
for (l in 1:length(IEEE300.red)){
  fitted.value <- fitted.value + model.betareg.S25.NBi$coefficients$mean[l+1]*IEEE300.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S25.IEEE300.NBi = mean((S25.rel.IEEE300 - fitted.value)^2)
MAE.model.betareg.S25.IEEE300.NBi = mean(abs(S25.rel.IEEE300 - fitted.value))

prediction.S25.IEEE300.NBi <- fitted.value

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
fitted.value <- model.betareg.S25.NBi$coefficients$mean[1]
for (l in 1:length(Ythan.red)){
  fitted.value <- fitted.value + model.betareg.S25.NBi$coefficients$mean[l+1]*Ythan.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S25.Ythan.NBi = mean((S25.rel.Ythan - fitted.value)^2)
MAE.model.betareg.S25.Ythan.NBi = mean(abs(S25.rel.Ythan - fitted.value))

prediction.S25.Ythan.NBi <- fitted.value

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
fitted.value <- model.betareg.S25.NBi$coefficients$mean[1]
for (l in 1:length(Eco.red)){
  fitted.value <- fitted.value + model.betareg.S25.NBi$coefficients$mean[l+1]*Eco.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S25.Eco.NBi = mean((S25.rel.Eco - fitted.value)^2)
MAE.model.betareg.S25.Eco.NBi = mean(abs(S25.rel.Eco - fitted.value))

prediction.S25.Eco.NBi <- fitted.value

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
fitted.value <- model.betareg.S25.NBi$coefficients$mean[1]
for (l in 1:length(Terr.red)){
  fitted.value <- fitted.value + model.betareg.S25.NBi$coefficients$mean[l+1]*Terr.red[l]
}
fitted.value <- exp(fitted.value)/(1 + exp(fitted.value))

#Calculate mean error for this holdout sample
MSE.model.betareg.S25.Terr.NBi = mean((S25.rel.Terr - fitted.value)^2)
MAE.model.betareg.S25.Terr.NBi = mean(abs(S25.rel.Terr - fitted.value))

prediction.S25.Terr.NBi <- fitted.value

################################################################################

x.red.S25.NBi <- covariates.red
remove.ind.S25.NBi <- remove.ind
IEEE118.red.S25.NBi <- IEEE118.red
IEEE300.red.S25.NBi <- IEEE300.red
Ythan.red.S25.NBi <- Ythan.red
Eco.red.S25.NBi <- Eco.red
Terr.red.S25.NBi <- Terr.red