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

betareg.S1.NBi <- read.table('betaregS1full_NBi.txt',header=TRUE)
betareg.S10.NBi <- read.table('betaregS10full_NBi.txt',header=TRUE)
betareg.S25.NBi <- read.table('betaregS25full_NBi.txt',header=TRUE)
betareg.S50.NBi <- read.table('betaregS50full_NBi.txt',header=TRUE)
betareg.S75.NBi <- read.table('betaregS75full_NBi.txt',header=TRUE)

betareg.NBi <- data.frame()

h <- 0

for (i in 1:dim(betareg.S1.NBi)[1]){
  betareg.NBi[h+i,1] <- betareg.S1.NBi[i,1]
  betareg.NBi[h+i,2] <- betareg.S1.NBi[i,2]
  betareg.NBi[h+i,3] <- betareg.S1.NBi[i,4]
  betareg.NBi[h+i,4] <- '1'
  betareg.NBi[h+i,5] <- rownames(betareg.S1.NBi)[i]
  j <- h+i
}


for (i in 1:dim(betareg.S10.NBi)[1]){
  betareg.NBi[j+i,1] <- betareg.S10.NBi[i,1]
  betareg.NBi[j+i,2] <- betareg.S10.NBi[i,2]
  betareg.NBi[j+i,3] <- betareg.S10.NBi[i,4]
  betareg.NBi[j+i,4] <- '10%'
  betareg.NBi[j+i,5] <- rownames(betareg.S10.NBi)[i]
  k <- j+i
}

for (i in 1:dim(betareg.S25.NBi)[1]){
  betareg.NBi[k+i,1] <- betareg.S25.NBi[i,1]
  betareg.NBi[k+i,2] <- betareg.S25.NBi[i,2]
  betareg.NBi[k+i,3] <- betareg.S25.NBi[i,4]
  betareg.NBi[k+i,4] <- '25%'
  betareg.NBi[k+i,5] <- rownames(betareg.S25.NBi)[i]
  l <- k+i
}

for (i in 1:dim(betareg.S50.NBi)[1]){
  betareg.NBi[l+i,1] <- betareg.S50.NBi[i,1]
  betareg.NBi[l+i,2] <- betareg.S50.NBi[i,2]
  betareg.NBi[l+i,3] <- betareg.S50.NBi[i,4]
  betareg.NBi[l+i,4] <- '50%'
  betareg.NBi[l+i,5] <- rownames(betareg.S50.NBi)[i]
  m <- l+i
}

for (i in 1:dim(betareg.S75.NBi)[1]){
  betareg.NBi[m+i,1] <- betareg.S75.NBi[i,1]
  betareg.NBi[m+i,2] <- betareg.S75.NBi[i,2]
  betareg.NBi[m+i,3] <- betareg.S75.NBi[i,4]
  betareg.NBi[m+i,4] <- '75%'
  betareg.NBi[m+i,5] <- rownames(betareg.S75.NBi)[i]
}

for (i in 1:dim(betareg.NBi)[1]){
  if (betareg.NBi[i,5] == '(Intercept)'){
    betareg.NBi[i,5] <- 'Intercept'
  }
  if ((betareg.NBi[i,5] == 'covariates.redkMean.norm') | (betareg.NBi[i,5] == 'covariates.normkMean.norm')){
    betareg.NBi[i,5] <- 'k, mean'    
  }
  if ((betareg.NBi[i,5] == 'covariates.redCbMean.norm') | (betareg.NBi[i,5] == 'covariates.normCbMean.norm')){
    betareg.NBi[i,5] <- 'Cb, mean'    
  }
  if ((betareg.NBi[i,5] == 'covariates.redCbMax.norm') | (betareg.NBi[i,5] == 'covariates.normCbMax.norm')){
    betareg.NBi[i,5] <- 'Cb, max'    
  }
  if ((betareg.NBi[i,5] == 'covariates.redCmean.norm') | (betareg.NBi[i,5] == 'covariates.normCmean.norm')){
    betareg.NBi[i,5] <- 'C, mean'    
  }
  if ((betareg.NBi[i,5] == 'covariates.redCstd.norm') | (betareg.NBi[i,5] == 'covariates.normCstd.norm')){
    betareg.NBi[i,5] <- 'C, std dev'    
  }
  if ((betareg.NBi[i,5] == 'covariates.redlMax.norm') | (betareg.NBi[i,5] == 'covariates.normlMax.norm')){
    betareg.NBi[i,5] <- 'l, max'    
  }
  if ((betareg.NBi[i,5] == 'covariates.redlStd.norm') | (betareg.NBi[i,5] == 'covariates.normlStd.norm')){
    betareg.NBi[i,5] <- 'l, std dev'    
  }
  if (betareg.NBi[i,5] == '(phi)'){
    betareg.NBi[i,5] <- 'Phi'
  }
}

names(betareg.NBi) <- c('Beta','se','p-value','num','var')

betareg.NBi.plot.data <- betareg.NBi[(betareg.NBi$var != 'Intercept') & (betareg.NBi$var != 'Phi') & (betareg.NBi$num != '50%') & (betareg.NBi$num != '75%'),]

betareg.NBi.plot.data$var <- factor(betareg.NBi.plot.data$var, levels = c('k, mean','Cb, mean','Cb, max','C, mean','C, std dev','l, std dev','l, max'))

setwd('/media/files/jhu/infrastructure/networks2012/plots')
betareg.NBi.plot.bar <- ggplot(data = betareg.NBi.plot.data, legend = FALSE) +
		       aes(x = num, y = Beta, fill = var) + 
		       geom_bar(position=position_dodge(width=0.9)) + 
		       geom_bar(position=position_dodge(width=0.9), colour = 'black', show_guide=FALSE) + 
		       # scale_fill_brewer(palette='Accent') +
		       # scale_fill_hue(c=100, l=65, h.start = 0) + 
                       geom_errorbar(position=position_dodge(width=0.9), width = 0.5, aes(ymin = Beta - se, ymax = Beta + se)) + 
		       xlab('Number of node failures, targeted by initial betweenness') + 
		       ylab(expression(paste('Variable influence, ', hat(beta)))) +
		       opts(legend.background = theme_rect(colour = 'black', fill = 'white', size = 0.5, linetype='solid')) +
		       opts(legend.text=theme_text(size=8)) + 
                       opts(legend.title = theme_blank(), legend.position = c(0.9, 0.2), legend.direction = 'vertical')

print(betareg.NBi.plot.bar)
dev.off()
ggsave(filename = 'betareg_NBi.pdf')


##### Inset
# Mean S


setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')
load('Srel.NBi.RData')

meanS_NBi <- read.table('meanS_NBi.txt',header=TRUE)
#meanS_NBi <- meanS_NBi[-1]
meanS_NBi <- as.numeric(meanS_NBi)
meanS_NBi_num <- c('1','10%','25%','50%','75%')

meanS.NBi.dfr <- data.frame()
meanS.NBi.dfr[1,1] <- meanS_NBi[1]
meanS.NBi.dfr[2,1] <- meanS_NBi[2]
meanS.NBi.dfr[3,1] <- meanS_NBi[3]
meanS.NBi.dfr[4,1] <- meanS_NBi[4]
meanS.NBi.dfr[5,1] <- meanS_NBi[5]

meanS.NBi.dfr[1,2] <- meanS_NBi_num[1]
meanS.NBi.dfr[2,2] <- meanS_NBi_num[2]
meanS.NBi.dfr[3,2] <- meanS_NBi_num[3]
meanS.NBi.dfr[4,2] <- meanS_NBi_num[4]
meanS.NBi.dfr[5,2] <- meanS_NBi_num[5]


names(meanS.NBi.dfr) <- c('Sr','num')
meanS.NBi.dfr <- meanS.NBi.dfr[(meanS.NBi.dfr$num != '50%') & (meanS.NBi.dfr$num != '75%'),]
attach(meanS.NBi.dfr)

setwd('/media/files/jhu/infrastructure/networks2012/plots')
meanS.NBi.plot <- ggplot(data = meanS.NBi.dfr,aes(x=num,y=Sr,group=1)) +
	         geom_point() +
		 geom_line() +
		 xlab('Number of node failures, targeted by initial betweenness') + 
		 ylab('Largest connected component, S')

print(meanS.NBi.plot)	
dev.off()
ggsave(filename = 'meanS_NBi.pdf')

################################################################################

# MAE bar chart - random networks

setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

holdoutsMAE_NBi <- read.table('holdoutsMAE_NBi.txt',header=TRUE)
#holdoutsMAE_NBi <- holdoutsMAE_NBi[-1,]

vecMAE.betareg.S1.NBi <- read.table('holdoutsVecMAE_S1_NBi.txt')
vecMAE.betareg.S10.NBi <- read.table('holdoutsVecMAE_S10_NBi.txt')
vecMAE.betareg.S25.NBi <- read.table('holdoutsVecMAE_S25_NBi.txt')
#vecMAE.betareg.S50.NBi <- read.table('holdoutsVecMAE_S50_NBi.txt')
#vecMAE.betareg.S75.NBi <- read.table('holdoutsVecMAE_S75_NBi.txt')

# Find 95% confidence intervals for MAE

min95.S1 <- sort(as.matrix(vecMAE.betareg.S1.NBi))[3]
min95.S10 <- sort(as.matrix(vecMAE.betareg.S10.NBi))[3]
min95.S25 <- sort(as.matrix(vecMAE.betareg.S25.NBi))[3]
#min95.S50 <- sort(as.matrix(vecMAE.betareg.S50.NBi))[3]
#min95.S75 <- sort(as.matrix(vecMAE.betareg.S75.NBi))[3]

max95.S1 <- sort(as.matrix(vecMAE.betareg.S1.NBi))[98]
max95.S10 <- sort(as.matrix(vecMAE.betareg.S10.NBi))[98]
max95.S25 <- sort(as.matrix(vecMAE.betareg.S25.NBi))[98]
#max95.S50 <- sort(as.matrix(vecMAE.betareg.S50.NBi))[98]
#max95.S75 <- sort(as.matrix(vecMAE.betareg.S75.NBi))[98]

min95 <- c(min95.S1, min95.S10, min95.S25)#, min95.S50, min95.S75)
max95 <- c(max95.S1, max95.S10, max95.S25)#, max95.S50, max95.S75)

betareg.MAE <- data.frame()

numRemovals <- c('1','10%','25%')

for (i in 1:3){
  betareg.MAE [i,1] <- holdoutsMAE_NBi[i,]
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
		    xlab('Number of node failures, targeted by initial betweenness') + 
		    ylab('Mean absolute error of predictions') +
		    theme(legend.position = 'none')

print(betareg.MAE.plot)	
dev.off()

ggsave(filename = 'MAE_NBi.pdf')

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

