animal <- c('d','c','d','c','c')
id <- c(1,2,3,4,5)

#check number of factors
factor(animal)

fact.ani <- factor(animal)
ord.cat <- c('cold','medium','hot')
temps <- c('cold','medium','hot','hot','hot','cold','med')
temps
fact.temp <- factor(temps, ordered =T, levels=c('cold','medium','hot'))
fact.temp
summary(fact.temp)
