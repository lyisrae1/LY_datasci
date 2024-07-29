# Looping in Command line

#example 1 with lapply

x <- list(a = 1:5, b = rnorm(10))

lapply(x, mean)

$a

$b

# lapply will always give you a list back. Here it made a list of means for "a" and "b"

# example 2

x <- 1:4
lapply(x, runif)

# runif is a uniform random number generator; default is usually looking for values between 0 and 1
# This can be changed by adding a min and max to the argument

# example 3

x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))

x

# $a
# [,1] [,2]
# [1,]    1    3
# [2,]    2    4

# $b
# [,1] [,2]
# [1,]    1    4
# [2,]    2    5
# [3,]    3    6

# If you want to extract a specific column; do this:

lapply(x, function(elt) elt[,1])

# lapply used the function "element" to extract out the 1st column of each variable in the list (a and b)

# Sapply example; sapply is literally lapply but with a simplified result (ex. list into a single vector answer)
# example 1

x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)

#$a
#[1] 2.5

#$b
#[1] 0.8592227

#$c
#[1] 1.087248

#$d
#[1] 4.906912

#sapply(x, mean)
# a         b         c         d 
# 2.5000000 0.8592227 1.0872477 4.9069121 

