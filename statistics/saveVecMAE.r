setwd('/media/Files/JHU/Infrastructure/networks2012/statistics/results')

load('holdoutsNetworks_NR.RData')

write.table(vecMAE.betareg.S1.NR, file = 'holdoutsVecMAE_S1_NR.txt')
write.table(vecMAE.betareg.S10.NR, file = 'holdoutsVecMAE_S10_NR.txt')
write.table(vecMAE.betareg.S25.NR, file = 'holdoutsVecMAE_S25_NR.txt')
write.table(vecMAE.betareg.S50.NR, file = 'holdoutsVecMAE_S50_NR.txt')
write.table(vecMAE.betareg.S75.NR, file = 'holdoutsVecMAE_S75_NR.txt')

write.table(vecMAE.betareg.S1.noModel.NR, file = 'holdoutsVecMAE_S1_noModel_NR.txt')
write.table(vecMAE.betareg.S10.noModel.NR, file = 'holdoutsVecMAE_S10_noModel_NR.txt')
write.table(vecMAE.betareg.S25.noModel.NR, file = 'holdoutsVecMAE_S25_noModel_NR.txt')
write.table(vecMAE.betareg.S50.noModel.NR, file = 'holdoutsVecMAE_S50_noModel_NR.txt')
write.table(vecMAE.betareg.S75.noModel.NR, file = 'holdoutsVecMAE_S75_noModel_NR.txt')