# My first function - R Programming

# Function #1

add2 <- function(x, y) {
        x + y 
}

add2(3,5)
# Should equal 8

# Function 2

above10 <- function(x) {
use <- x > 10
      x[use]
}

x <- 1:20

above <- function(x, n) {
        use <- x > n
        x[use]
}



above(x, 12)

# Now do again but n = 10 this time

above2 <- function(x, n = 10) {
  use <- x > n
  x[use]
}

above2(x)

# Now we are going to make a function that takes a mean of each column in a matrix or data frame

#Function 3

columnmeans <- function(y) {
      nc <- ncol(y)
      means <- numeric(nc)
      for (i in 1:nc) {
          means[i] <- mean(y[, i])
      }
      means
}

columnmeans(airquality)

# There are six columns in the dataset, and it gave me six values of means
# NAs are present in two columns since R does not automatically ignore them. You have to tell it to do that

columnmeans <- function(y) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = TRUE)
  }
  means
}

columnmeans(airquality)
# Telling R to remove the NAs give you all six means 
