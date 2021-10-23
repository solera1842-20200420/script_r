# vector
X <- c(1, 5, 3, 2, 4)  # vector
X
is.vector(X)

# matrix
y <- matrix(c(3, 5, 4, 2, 6, 8, 7, 9, 1), ncol = 3)
is.vector(y)
is.matrix(y)
y

# chisquare
x <- matrix(c(1625,5,1022,11), ncol = 2)  # matrix data
x
# test
chisq.test(x)  # ttest: p-value: 0.02714
fisher.test(x)  # ftest: p-value: 0.01885

