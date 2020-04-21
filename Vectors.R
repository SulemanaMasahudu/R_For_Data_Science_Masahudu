#creating vectors

nvec <- c(1,2,3,4,5)
nvec
class(nvec)
cvec <- c('U','S','A')
cvec
class(cvec)

lvec <- c(T,F)
lvec
class(lvec)

#a vector must contain the same type of data.

temps <- c(72, 71, 68, 20, 24, 45, 79)
temps
names(temps) <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
temps


#VECTOR OPERATIONS
v1 <- c(1,2,3,4)
v2 <- c(5,6,7,8)
v1 + v2
v1 - v2
v1 * v2
v1 / v2
sum(v1)
mean(v1)
median(v1)
sd(v2)
cov(v1,v2)
