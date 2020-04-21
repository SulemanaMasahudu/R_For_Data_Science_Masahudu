
A <- c(1,2,3)
B <- c(4,5,6)
C <- rbind(A,B)
C

mat <- matrix(1:9, nrow = 3)
mat

is.matrix(mat)

mat2 <- matrix(1:25, nrow = 5, byrow = T)
mat2
mat2[2:3,2:3]
mat2[,3]

mat2[4:5,4:5]
sum(mat2)
?runif

x <- runif(20)
matrix(x, nrow = 4)
