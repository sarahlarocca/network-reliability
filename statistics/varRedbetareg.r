varRed.betareg <- function(response,covariates){

model <- betareg(response ~ covariates)

model.coef.p <- coeftest(model)[,4]

while (sum(model.coef.p > 0.05) > 0){            # while there are covariates with p > 0.05
  remove.index <- which(model.coef.p == max(model.coef.p))
  covariates <- covariates[,-(remove.index-1)]
  model <- betareg(response ~ covariates)
}
model
}