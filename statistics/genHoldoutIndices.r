source('holdoutIndices.r')
holdout.indices <- holdoutIndices(2000,0.2,100)
holdout.indices <- data.frame(holdout.indices)
write.table(holdout.indices,'holdoutIndices.txt')