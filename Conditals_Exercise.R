#Write a script that prints "Hello" if the variable x is equal to 1:
#solution

x <- 1
if(x == 1){
  print('hello')
}

#Ex 1: Write a script that will print "Even Number" if 
#the variable x is an even number, otherwise print "Not Even":
x <- 3
if (x %% 2 == 0){
  print('even number')
  
}else if(x %% 2 != 0){
  print('not even number')
} 

#Ex 2: Write a script that will print 'Is a Matrix' if the variable x is a matrix,
#otherwise print "Not a Matrix". Hint: You may want to check out help(is.matrix)

y <- matrix(1:25, nrow = 5)

if(is.matrix(y)){
  print('Is a Matrix')
}else{
  print('Not a Matrix')
}
?c()
#Ex 3: Create a script that given a numeric 
#vector x with a length 3, will print out the elements in order from high to low. 
#You must use if,else if, and else statements for your logic. 
#(This code will be relatively long)

x <- c(1:3)
if(x[1] > x[2]& x[3]){
  print(x[1],x[2],x[3])
}else if(x[2]>x[1]&x[3]){
  print(x[2],x)
}



