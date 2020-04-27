#1: Create a function that takes in a name as a string argument, and prints out "Hello name"

myname <- function(name){
  print(paste('Hello',name))
}
myname('Hudu')

# 2: Create a function that takes in a name as a string argument and returns a string of the form - "Hello name"
heudu <- function(name){
  hudu <- paste('Hello', name)
  return(hudu)
}
heudu('Hudu') 


#Ex 1: Create a function that will return the product of two integers.
prod <- function(num1,num2){
  tyms <- num1 * num2
  return(tyms)
}
prod(4,6)

#Ex 2: Create a function that accepts two arguments, an integer 
#and a vector of integers. It returns TRUE if the integer is present in the vector,
#otherwise it returns FALSE. Make sure you pay careful attention to your placement of the return(FALSE) line in your function!


myfunc <- function(a,b){
  for (i in b) {
    if(i == a){
      return(TRUE)
    }else{
      return(F)
    }
    
  }
  
}
myfunc(a=2,b=c(6,4,5))


#Ex 3: Create a function that accepts two arguments, an integer and a vector of integers. 
#It returns the count of the number of occurences of the integer in the input vector.


secfunc <- function(a,b){
  count <- 0
  for (i in b) {
    if(i == a){
      count <- count + 1
      
    }
    
    
  }
  return(count)
  
}

secfunc(a=2, b=c(2,2,2,3,5,2))

#Ex 4: We want to ship bars of aluminum. 
#We will create a function that accepts an integer representing the requested 
#kilograms of aluminum for the package to be shipped. To fullfill these order, 
#we have small bars (1 kilogram each) and big bars (5 kilograms each). Return the least number of bars needed.
#For example, a load of 6 kg requires a minimum of two bars (1 5kg bars and 1 1kg bars).
#A load of 17 kg requires a minimum of 5 bars (3 5kg bars and 2 1kg bars).

a <- 1
b <- 5
number.of.mybars <- 0
number_of_bars <- function(numb){
  
  true.5 <- floor(numb/5)
  
  if(true.5 == 0){
    number.of.mybars <- numb / 1
    return(number.of.mybars)
    
  }else if(true.5 != 0){
    number.of.mybars <- true.5
    remainder <- numb %% 5
    number.of.hearbars <- remainder / 1
    number.of.mybars <- number.of.mybars +  number.of.hearbars
    return(number.of.mybars)
    
  }
  
  
}

number_of_bars(17)

#Ex 5: Create a function that accepts 3 integer values and returns their sum.
#However, if an integer value is evenly divisible by 3, then it does not count towards the sum. 
#Return zero if all numbers are evenly divisible by 3. Hint: You may want to use the append() function.

allfunc <- function(a,b,c){
  out <- c(0)
  
  if(a%%3 != 0){
    out <- append(a,out)
  }
  if(b%%3 !=0){
    out <- append(b,out)
    
  }
  if(c%%3 != 0){
    out <- append(c, out)
  }
  return(sum(out))
}
print(allfunc(3,4,5))

#Ex 6: Create a function that will return TRUE 
#if an input integer is prime. Otherwise, return FALSE. You may want to look into the any() function.

prime_check <- function(numb){
  if(numb %%2 == 0){
    return(F)
    
  }else{
    return(T)
  }
}
prime_check(8)














































  
  





