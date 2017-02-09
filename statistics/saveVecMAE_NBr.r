setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

load('holdouts_NBr.rdata')

write.table(vecMAE.betareg.S1.NBr, file = 'holdoutsVecMAE_S1_NBr.txt')
write.table(vecMAE.betareg.S10.NBr, file = 'holdoutsVecMAE_S10_NBr.txt')
write.table(vecMAE.betareg.S25.NBr, file = 'holdoutsVecMAE_S25_NBr.txt')
write.table(vecMAE.betareg.S50.NBr, file = 'holdoutsVecMAE_S50_NBr.txt')
write.table(vecMAE.betareg.S75.NBr, file = 'holdoutsVecMAE_S75_NBr.txt')

write.table(vecMAE.betareg.S1.noModel.NBr, file = 'holdoutsVecMAE_S1_noModel_NBr.txt')
write.table(vecMAE.betareg.S10.noModel.NBr, file = 'holdoutsVecMAE_S10_noModel_NBr.txt')
write.table(vecMAE.betareg.S25.noModel.NBr, file = 'holdoutsVecMAE_S25_noModel_NBr.txt')
write.table(vecMAE.betareg.S50.noModel.NBr, file = 'holdoutsVecMAE_S50_noModel_NBr.txt')
write.table(vecMAE.betareg.S75.noModel.NBr, file = 'holdoutsVecMAE_S75_noModel_NBr.txt')