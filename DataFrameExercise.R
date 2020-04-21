Age <- c(22,25,26)
Sex <- c('M','M','F')
Weight <- c(150, 165, 120)

df <- data.frame(Age,Sex,Weight)
df
rownames(df) <- c('Sam','Frank','Amy')
df

is.data.frame(mtcars)

mat <- matrix(1:25, nrow = 5)
mat
as.data.frame(mat)

df <- mtcars
head(df, 6)
mean(df$mpg)
summary(df)
subset(df, cyl==6)
df[,c('am','gear','carb')]
df$performance <- round(df$hp / df$wt, 2)
head(df)
?round
con <- subset(df,hp>100 & wt>2.5)
con
mean(con$mpg)
df['Hornet Sportabout','mpg']
