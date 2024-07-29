# Split function practice

# example 1

x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
split(x, f)

#$`1`
# [1] -0.89455170  0.82366951 -0.01729993  0.67282577  0.66715597  1.50826044 -0.05796765  0.66094194  0.30512729  0.01276697

# $`2`
# [1] 0.36269035 0.08658071 0.67247202 0.58843272 0.90144146 0.47811409 0.64591034 0.91548015 0.65733113 0.84515889

# $`3`
# [1] -0.8677865  1.3153810  1.5193628  1.4170637  3.0429566  1.8924724  1.4523765  1.1971952 -0.5637241  1.3784574

# example 2

library(datasets)
head(airquality)

#   Ozone Solar.R Wind Temp Month Day
# 1    41     190  7.4   67     5   1
# 2    36     118  8.0   72     5   2
# 3    12     149 12.6   74     5   3
# 4    18     313 11.5   62     5   4
# 5    NA      NA 14.3   56     5   5
# 6    28      NA 14.9   66     5   6

s <- split(airquality, airquality$Month)
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))

# $`5`
# Ozone  Solar.R     Wind 
# NA       NA 11.62258 

# $`6`
# Ozone   Solar.R      Wind 
# NA 190.16667  10.26667 

# $`7`
# Ozone    Solar.R       Wind 
# NA 216.483871   8.941935 

# $`8`
# Ozone  Solar.R     Wind 
# NA       NA 8.793548 

# $`9`
# Ozone  Solar.R     Wind 
# NA 167.4333  10.1800 

Sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
# 5         6          7        8        9
# Ozone         NA        NA         NA       NA       NA
# Solar.R       NA 190.16667 216.483871       NA 167.4333
# Wind    11.62258  10.26667   8.941935 8.793548  10.1800

sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm = TRUE))
#                 5         6          7          8         9
# Ozone    23.61538  29.44444  59.115385  59.961538  31.44828
# Solar.R 181.29630 190.16667 216.483871 171.857143 167.43333
# Wind     11.62258  10.26667   8.941935   8.793548  10.18000

# Created a matrix of monthly means of these values and removes the missing values to get the means

# Splitting on more than one level
# example 1

x <- rnorm(10)
f1 <- gl(2, 5)
f2 <- gl(5, 2)

f1
#  [1] 1 1 1 1 1 2 2 2 2 2
# Levels: 1 2

f2
#  [1] 1 1 2 2 3 3 4 4 5 5
# Levels: 1 2 3 4 5

interaction(f1, f2)
#  [1] 1.1 1.1 1.2 1.2 1.3 2.3 2.4 2.4 2.5 2.5
# Levels: 1.1 2.1 1.2 2.2 1.3 2.3 1.4 2.4 1.5 2.5

# interaction combines all of the levels in f1 and f2 (multiplies them to get 10 total levels)
# To do this with split, use:

str(split(x, list(f1, f2)))
# List of 10
# $ 1.1: num [1:2] -1.264 -0.316
# $ 2.1: num(0) 
# $ 1.2: num [1:2] 0.457 1.091
# $ 2.2: num(0) 
# $ 1.3: num -0.17
# $ 2.3: num 0.114
# $ 1.4: num(0) 
# $ 2.4: num [1:2] 2.25 -1.03
# $ 1.5: num(0) 
# $ 2.5: num [1:2] 0.486 -0.489

# Created a string list that split up the values in each level
# you can also drop the empty levels using "drop" in the function

str(split(x, list(f1, f2), drop = TRUE))
# List of 6
# $ 1.1: num [1:2] -1.264 -0.316
# $ 1.2: num [1:2] 0.457 1.091
# $ 1.3: num -0.17
# $ 2.3: num 0.114
# $ 2.4: num [1:2] 2.25 -1.03
# $ 2.5: num [1:2] 0.486 -0.489