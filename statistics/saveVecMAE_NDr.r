setwd('/media/files/jhu/infrastructure/networks2012/statistics/results')

load('holdouts_NDr.rdata')

write.table(vecMAE.betareg.S1.NDr, file = 'holdoutsVecMAE_S1_NDr.txt')
write.table(vecMAE.betareg.S10.NDr, file = 'holdoutsVecMAE_S10_NDr.txt')
write.table(vecMAE.betareg.S25.NDr, file = 'holdoutsVecMAE_S25_NDr.txt')
write.table(vecMAE.betareg.S50.NDr, file = 'holdoutsVecMAE_S50_NDr.txt')
write.table(vecMAE.betareg.S75.NDr, file = 'holdoutsVecMAE_S75_NDr.txt')

write.table(vecMAE.betareg.S1.noModel.NDr, file = 'holdoutsVecMAE_S1_noModel_NDr.txt')
write.table(vecMAE.betareg.S10.noModel.NDr, file = 'holdoutsVecMAE_S10_noModel_NDr.txt')
write.table(vecMAE.betareg.S25.noModel.NDr, file = 'holdoutsVecMAE_S25_noModel_NDr.txt')
write.table(vecMAE.betareg.S50.noModel.NDr, file = 'holdoutsVecMAE_S50_noModel_NDr.txt')
write.table(vecMAE.betareg.S75.noModel.NDr, file = 'holdoutsVecMAE_S75_noModel_NDr.txt')