# Generating Random Numbers From a Linear Model

# example 1

# Linear Model:
  # y = B0 + B1*x + epsilon
  # where epsilon ~ N(0, 2^2)
  # Assume x ~ N(0, 1^2), B0 = 0.5, B1 = 2

set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2*x + e

summary(y)
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# -6.4084 -1.5402  0.6789  0.6893  2.9303  6.5052

# So I here, at first I set the seed. It's always very important to set that seed. So I set it to 20. 
# I generate x the predictor, which is, has a standard normal distribution. 
# I generate epsilon, which is going to have a standard a normal distribution with mean zero of standard deviation two. 
# And then I'm going to add them all together by, and after multiplying the regression coefficients to generate my y. 
# And so, from the summary here, you see that y has roughly a mean of 0.68. And it ha, and it ranges from about minus 6 to plus 6. 
# And then I can plot the data to see what they look like. 

plot(x, y)

# example 2
# We will be making x binary for this situation

set.seed(10)
x <- rbinom(100, 1, 0.5)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2*x + e

summary(y)
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# -3.4936 -0.1409  1.5767  1.4322  2.8397  6.9410

#  So, I set the seed again. 
# And I generate a 100 binomial random variables, These numbers use the binomial distribution which is n equals to 1 and p equals to half. 
# So, the probability of one is going to be equal to 0.5. So I generate a hundred of those. 
# And then I generate my normal random variables. 
# My normal error term which is going to be mean zero and standard deviation two. 
# And then I add them all together which should produce my y. So now I look at the summary of y. 
# I see the mean is about 1.4, and the range is about from minus 3 to six or seven. 
# So when I, now when I plot the data, of course they'll look very different, because the x variable is binary. 
# But the y variable is still continuous, it's normal. 
# So here you can see that there's, there appears to be a pretty clear, again, linear trend when, between going from x equals to 0 and x equals to 1

plot(x, y)

# Now let's simulate a Poisson Model

set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3*x
y <- rpois(100, exp(log.mu))
summary(y)
#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 0.00    1.00    1.00    1.55    2.00    6.00 

plot(x, y)
