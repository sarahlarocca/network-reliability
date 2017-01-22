
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