# Generating Random Numbers Practice

# example 1

x <- rnorm(10)
x
#  [1] -1.86071721  0.60615886  0.16756304  0.03431252 -0.57143680 -2.54535669  2.74757283 -0.10772769 -0.04178333  0.62357205

x <- rnorm(10, 20, 2)
# asking for 10 random normal numbers with a mean of 20, and a sd (standard deviation) of 2

x
# [1] 19.60028 19.03597 18.22843 21.10504 18.89771 23.39099 16.57963 19.62010 19.37802 21.36494

summary(x)
#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 16.58   18.93   19.49   19.72   20.73   23.39

# set.seed() example 1

set.seed(1)
rnorm(5)
# [1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078

rnorm(5)
# [1] -0.8204684  0.4874291  0.7383247  0.5757814 -0.3053884

set.seed(1)
rnorm(5)
# [1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078

# Even after generating five new random numbers after the first set.seed(), calling it again
# pulls the first initial five random numbers produced by rnorm(5)

# Possoin data example 1

rpois(10, 1)
# [1] 0 0 1 1 2 1 1 4 1 2

rpois(10, 2)
# [1] 4 1 2 0 1 1 0 1 4 1

rpois(10, 20)
# [1] 19 19 24 23 22 24 23 20 11 22

# Here I'm generating a pois, ten Poisson random variables at the rate of two, so you can see they're slightly larger. 
# And then here I'm generating ten random variables Poisson random variables with a, with a rate of 20. 
# And so, so for the Poisson distribution, the mean is going to be equal to the rate. 
# So you can see that roughly in each of these three cases, the mean is roughly equal to the rate that I specified

ppois(2, 2)
# [1] 0.6766764

ppois(4, 2)
# [1] 0.947347

ppois(6, 2)
# [1] 0.9954662

# So here I'm in this first example I want to know what is the probability that a Poisson random variable is less than or equal to two if the rate is two. 
# And so this is the probability. It's 0.67 roughly. 
# If I wanted to know what's the probability that, that a Poisson random variable with rate two is less than four, less than or equal to four. 
# You can see the probability's getting bigger. And here I can see the probability that a Poisson random variable is less than six. 
# Less than or equal to six, and it's very close to one. 
# So the cumulative distribution allows you to, to evaluate these probabilities.