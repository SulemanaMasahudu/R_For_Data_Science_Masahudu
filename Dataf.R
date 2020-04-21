#creating an empty data frame
empty <- data.frame()

c1 <- 1:10
c2 <- letters[1:10]
df <- data.frame(col.name.1=c1, col.name.2=c2)
df
nrow(df)
ncol(df)
str(df)
summary(df)
#refrencing cells

df[5,2]
df
df$col.name.2[5]
df$col.name.1[2] <- 9999
df

#refrencing roows
df[3,]
#refrencing cars
mtcars
head(mtcars)
mtcars$mpg
mtcars['mpg']
head(mtcars[c('mpg','cyl')])
df
df[1:3,]
mtcars[mtcars$mpg >20,]
mtcars

#dealing with missing data
is.na(mtcars)
any(is.na(mtcars))
