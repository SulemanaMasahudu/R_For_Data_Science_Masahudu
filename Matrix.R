
v <- 1:10
v
matrix(v)
matrix(v, nrow = 2)
#filling a matrix by column
matrix(1:12, byrow = FALSE, nrow = 4)
#filling by rows first
matrix(1:12, byrow = TRUE, nrow = 4)


goog <- c(450,451,452,445,468)
msft <- c(230,231,232,23,220)

stocks <- c(goog, msft)
stocks
#COMBINING MATRIXES
stock.matrix <- matrix(stocks, byrow = T, nrow = 2)
stock.matrix
days <- c('Mon','Tue','Wed','Thur','Fri')
st.names <- c('GOOG','MSFT')
#HOW TO RENAME MATRIX COLUMN AND ROWS
colnames(stock.matrix)<- days
rownames(stock.matrix) <- st.names
stock.matrix

#functions on matrix
colSums(stock.matrix)
rowSums(stock.matrix)
rowMeans(stock.matrix)
colMeans(stock.matrix)


#adding a new row to a matrix
FB <- c(111,112,113,120,145)
tech.stocks <- rbind(stock.matrix, FB)
tech.stocks
avg <- rowMeans(tech.stocks)
tech.stocks <- cbind(tech.stocks, avg)
tech.stocks
