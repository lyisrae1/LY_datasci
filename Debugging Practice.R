# Debugging Practice

# R tells you something is wrong by using messages, error warnings, and conditions 
# You can even tell R to check what is being input into a function 
  # example if(is.matrix)

# Primary tools for debugging in R:
  #traceback: prints the function call stack after an error occurs; does nothing if no error 
  # debug: flags the function for *debug* mode which allows you to step through the execution of the function one line at a time
  #browser: suspends the execution of the function wherever it is called and puts the function into debug mode
  #trace: allows you to insert debugging code into a function in specific places
  #recover: allows you to modify the error behavior so that you can browse the function; call stack
# You can also print/cat statements in the function to make it easier to see what it wrong

# traceback example

mean(x)
# Error in mean(x) : object 'x' not found

traceback()
# 1: mean(x)

