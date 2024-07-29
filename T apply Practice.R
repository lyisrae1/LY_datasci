# tapply Practice

# example 1

x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
f
#  [1] 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3
# Levels: 1 2 3

# Created a list of ten 1s, ten 2s, and ten 3s

tapply(x, f, mean)
#         1         2         3 
# 0.3680929 0.6153612 1.1783755 

tapply(x, f, mean, simplify = FALSE)
# $`1`
# [1] 0.3680929

# $`2`
# [1] 0.6153612

# $`3`
# [1] 1.178375

# Gives you a list of means in each column

# example 2 

tapply(x, f, range)

# $`1`
# [1] -0.8945517  1.5082604

# $`2`
# [1] 0.08658071 0.91548015

# $`3`
# [1] -0.8677865  3.0429566
