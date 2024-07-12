## Repeat, Next, and Break loop funtions

## Repeat loops are infinite unless they are stopped or "broken" by breaks

## Example 1

x0 <- 1
to1 <- 1e-8 

repeat
{
  x1 <- computeEstimate()
  
  if(abs(x1 - x0) < to1) {
  } else {
    x0 < x1
  }
  
  }
}

## This loop is just an example to show how to make and stop a repeat loop
## The "computeEstimate" function is not real, which means the code will not work 
## This was done on purpose since there is no guarantee that the code will actually find the break and stop

## Next is a command in R that tells it to skip something in a loop
# Example 1

for (i in 1:00) {
      if(i <= 20) {
        next
      
      }
  ## Do something else
}

## Return is also a tool that can be used to stop a loop