df <- read.csv('bikeshare.csv')
head(df)
colnames(df)

str(df)
summary(df)

firtsplot <- ggplot(df,aes(x=temp, y=count, color=temp))
firtsplot + geom_point(alpha=0.3) + theme_bw()

#convert to POSICT()
df$datetime <- as.POSIXct(df$datetime)
str(df)

secondplot <- ggplot(df, aes(datetime, count, color=temp, alpha=0.5))
pl <- secondplot + geom_point()
pl + scale_color_continuous(low='#55D8CE', high='#FF6E2E') + theme_classic()

#finding correlation between faactors

cor(df[,c("temp",'count')])


bplot <- ggplot(df, aes(factor(season), count, color=factor(season)))
bplot + geom_boxplot() + theme_gray()



#FEATURE ENGINEERING

df$hour <- sapply(df$datetime, function(x){format(x, '%H')})
head(df$hour)
df$hour <- sapply(df$hour, as.numeric)
cond <- subset(df, df$workingday == 1)
head(cond)

countvshour <- ggplot(cond, aes(hour, count, color=temp, ))
pl <- countvshour + geom_point()
pl + scale_color_gradientn(colors= c('dark blue', 'blue','light blue','yellow', 'brown','green', 'orange'))



#build a linear model

model <- lm(count ~ . -casual -registered -datetime -atemp, df)
summary(model)

temp.test <- data.frame(temp=c(25))
temp.test
predict(temp.model,temp.test)


