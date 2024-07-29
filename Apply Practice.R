# Apply Practice

#example 1

x <- matrix(rnorm(200), 20, 10)

apply(x, 2, mean)
# [1] -0.28574673 -0.02602477  0.17232778  0.11473488 -0.01153324 -0.22654331 -0.47240581 -0.11842465  0.20947881 -0.25602789

# gives a mean of each column in the matrix; collapses all of the rows to do this

apply(x, 1, sum)
# [1]  7.0582164 -2.9891274 -1.3851589 -2.1719154 -3.1923714 -0.3717903 -5.3242188 -3.2584720  1.3305203 -5.3323342
# [11]  0.5566469 -4.0672322 -0.7781619 -1.4130958 -2.1804330  5.6135644  1.1179558  2.7329286 -3.5447502 -0.4040693

#gives a sum of the rows in the matrix; collapses all of the columns to do this

# example 2
# To calculate the 25th percentile of each row in the matrix; do this

apply(x, 1, quantile, probs = c(0.25, 0.75))

#         [,1]       [,2]       [,3]       [,4]        [,5]       [,6]       [,7]       [,8]      [,9]      [,10]
# 25% -0.2119938 -1.1571358 -0.3268641 -1.0845134 -0.56077582 -0.8041481 -0.9676680 -0.6947314 -0.725473 -1.0217293
# 75%  0.8327765  0.5002366  0.2343246  0.7518595  0.07678085  0.7257360 -0.2054563  0.2571695  1.027837 -0.1801921
#       [,11]      [,12]      [,13]      [,14]      [,15]      [,16]     [,17]       [,18]      [,19]      [,20]
# 25% -0.8525379 -0.5969323 -0.4927917 -0.6059101 -0.7080013 0.06329999 -0.308569 0.003217166 -0.8425015 -1.3338197
# 75%  0.7220659  0.3112730  0.1895364  0.3620479  0.4959455 1.22695517  0.487658 0.466091693  0.2161267  0.8089069

# created a matrix with 2 rows with the corresponding percentile; we used the quantile function 
#that requires the quantiles you want to calculate; we used probs for this function

# example 3

a <- array(rnorm(2 * 2 * 10), c(2, 2, 10))
apply(a, c(1, 2), mean)

#            [,1]       [,2]
# [1,] -0.51293397 -0.0947222
# [2,]  0.02539893 -0.1310050

rowMeans(a, dims = 2)

#Using rowMeans gives you the same answer as using apply to get the average of the 10 2x2 matrices
#Functions like this are rowMeans, colMeans, rowSums, colSums