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

betareg.S1.NBr <- read.table('betaregS1full_NBr.txt',header=TRUE)
betareg.S10.NBr <- read.table('betaregS10full_NBr.txt',header=TRUE)
betareg.S25.NBr <- read.table('betaregS25full_NBr.txt',header=TRUE)
betareg.S50.NBr <- read.table('betaregS50full_NBr.txt',header=TRUE)
betareg.S75.NBr <- read.table('betaregS75full_NBr.txt',header=TRUE)

betareg.NBr <- data.frame()

h <- 0

for (i in 1:dim(betareg.S1.NBr)[1]){
  betareg.NBr[h+i,1] <- betareg.S1.NBr[i,1]
  betareg.NBr[h+i,2] <- betareg.S1.NBr[i,2]
  betareg.NBr[h+i,3] <- betareg.S1.NBr[i,4]
  betareg.NBr[h+i,4] <- '1'
  betareg.NBr[h+i,5] <- rownames(betareg.S1.NBr)[i]
  j <- h+i
}


for (i in 1:dim(betareg.S10.NBr)[1]){
  betareg.NBr[j+i,1] <- betareg.S10.NBr[i,1]
  betareg.NBr[j+i,2] <- betareg.S10.NBr[i,2]
  betareg.NBr[j+i,3] <- betareg.S10.NBr[i,4]
  betareg.NBr[j+i,4] <- '10%'
  betareg.NBr[j+i,5] <- rownames(betareg.S10.NBr)[i]
  k <- j+i
}

for (i in 1:dim(betareg.S25.NBr)[1]){
  betareg.NBr[k+i,1] <- betareg.S25.NBr[i,1]
  betareg.NBr[k+i,2] <- betareg.S25.NBr[i,2]
  betareg.NBr[k+i,3] <- betareg.S25.NBr[i,4]
  betareg.NBr[k+i,4] <- '25%'
  betareg.NBr[k+i,5] <- rownames(betareg.S25.NBr)[i]
  l <- k+i
}

for (i in 1:dim(betareg.S50.NBr)[1]){
  betareg.NBr[l+i,1] <- betareg.S50.NBr[i,1]
  betareg.NBr[l+i,2] <- betareg.S50.NBr[i,2]
  betareg.NBr[l+i,3] <- betareg.S50.NBr[i,4]
  betareg.NBr[l+i,4] <- '50%'
  betareg.NBr[l+i,5] <- rownames(betareg.S50.NBr)[i]
  m <- l+i
}

for (i in 1:dim(betareg.S75.NBr)[1]){
  betareg.NBr[m+i,1] <- betareg.S75.NBr[i,1]
  betareg.NBr[m+i,2] <- betareg.S75.NBr[i,2]
  betareg.NBr[m+i,3] <- betareg.S75.NBr[i,4]
  betareg.NBr[m+i,4] <- '75%'
  betareg.NBr[m+i,5] <- rownames(betareg.S75.NBr)[i]
}

for (i in 1:dim(betareg.NBr)[1]){
  if (betareg.NBr[i,5] == '(Intercept)'){
    betareg.NBr[i,5] <- 'Intercept'
  }
  if ((betareg.NBr[i,5] == 'covariates.redkMean.norm') | (betareg.NBr[i,5] == 'covariates.normkMean.norm')){
    betareg.NBr[i,5] <- 'k, mean'    
  }
  if ((betareg.NBr[i,5] == 'covariates.redCbMean.norm') | (betareg.NBr[i,5] == 'covariates.normCbMean.norm')){
    betareg.NBr[i,5] <- 'Cb, mean'    
  }
  if ((betareg.NBr[i,5] == 'covariates.redCbMax.norm') | (betareg.NBr[i,5] == 'covariates.normCbMax.norm')){
    betareg.NBr[i,5] <- 'Cb, max'    
  }
  if ((betareg.NBr[i,5] == 'covariates.redCmean.norm') | (betareg.NBr[i,5] == 'covariates.normCmean.norm')){
    betareg.NBr[i,5] <- 'C, mean'    
  }
  if ((betareg.NBr[i,5] == 'covariates.redCstd.norm') | (betareg.NBr[i,5] == 'covariates.normCstd.norm')){
    betareg.NBr[i,5] <- 'C, std dev'    
  }
  if ((betareg.NBr[i,5] == 'covariates.redlMax.norm') | (betareg.NBr[i,5] == 'covariates.normlMax.norm')){
    betareg.NBr[i,5] <- 'l, max'    
  }
  if ((betareg.NBr[i,5] == 'covariates.redlStd.norm') | (betareg.NBr[i,5] == 'covariates.normlStd.norm')){
    betareg.NBr[i,5] <- 'l, std dev'    
  }
  if (betareg.NBr[i,5] == '(phi)'){
    betareg.NBr[i,5] <- 'Phi'
  }
}

names(betareg.NBr) <- c('Beta','se','p-value','num','var')

betareg.NBr.plot.data <- betareg.NBr[(betareg.NBr$num != '1') & (betareg.NBr$var != 'Intercept') & (betareg.NBr$var != 'Phi'),]

betareg.NBr.plot.data$var <- factor(betareg.NBr.plot.data$var, levels = c('k, mean','Cb, mean','Cb, max','C, mean','C, std dev','l, std dev','l, max'))

setwd('/media/files/jhu/infrastructure/networks2012/plots')
betareg.NBr.plot.bar <- ggplot(data = betareg.NBr.plot.data, legend = FALSE) +
		       aes(x = num, y = Beta, fill = var) + 
		       geom_bar(position=position_dodge(width=0.9)) + 
		       geom_bar(position=position_dodge(width=0.9), colour = 'black', show_guide=FALSE) + 
		       # scale_fill_brewer(palette='Accent') +
		       # scale_fill_hue(c=100, l=65, h.start = 0) + 
                       geom_errorbar(position=position_dodge(width=0.9), width = 0.5, aes(ymin = Beta - se, ymax = Beta + se)) + 
		       xlab('Number of node failures, targeted by recalculated betweenness') + 
		       ylab(expression(paste('Variable influence, ', hat(beta)))) +
		       opts(legend.background = theme_rect(colour = 'black', fill = 'white', size = 0.5, linetype='solid')) +
		       opts(legend.text=theme_text(size=8)) + 
                       opts(legend.title = theme_blank(), legend.position = c(0.9, 0.2), legend.direction = 'vertical')

print(betareg.NBr.plot.bar)
dev.off()
ggsave(filename = 'betareg_NBr_V11.pdf')


##### Inset
# Mean S

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')
load('Srel.NBr.RData')

meanS_NBr <- read.table('meanS_NBr.txt',header=TRUE)
meanS_NBr <- meanS_NBr[-1]
meanS_NBr <- as.numeric(meanS_NBr)
meanS_NBr_num <- c('10%','25%','50%','75%')

meanS.NBr.dfr <- data.frame()
meanS.NBr.dfr[1,1] <- meanS_NBr[1]
meanS.NBr.dfr[2,1] <- meanS_NBr[2]
meanS.NBr.dfr[3,1] <- meanS_NBr[3]
meanS.NBr.dfr[4,1] <- meanS_NBr[4]

meanS.NBr.dfr[1,2] <- meanS_NBr_num[1]
meanS.NBr.dfr[2,2] <- meanS_NBr_num[2]
meanS.NBr.dfr[3,2] <- meanS_NBr_num[3]
meanS.NBr.dfr[4,2] <- meanS_NBr_num[4]


names(meanS.NBr.dfr) <- c('Sr','num')
attach(meanS.NBr.dfr)

setwd('/media/files/jhu/infrastructure/networks2012/plots')
meanS.NBr.plot <- ggplot(data = meanS.NBr.dfr,aes(x=num,y=Sr,group=1)) +
	         geom_point() +
		 geom_line() +
		 xlab('Number of node failures, targeted by recalculated betweenness') + 
		 ylab('Largest connected component, S')

print(meanS.NBr.plot)	
dev.off()
ggsave(filename = 'meanS_NBr_V11.pdf')

################################################################################

# MAE bar chart - random networks

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

holdoutsMAE_NBr <- read.table('holdoutsMAE_NBr.txt',header=TRUE)
holdoutsMAE_NBr <- holdoutsMAE_NBr[-1,]

vecMAE.betareg.S10.NBr <- read.table('holdoutsVecMAE_S10_NBr.txt')
vecMAE.betareg.S25.NBr <- read.table('holdoutsVecMAE_S25_NBr.txt')
vecMAE.betareg.S50.NBr <- read.table('holdoutsVecMAE_S50_NBr.txt')
vecMAE.betareg.S75.NBr <- read.table('holdoutsVecMAE_S75_NBr.txt')

# Find 95% confidence intervals for MAE

min95.S10 <- sort(as.matrix(vecMAE.betareg.S10.NBr))[3]
min95.S25 <- sort(as.matrix(vecMAE.betareg.S25.NBr))[3]
min95.S50 <- sort(as.matrix(vecMAE.betareg.S50.NBr))[3]
min95.S75 <- sort(as.matrix(vecMAE.betareg.S75.NBr))[3]

max95.S10 <- sort(as.matrix(vecMAE.betareg.S10.NBr))[98]
max95.S25 <- sort(as.matrix(vecMAE.betareg.S25.NBr))[98]
max95.S50 <- sort(as.matrix(vecMAE.betareg.S50.NBr))[98]
max95.S75 <- sort(as.matrix(vecMAE.betareg.S75.NBr))[98]

min95 <- c(min95.S10, min95.S25, min95.S50, min95.S75)
max95 <- c(max95.S10, max95.S25, max95.S50, max95.S75)

betareg.MAE <- data.frame()

numRemovals <- c('10%','25%','50%','75%')
numRemovals <- as.matrix(numRemovals)

for (i in 1:4){
  betareg.MAE [i,1] <- holdoutsMAE_NBr[i]
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
		    xlab('Number of node failures, targeted by recalculated betweenness') + 
		    ylab('Mean absolute error of predictions') +
		    theme(legend.position = 'none')

print(betareg.MAE.plot)	
dev.off()

ggsave(filename = 'MAE_NBr_V11.pdf')

################################################################################################################
