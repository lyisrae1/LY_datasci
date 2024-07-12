## While loop Practice

##while loops test for a condition before going through with the instructions (uses logical reasoning; True or False)

## Example 1

count <- 0
while (count < 10) {
      print(count)
      count <- count + 1
}

## This example showed how the loop continued on (prints out every single value) until the value of count came to be 10

## Sometimes there can be multiple conditions/tests for the while loop to go through

## Example 1

z <- 5

while (z >= 3 && z <= 10) {
    print(z)
    coin <- rbinom(1, 1, 0.5)
    
    if(coin == 1) { ##randomized binomial
          z <- z + 1
      
    } else {
            z <- z - 1
            
    }
}

## This generated a while loop that depends on z being greater than or equal to 3, and being less than and equal to 10. 
## But it also incorporates the loop of a "coin flip" that is a 50/50 shot of being 1 or something else
## So when coin is 1, then the z value increases by 1
## But when coin is not 1, the z value decreases by 1
## The 1 and 0 value is randomized by the rbinom function
## So the while loop with continue until the value become less than three or more than 10