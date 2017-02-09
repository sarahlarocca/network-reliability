# Generate holdout indices

holdoutIndices <- function(n,holdout.percent,holdout.num)
{
holdout.indices <- c()
for(i in 1:holdout.num){
  holdout.y <- c()
  for(j in 1:n){
      if(runif(1,0,1) <= holdout.percent){
          holdout.y[j] <- 1
      }
      else{
          holdout.y[j] <- 0
      }
  }
  holdout.indices <- rbind(holdout.indices,holdout.y)
}
holdout.indices
}