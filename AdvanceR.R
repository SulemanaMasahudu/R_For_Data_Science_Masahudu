#BUILT IN R FEATURES

#1.creating a sequence
seq(0,100, by=10)
seq(0,24,by=2)


#2.sorting 

v <- c(1,4,5,6,82,5,6)
sort(v, decreasing = T)

cv <- c('b','d','a')
sort(cv)


#3. reversing
rev(v)
rev(cv)
#4. structure
str(mtcars)

#5. summary
summary(mtcars)

#6. append
v <- c(1:10)
va <- c(21:30)
append(v, va)


#7. checking datatypes

v <- c(1,3,4,5)
is.vector(v)

#converting one data type to another
as.list(v)













