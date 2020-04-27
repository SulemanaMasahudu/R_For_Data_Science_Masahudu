df <- read.csv('student-mat.csv', sep = ';')
head(df)
any(is.na(df$activities))

summary(df)
str(df)
library(ggplot2)
library(ggthemes)
library(dplyr)
install.packages('corrgram')
install.packages('corrplot')

#all the numeric olumns of a dataframe
num.cols <- sapply(df, is.numeric)
#get the correlation values of all numeric columns
cor.data <- cor(df[,num.cols])
cor.data
library(corrgram)
library(corrplot)
print(corrplot(cor.data, method = 'color'))

ggplot(df, aes(x=G3)) + geom_histogram(bins=20, alpha=
                                       0.5, fill='blue')


install.packages('caTools')
library(caTools)


set.seed(101)

#split sample into train and test

sample <- sample.split(df$G3, SplitRatio = 0.7)
train <- subset(df, sample== TRUE)
test <- subset(df, sample == FALSE)

general model
model <- lm(y ~ x1 + x2, data)


#train and build model

model <- lm(G3 ~ ., train)
plot(model)
model#interprete model
summary(model)

#PREDICTIONS
G3.predictions <- predict(model, test)


results <- cbind(G3.predictions, test$G3)
colnames(results) <- c('predicted','actual')
results <- as.data.frame(results)

head(results)

#TAKE CARE NEGATIVE VALUES
to_zero<- function(x){
  if(x<0){
    return(0)
  }else{
    return(x)
  }
}
#APPLY ZERO FUNCTION
results$predicted <- sapply(results$predicted, to_zero)

#MEAN SQUaRED ERROR

mse <- mean((results$actual - results$predicted)^2)
print(mse)


#SQUARED ROOT OF MSE
print(mse ^ 0.5)

#sum of squared errors

SSE <- sum((results$predicted - results$actual)^2)



res <- residuals(model)
class(res)
res <- as.data.frame(res)
ggplot(res, aes(res)) + geom_histogram(fill='blue', alpha=0.5)





