# mapply Practice

# example 1

list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))

# [[1]]
# [1] 1 1 1 1

# [[2]]
# [1] 2 2 2

# [[3]]
# [1] 3 3

# [[4]]
# [1] 4

# This can be done with mapply instead; much shorter line to type. Same answer too

mapply(rep, 1:4, 4:1)

# [[1]]
# [1] 1 1 1 1

# [[2]]
# [1] 2 2 2

# [[3]]
# [1] 3 3

# [[4]]
# [1] 4

# You can also vectorize an argument using mapply

# example 2 

noise <- function(n, mean, sd) {
  rnorm(n, mean, sd)
}

noise(5, 1, 2)
# [1]  1.2164207  2.2178102  1.3405446  1.8641616 -0.8172094

noise(1:5, 1:5, 2)
# [1] -0.6197098  1.8186302 -0.5588142  1.8928869  2.5954599

# Using an array for the noise function did not work. It only gave you one number for each row
# Now try using with mapply

mapply(noise, 1:5, 1:5, 2)

# [[1]]
# [1] 4.318823

# [[2]]
# [1] 2.79317816 0.06452313

# [[3]]
# [1] 3.666000 3.870296 4.445570

# [[4]]
# [1] 3.454014 6.829974 3.633398 3.218356

# [[5]]
# [1] 3.871316 4.778262 5.703698 4.742851 3.631279

