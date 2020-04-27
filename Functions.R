hello <- function(name='Ayisha'){
  #code that execute when function is called
  print(paste('hello', name))
}

hello('Sammy')
hello()


add_num <- function(num1,num2){
  my.sum <- num1 + num2
  return(my.sum)
}
result <- add_num(4,6)


#scope of variables in a functions

times5 <- function(num){
  my.result <- num * 5
  return(my.result)
}
my.output <- times5(100)
print(my.output)

my.result

#global variables

v <- 'i am a global variable'
stuff <- 'i am global stuff'

fun <- function(stuff){
  print(v)
  stuff <- 'Reassign stuff inside of this function fun'
  print(stuff)

}

fun(stuff)














