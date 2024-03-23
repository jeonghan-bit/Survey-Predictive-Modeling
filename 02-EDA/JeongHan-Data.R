X_train <- read.csv("01-Data/X_train.csv", header=T)
y_train <- read.csv("01-Data/y_train.csv", header=T)
X_test <- read.csv("01-Data/X_test.csv", header=T)

names(which(colSums(is.na(mymatrix)) > 0))


unique(X_train$v228b)
unique(X_train$v228b_r)

var <- c('v133_11c', 'v134_11c', 'v135_11c', 'v136_11c', 'v137_11c', 'v138_11c', 'v139_11c', 'v140_11c', 'v141_11c')
var_org <- c('v133', 'v134', 'v135', 'v136', 'v137', 'v138', 'v139', 'v140', 'v141')


access <- function(var1, var2) {
  for (i in 1:9) {
    print(paste(var_org[i],"vs", var[i]))
    print(table(X_train[[var1[i]]], X_train[[var2[i]]]))
  }
}
# 
access(var, var_org)


swap <- function(var1, var2) {
  for (i in 1:9) {
    d1 <- X_train[[var1[i]]]
    d2 <- X_train[[var2[i]]]
    d1[d1 == -4] <- d2[d1 == -4]
  }
}

swap(var, var_org)
