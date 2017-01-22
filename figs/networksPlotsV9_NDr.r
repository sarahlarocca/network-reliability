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

betareg.S1.NDr <- read.table('betaregS1full_NDr.txt',header=TRUE)
betareg.S10.NDr <- read.table('betaregS10full_NDr.txt',header=TRUE)
betareg.S25.NDr <- read.table('betaregS25full_NDr.txt',header=TRUE)
betareg.S50.NDr <- read.table('betaregS50full_NDr.txt',header=TRUE)
betareg.S75.NDr <- read.table('betaregS75full_NDr.txt',header=TRUE)

betareg.NDr <- data.frame()

h <- 0

for (i in 1:dim(betareg.S1.NDr)[1]){
  betareg.NDr[h+i,1] <- betareg.S1.NDr[i,1]
  betareg.NDr[h+i,2] <- betareg.S1.NDr[i,2]
  betareg.NDr[h+i,3] <- betareg.S1.NDr[i,4]
  betareg.NDr[h+i,4] <- '1'
  betareg.NDr[h+i,5] <- rownames(betareg.S1.NDr)[i]
  j <- h+i
}


for (i in 1:dim(betareg.S10.NDr)[1]){
  betareg.NDr[j+i,1] <- betareg.S10.NDr[i,1]
  betareg.NDr[j+i,2] <- betareg.S10.NDr[i,2]
  betareg.NDr[j+i,3] <- betareg.S10.NDr[i,4]
  betareg.NDr[j+i,4] <- '10%'
  betareg.NDr[j+i,5] <- rownames(betareg.S10.NDr)[i]
  k <- j+i
}

for (i in 1:dim(betareg.S25.NDr)[1]){
  betareg.NDr[k+i,1] <- betareg.S25.NDr[i,1]
  betareg.NDr[k+i,2] <- betareg.S25.NDr[i,2]
  betareg.NDr[k+i,3] <- betareg.S25.NDr[i,4]
  betareg.NDr[k+i,4] <- '25%'
  betareg.NDr[k+i,5] <- rownames(betareg.S25.NDr)[i]
  l <- k+i
}

for (i in 1:dim(betareg.S50.NDr)[1]){
  betareg.NDr[l+i,1] <- betareg.S50.NDr[i,1]
  betareg.NDr[l+i,2] <- betareg.S50.NDr[i,2]
  betareg.NDr[l+i,3] <- betareg.S50.NDr[i,4]
  betareg.NDr[l+i,4] <- '50%'
  betareg.NDr[l+i,5] <- rownames(betareg.S50.NDr)[i]
  m <- l+i
}

for (i in 1:dim(betareg.S75.NDr)[1]){
  betareg.NDr[m+i,1] <- betareg.S75.NDr[i,1]
  betareg.NDr[m+i,2] <- betareg.S75.NDr[i,2]
  betareg.NDr[m+i,3] <- betareg.S75.NDr[i,4]
  betareg.NDr[m+i,4] <- '75%'
  betareg.NDr[m+i,5] <- rownames(betareg.S75.NDr)[i]
}

for (i in 1:dim(betareg.NDr)[1]){
  if (betareg.NDr[i,5] == '(Intercept)'){
    betareg.NDr[i,5] <- 'Intercept'
  }
  if ((betareg.NDr[i,5] == 'covariates.redkMean.norm') | (betareg.NDr[i,5] == 'covariates.normkMean.norm')){
    betareg.NDr[i,5] <- 'k, mean'    
  }
  if ((betareg.NDr[i,5] == 'covariates.redCbMean.norm') | (betareg.NDr[i,5] == 'covariates.normCbMean.norm')){
    betareg.NDr[i,5] <- 'Cb, mean'    
  }
  if ((betareg.NDr[i,5] == 'covariates.redCbMax.norm') | (betareg.NDr[i,5] == 'covariates.normCbMax.norm')){
    betareg.NDr[i,5] <- 'Cb, max'    
  }
  if ((betareg.NDr[i,5] == 'covariates.redCmean.norm') | (betareg.NDr[i,5] == 'covariates.normCmean.norm')){
    betareg.NDr[i,5] <- 'C, mean'    
  }
  if ((betareg.NDr[i,5] == 'covariates.redCstd.norm') | (betareg.NDr[i,5] == 'covariates.normCstd.norm')){
    betareg.NDr[i,5] <- 'C, std dev'    
  }
  if ((betareg.NDr[i,5] == 'covariates.redlMax.norm') | (betareg.NDr[i,5] == 'covariates.normlMax.norm')){
    betareg.NDr[i,5] <- 'l, max'    
  }
  if ((betareg.NDr[i,5] == 'covariates.redlStd.norm') | (betareg.NDr[i,5] == 'covariates.normlStd.norm')){
    betareg.NDr[i,5] <- 'l, std dev'    
  }
  if (betareg.NDr[i,5] == '(phi)'){
    betareg.NDr[i,5] <- 'Phi'
  }
}

names(betareg.NDr) <- c('Beta','se','p-value','num','var')

betareg.NDr.plot.data <- betareg.NDr[(betareg.NDr$var != 'Intercept') & (betareg.NDr$var != 'Phi') & (betareg.NDr$num != '50%') & (betareg.NDr$num != '75%'),]

betareg.NDr.plot.data$var <- factor(betareg.NDr.plot.data$var, levels = c('k, mean','Cb, mean','Cb, max','C, mean','C, std dev','l, std dev','l, max'))

setwd('/media/files/jhu/infrastructure/networks2012/plots')
betareg.NDr.plot.bar <- ggplot(data = betareg.NDr.plot.data, legend = FALSE) +
		       aes(x = num, y = Beta, fill = var) + 
		       geom_bar(position=position_dodge(width=0.9)) + 
		       geom_bar(position=position_dodge(width=0.9), colour = 'black', show_guide=FALSE) + 
		       # scale_fill_brewer(palette='Accent') +
		       # scale_fill_hue(c=100, l=65, h.start = 0) + 
                       geom_errorbar(position=position_dodge(width=0.9), width = 0.5, aes(ymin = Beta - se, ymax = Beta + se)) + 
		       xlab('Number of node failures, targeted by recalculated degree') + 
		       ylab(expression(paste('Variable influence, ', hat(beta)))) +
		       opts(legend.background = theme_rect(colour = 'black', fill = 'white', size = 0.5, linetype='solid')) +
		       opts(legend.text=theme_text(size=8)) + 
                       opts(legend.title = theme_blank(), legend.position = c(0.9, 0.2), legend.direction = 'vertical')

print(betareg.NDr.plot.bar)
dev.off()
ggsave(filename = 'betareg_NDr.pdf')


##### Inset
# Mean S


setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')
load('Srel.NDr.RData')

meanS_NDr <- read.table('meanS_NDr.txt',header=TRUE)
#meanS_NDr <- meanS_NDr[-1]
meanS_NDr <- as.numeric(meanS_NDr)
meanS_NDr_num <- c('1','10%','25%','50%','75%')

meanS.NDr.dfr <- data.frame()
meanS.NDr.dfr[1,1] <- meanS_NDr[1]
meanS.NDr.dfr[2,1] <- meanS_NDr[2]
meanS.NDr.dfr[3,1] <- meanS_NDr[3]
meanS.NDr.dfr[4,1] <- meanS_NDr[4]
meanS.NDr.dfr[5,1] <- meanS_NDr[5]

meanS.NDr.dfr[1,2] <- meanS_NDr_num[1]
meanS.NDr.dfr[2,2] <- meanS_NDr_num[2]
meanS.NDr.dfr[3,2] <- meanS_NDr_num[3]
meanS.NDr.dfr[4,2] <- meanS_NDr_num[4]
meanS.NDr.dfr[5,2] <- meanS_NDr_num[5]


names(meanS.NDr.dfr) <- c('Sr','num')
meanS.NDr.dfr <- meanS.NDr.dfr[(meanS.NDr.dfr$num != '50%') & (meanS.NDr.dfr$num != '75%'),]
attach(meanS.NDr.dfr)

setwd('/media/files/jhu/infrastructure/networks2012/plots')
meanS.NDr.plot <- ggplot(data = meanS.NDr.dfr,aes(x=num,y=Sr,group=1)) +
	         geom_point() +
		 geom_line() +
		 xlab('Number of node failures, targeted by recalculated degree') + 
		 ylab('Largest connected component, S')

print(meanS.NDr.plot)	
dev.off()
ggsave(filename = 'meanS_NDr.pdf')

################################################################################

# MAE bar chart - random networks

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

holdoutsMAE_NDr <- read.table('holdoutsMAE_NDr.txt',header=TRUE)
#holdoutsMAE_NDr <- holdoutsMAE_NDr[-1,]

vecMAE.betareg.S1.NDr <- read.table('holdoutsVecMAE_S1_NDr.txt')
vecMAE.betareg.S10.NDr <- read.table('holdoutsVecMAE_S10_NDr.txt')
vecMAE.betareg.S25.NDr <- read.table('holdoutsVecMAE_S25_NDr.txt')
#vecMAE.betareg.S50.NDr <- read.table('holdoutsVecMAE_S50_NDr.txt')
#vecMAE.betareg.S75.NDr <- read.table('holdoutsVecMAE_S75_NDr.txt')

# Find 95% confidence intervals for MAE

min95.S1 <- sort(as.matrix(vecMAE.betareg.S1.NDr))[3]
min95.S10 <- sort(as.matrix(vecMAE.betareg.S10.NDr))[3]
min95.S25 <- sort(as.matrix(vecMAE.betareg.S25.NDr))[3]
#min95.S50 <- sort(as.matrix(vecMAE.betareg.S50.NDr))[3]
#min95.S75 <- sort(as.matrix(vecMAE.betareg.S75.NDr))[3]

max95.S1 <- sort(as.matrix(vecMAE.betareg.S1.NDr))[98]
max95.S10 <- sort(as.matrix(vecMAE.betareg.S10.NDr))[98]
max95.S25 <- sort(as.matrix(vecMAE.betareg.S25.NDr))[98]
#max95.S50 <- sort(as.matrix(vecMAE.betareg.S50.NDr))[98]
#max95.S75 <- sort(as.matrix(vecMAE.betareg.S75.NDr))[98]

min95 <- c(min95.S1, min95.S10, min95.S25)#, min95.S50, min95.S75)
max95 <- c(max95.S1, max95.S10, max95.S25)#, max95.S50, max95.S75)

betareg.MAE <- data.frame()

numRemovals <- c('1','10%','25%')

for (i in 1:3){
  betareg.MAE [i,1] <- holdoutsMAE_NDr[i,]
  betareg.MAE [i,2] <- numRemovals[i]
  betareg.MAE [i,3] <- min95[i]
  betareg.MAE [i,4] <- max95[i]
}

names(betareg.MAE) <- c('MAE','num','95min','95max')
attach(betareg.MAE)

setwd('/media/files/jhu/infrastructure/networks2012/plots')
betareg.MAE.plot <- ggplot(data = betareg.MAE) +
		    aes(x = num, y = betareg.MAE$MAE) + 
		    geom_bar(position='dodge', fill = '#A58AFF', colour = 'black', width = 0.75) +
                    geom_errorbar(position='dodge',aes(ymin = min95, ymax = max95, width = 0.25)) + 
		    xlab('Number of node failures, targeted by recalculated degree') + 
		    ylab('Mean absolute error of predictions') +
		    theme(legend.position = 'none')

print(betareg.MAE.plot)	
dev.off()

ggsave(filename = 'MAE_NDr.pdf')

################################################################################################################

# Predictions histograms - real networks

library(ggplot2)

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

load('predict.real.dist.dfr.V8.NDi.Rdata')

colnames(predict.real.dist.dfr) = c('real','predict','network','num', 'dist')

attach(predict.real.dist.dfr)

predict.real.dist.dfr$network <- factor(predict.real.dist.dfr$network, levels = c('Ythan','Eco','Terr'))
predict.real.dist.dfr$num <- factor(predict.real.dist.dfr$num, levels = c('10%','25%','50%','75%'))

levels(predict.real.dist.dfr$network)[levels(predict.real.dist.dfr$network)=='Eco'] <- 'E. coli'
levels(predict.real.dist.dfr$network)[levels(predict.real.dist.dfr$network)=='Terr'] <- 'Terrorist'

setwd('/media/Files/JHU/Infrastructure/networks2012/plots')
predict.real.plot.hist <- ggplot(data = predict.real.dist.dfr, aes(dist, ..count../1000000)) +
                          geom_histogram(binwidth = 0.001, colour = 'black', fill = 'dimgray') + 
			  xlab('Size of largest connected component after node removals') + 
			  ylab('') + 
                          facet_grid(num~network) +
			  geom_vline(aes(xintercept = real), colour = '#F8766D', size = 0.5) + 
			  geom_vline(aes(xintercept = predict), colour = '#00BFC4', size = 0.5) 
#print(predict.real.plot.hist)	
#dev.off()

#setwd('/home/slarocca/JHU/Infrastructure/networks2012/')
ggsave(filename = 'predict.real.plot.hist.V7.NDi.pdf')

################################################################################

