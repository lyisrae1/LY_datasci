## For Loop Lesson

## Example 1

for(i in 1:10) {
      print(i)
}

## Example 2

x <- c("a", "b", "c", "d")

for(i in 1:4) {
      print(x[i]) 
}

## This creates a loop that times in the intial "i" loop to make it correspond to the numbering of the letters in the x chracter sequence

for(i in seq_along(x)) {
      print(x[i])
}

## This loop tell R to look at the character sequence, x, and to print the first four "i" characters


for(letter in x) { 
      print(letter)
}

## This loop tells R to look for letters in the character index, x, and print them

for(i in 1:4) print(x[i])

## This is the same loop as the first one, but it doesn't depend on the curly brackets to connect the loop

## Example 2; for loop nesting (putting a loop inside of a loop)

x <- matrix(1:6, 2, 3)

for (i in seq_len(nrow(x))) {
  for (j in seq_len(ncol(x))) {
          print(x[i, j])    
  }
}

## This tell R to use x to correspond to two loops at the same time