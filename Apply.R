#sample

a <- sample(x = 1: 50,3)
a


#APPLY

v <- c(1:5)
addrand <- function(x){
  ran <- sample(1:100,1)
  return(x + ran)
}

addrand(10)

result <- sapply(v, addrand)
result


v <- 1:5
times2 <- function(num){
  return(num*2)
}
result <- sapply(v, times2)
result



#ANONYMOUS FUNCTIONS

v <- 1:5
result <- sapply(v, function(num){num*2})
result


#APPLY WITH MULTIPLE INPUTS

add_choise <- function(num, choise){
  return(num + choise)
  
}

sapply(v , add_choise)



























