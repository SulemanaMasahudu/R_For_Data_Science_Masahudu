data()

Indometh
str(state.x77)
summary(state.x77)

days <- c('Mon','Tue','Wed','Thur','Fri','Sat')
temp <- c(23,32,23,67,32,45)
rain <- c(T,T,F,T,T,F)
df <- data.frame(days,temp,rain)
df
str(df)
summary(df)
#indexing and slicing data frame
df
df[1,2]
df$rain
df[,'rain']
df[c(1,4),]
df['days']
subset(df,subset = rain==T)
subset(df,subset = temp == max(temp))
subset(df, subset = temp>23)

sorted.temp <- order(df['temp'])
sorted.temp
