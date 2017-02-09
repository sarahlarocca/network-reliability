setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

load('holdouts_NDi.rdata')

write.table(vecMAE.betareg.S1.NDi, file = 'holdoutsVecMAE_S1_NDi.txt')
write.table(vecMAE.betareg.S10.NDi, file = 'holdoutsVecMAE_S10_NDi.txt')
write.table(vecMAE.betareg.S25.NDi, file = 'holdoutsVecMAE_S25_NDi.txt')
write.table(vecMAE.betareg.S50.NDi, file = 'holdoutsVecMAE_S50_NDi.txt')
write.table(vecMAE.betareg.S75.NDi, file = 'holdoutsVecMAE_S75_NDi.txt')

write.table(vecMAE.betareg.S1.noModel.NDi, file = 'holdoutsVecMAE_S1_noModel_NDi.txt')
write.table(vecMAE.betareg.S10.noModel.NDi, file = 'holdoutsVecMAE_S10_noModel_NDi.txt')
write.table(vecMAE.betareg.S25.noModel.NDi, file = 'holdoutsVecMAE_S25_noModel_NDi.txt')
write.table(vecMAE.betareg.S50.noModel.NDi, file = 'holdoutsVecMAE_S50_noModel_NDi.txt')
write.table(vecMAE.betareg.S75.noModel.NDi, file = 'holdoutsVecMAE_S75_noModel_NDi.txt')