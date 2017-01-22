################################################################################
# Set directory, load libaries

# library(mgcv)
library(MASS)
library(nlme)
library(betareg)
library(lmtest)
library(graphics)
library(ggplot2)

################################################################################################################

# REGRESSION MODEL COEFFICIENTS BAR PLOT

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

betareg.S1.NDi <- read.table('betaregS1full_NDi.txt',header=TRUE)
betareg.S10.NDi <- read.table('betaregS10full_NDi.txt',header=TRUE)
betareg.S25.NDi <- read.table('betaregS25full_NDi.txt',header=TRUE)
betareg.S50.NDi <- read.table('betaregS50full_NDi.txt',header=TRUE)
betareg.S75.NDi <- read.table('betaregS75full_NDi.txt',header=TRUE)

betareg.NDi <- data.frame()

h <- 0

for (i in 1:dim(betareg.S1.NDi)[1]){
  betareg.NDi[h+i,1] <- betareg.S1.NDi[i,1]
  betareg.NDi[h+i,2] <- betareg.S1.NDi[i,2]
  betareg.NDi[h+i,3] <- betareg.S1.NDi[i,4]
  betareg.NDi[h+i,4] <- '1'
  betareg.NDi[h+i,5] <- rownames(betareg.S1.NDi)[i]
  j <- h+i
}


for (i in 1:dim(betareg.S10.NDi)[1]){
  betareg.NDi[j+i,1] <- betareg.S10.NDi[i,1]
  betareg.NDi[j+i,2] <- betareg.S10.NDi[i,2]
  betareg.NDi[j+i,3] <- betareg.S10.NDi[i,4]
  betareg.NDi[j+i,4] <- '10%'
  betareg.NDi[j+i,5] <- rownames(betareg.S10.NDi)[i]
  k <- j+i
}

for (i in 1:dim(betareg.S25.NDi)[1]){
  betareg.NDi[k+i,1] <- betareg.S25.NDi[i,1]
  betareg.NDi[k+i,2] <- betareg.S25.NDi[i,2]
  betareg.NDi[k+i,3] <- betareg.S25.NDi[i,4]
  betareg.NDi[k+i,4] <- '25%'
  betareg.NDi[k+i,5] <- rownames(betareg.S25.NDi)[i]
  l <- k+i
}

for (i in 1:dim(betareg.S50.NDi)[1]){
  betareg.NDi[l+i,1] <- betareg.S50.NDi[i,1]
  betareg.NDi[l+i,2] <- betareg.S50.NDi[i,2]
  betareg.NDi[l+i,3] <- betareg.S50.NDi[i,4]
  betareg.NDi[l+i,4] <- '50%'
  betareg.NDi[l+i,5] <- rownames(betareg.S50.NDi)[i]
  m <- l+i
}

for (i in 1:dim(betareg.S75.NDi)[1]){
  betareg.NDi[m+i,1] <- betareg.S75.NDi[i,1]
  betareg.NDi[m+i,2] <- betareg.S75.NDi[i,2]
  betareg.NDi[m+i,3] <- betareg.S75.NDi[i,4]
  betareg.NDi[m+i,4] <- '75%'
  betareg.NDi[m+i,5] <- rownames(betareg.S75.NDi)[i]
}

for (i in 1:dim(betareg.NDi)[1]){
  if (betareg.NDi[i,5] == '(Intercept)'){
    betareg.NDi[i,5] <- 'Intercept'
  }
  if ((betareg.NDi[i,5] == 'covariates.redkMean.norm') | (betareg.NDi[i,5] == 'covariates.normkMean.norm')){
    betareg.NDi[i,5] <- 'k, mean'    
  }
  if ((betareg.NDi[i,5] == 'covariates.redCbMean.norm') | (betareg.NDi[i,5] == 'covariates.normCbMean.norm')){
    betareg.NDi[i,5] <- 'Cb, mean'    
  }
  if ((betareg.NDi[i,5] == 'covariates.redCbMax.norm') | (betareg.NDi[i,5] == 'covariates.normCbMax.norm')){
    betareg.NDi[i,5] <- 'Cb, max'    
  }
  if ((betareg.NDi[i,5] == 'covariates.redCmean.norm') | (betareg.NDi[i,5] == 'covariates.normCmean.norm')){
    betareg.NDi[i,5] <- 'C, mean'    
  }
  if ((betareg.NDi[i,5] == 'covariates.redCstd.norm') | (betareg.NDi[i,5] == 'covariates.normCstd.norm')){
    betareg.NDi[i,5] <- 'C, std dev'    
  }
  if ((betareg.NDi[i,5] == 'covariates.redlMax.norm') | (betareg.NDi[i,5] == 'covariates.normlMax.norm')){
    betareg.NDi[i,5] <- 'l, max'    
  }
  if ((betareg.NDi[i,5] == 'covariates.redlStd.norm') | (betareg.NDi[i,5] == 'covariates.normlStd.norm')){
    betareg.NDi[i,5] <- 'l, std dev'    
  }
  if (betareg.NDi[i,5] == '(phi)'){
    betareg.NDi[i,5] <- 'Phi'
  }
}

names(betareg.NDi) <- c('Beta','se','p-value','num','var')

betareg.NDi.plot.data <- betareg.NDi[(betareg.NDi$num != '1') & (betareg.NDi$var != 'Intercept') & (betareg.NDi$var != 'Phi'),]

betareg.NDi.plot.data$var <- factor(betareg.NDi.plot.data$var, levels = c('k, mean','Cb, mean','Cb, max','C, mean','C, std dev','l, std dev','l, max'))

setwd('/media/files/jhu/infrastructure/networks2012/plots')
betareg.NDi.plot.bar <- ggplot(data = betareg.NDi.plot.data, legend = FALSE) +
		       aes(x = num, y = Beta, fill = var) + 
		       geom_bar(position=position_dodge(width=0.9)) + 
		       geom_bar(position=position_dodge(width=0.9), colour = 'black', show_guide=FALSE) + 
		       # scale_fill_brewer(palette='Accent') +
		       # scale_fill_hue(c=100, l=65, h.start = 0) + 
                       geom_errorbar(position=position_dodge(width=0.9), width = 0.5, aes(ymin = Beta - se, ymax = Beta + se)) + 
		       xlab('Number of node failures, targeted by initial degree') + 
		       ylab(expression(paste('Variable influence, ', hat(beta)))) +
		       opts(legend.background = theme_rect(colour = 'black', fill = 'white', size = 0.5, linetype='solid')) +
		       opts(legend.text=theme_text(size=8)) + 
                       opts(legend.title = theme_blank(), legend.position = c(0.9, 0.2), legend.direction = 'vertical')

print(betareg.NDi.plot.bar)
dev.off()
ggsave(filename = 'betareg_NDi_V11.pdf')


##### Inset
# Mean S

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')
load('Srel.NDi.RData')

meanS_NDi <- read.table('meanS_NDi.txt',header=TRUE)
meanS_NDi <- meanS_NDi[-1]
meanS_NDi <- as.numeric(meanS_NDi)
meanS_NDi_num <- c('10%','25%','50%','75%')

meanS.NDi.dfr <- data.frame()
meanS.NDi.dfr[1,1] <- meanS_NDi[1]
meanS.NDi.dfr[2,1] <- meanS_NDi[2]
meanS.NDi.dfr[3,1] <- meanS_NDi[3]
meanS.NDi.dfr[4,1] <- meanS_NDi[4]

meanS.NDi.dfr[1,2] <- meanS_NDi_num[1]
meanS.NDi.dfr[2,2] <- meanS_NDi_num[2]
meanS.NDi.dfr[3,2] <- meanS_NDi_num[3]
meanS.NDi.dfr[4,2] <- meanS_NDi_num[4]


names(meanS.NDi.dfr) <- c('Sr','num')
attach(meanS.NDi.dfr)

setwd('/media/files/jhu/infrastructure/networks2012/plots')
meanS.NDi.plot <- ggplot(data = meanS.NDi.dfr,aes(x=num,y=Sr,group=1)) +
	         geom_point() +
		 geom_line() +
		 xlab('Number of node failures, targeted by initial degree') + 
		 ylab('Largest connected component, S')

print(meanS.NDi.plot)	
dev.off()
ggsave(filename = 'meanS_NDi_V11.pdf')

################################################################################

# MAE bar chart - random networks

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

holdoutsMAE_NDi <- read.table('holdoutsMAE_NDi.txt',header=TRUE)
holdoutsMAE_NDi <- holdoutsMAE_NDi[-1,]

vecMAE.betareg.S10.NDi <- read.table('holdoutsVecMAE_S10_NDi.txt')
vecMAE.betareg.S25.NDi <- read.table('holdoutsVecMAE_S25_NDi.txt')
vecMAE.betareg.S50.NDi <- read.table('holdoutsVecMAE_S50_NDi.txt')
vecMAE.betareg.S75.NDi <- read.table('holdoutsVecMAE_S75_NDi.txt')

# Find 95% confidence intervals for MAE

min95.S10 <- sort(as.matrix(vecMAE.betareg.S10.NDi))[3]
min95.S25 <- sort(as.matrix(vecMAE.betareg.S25.NDi))[3]
min95.S50 <- sort(as.matrix(vecMAE.betareg.S50.NDi))[3]
min95.S75 <- sort(as.matrix(vecMAE.betareg.S75.NDi))[3]

max95.S10 <- sort(as.matrix(vecMAE.betareg.S10.NDi))[98]
max95.S25 <- sort(as.matrix(vecMAE.betareg.S25.NDi))[98]
max95.S50 <- sort(as.matrix(vecMAE.betareg.S50.NDi))[98]
max95.S75 <- sort(as.matrix(vecMAE.betareg.S75.NDi))[98]

min95 <- c(min95.S10, min95.S25, min95.S50, min95.S75)
max95 <- c(max95.S10, max95.S25, max95.S50, max95.S75)

betareg.MAE <- data.frame()

numRemovals <- c('10%','25%','50%','75%')
numRemovals <- as.matrix(numRemovals)

for (i in 1:4){
  betareg.MAE [i,1] <- holdoutsMAE_NDi[i]
  betareg.MAE [i,2] <- numRemovals[i]
  betareg.MAE [i,3] <- min95[i]
  betareg.MAE [i,4] <- max95[i]
}

names(betareg.MAE) <- c('MAE','num','95min','95max')

setwd('/media/files/jhu/infrastructure/networks2012/plots')
betareg.MAE.plot <- ggplot(data = betareg.MAE) +
		    aes(x = num, y = MAE) + 
		    geom_bar(position='dodge', fill = '#A58AFF', colour = 'black', width = 0.75) +
                    geom_errorbar(position='dodge',aes(ymin = min95, ymax = max95, width = 0.25)) + 
		    xlab('Number of node failures, targeted by initial degree') + 
		    ylab('Mean absolute error of predictions') +
		    theme(legend.position = 'none')

print(betareg.MAE.plot)	
dev.off()

ggsave(filename = 'MAE_NDi_V11.pdf')

################################################################################################################


