# R Programming Week 3 Quiz

library(datasets)
data(iris)
?iris

i <- split(iris, iris$Species)
lapply(i, function(x) colMeans(x[, c("Sepal.Length", "Sepal.Width", "Petal.Width")]))

# $setosa
# Sepal.Length  Sepal.Width  Petal.Width 
# 5.006        3.428        0.246 

# $versicolor
# Sepal.Length  Sepal.Width  Petal.Width 
# 5.936        2.770        1.326 

# $virginica
# Sepal.Length  Sepal.Width  Petal.Width 
# 6.588        2.974        2.026 

# Question 2 
apply(iris[, 1:4], 1, mean)

# Question 3
data(mtcars)

sapply(split(mtcars$mpg, mtcars$cyl), mean)
# 4        6        8 
# 26.66364 19.74286 15.10000

with(mtcars, tapply(mpg, cyl, mean))
# 4        6        8 
# 26.66364 19.74286 15.10000

tapply(mtcars$mpg, mtcars$cyl, mean)
# 4        6        8 
# 26.66364 19.74286 15.10000 

# Question 4 

sapply(split(mtcars$hp, mtcars$cyl), mean)
# 4         6         8 
# 82.63636 122.28571 209.21429 