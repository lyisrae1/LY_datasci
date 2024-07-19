# Dates and Times Practice

# Dates are represented by the date class and can be coerced from a chracter string using the as.Date() function

x <- as.Date("1970-01-01")

x
[1] "1970-01-01"
unclass(x)
[1] 0

# The reason why unclassing x gets a 0 is because this is the very first date registered in R
# R counts the number of days from this date to get a new one

unclass(as.Date("1970-01-02"))
[1] 1

# This is 1 day from 1970-01-01

# Times examples
x <- Sys.time()

x
[1] "2024-07-13 15:35:56 EDT"

unclass(x)

[1] 1720899356
# How many seconds it has been since 1970-01-01

p <- as.POSIXlt(x)

names(unclass(p))
[1] "sec"    "min"    "hour"   "mday"   "mon"    "year"   "wday"   "yday"   "isdst"  "zone"   "gmtoff"

p$sec
[1] 56.15084

# We used sys.time() to get the time that was on the computer system R is running on
# Then we looked at the definitions of time in function, and got their names
# Finally we asked R to give us what second was function run on
# You can only get seconds out of POSIXlt(), not POSIXct(); Xct() is an atomic vector

# Finally there is strptime(); lets you change the format of how your dates are arranged

# Example

datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")

x <- strptime(datestring, "%B %d, %Y %H:%M")

x

[1] "2012-01-10 10:40:00 EST" "2011-12-09 09:10:00 EST"

class(x)
[1] "POSIXlt" "POSIXt"

# %B = month, %d = day of the month, %Y = year, %H:%M = hours and minutes

# Finally, you can add and subtract dates and times; you can even do comparisons on them
# Example 1

x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d, %b, %Y %H:%M")

x-y 

Error in x - y : non-numeric argument to binary operator
In addition: Warning message:
  Incompatible methods ("-.Date", "-.POSIXt") for "-"

# You get this error since x and y are not the same type of format 
#( X which is a date object, then Y which is a POSIXlt object)
# Need to convert x to Xlt()

x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M")

x <- (as.POSIXlt(x))

x-y 

#Time difference of 356.3097 days

# Operations even keep track of leap years, leap days, leap seconds, daylight savings, and timezones 

x <- as.Date("2012-03-01"); y <- as.Date("2012-02-28")

x-y 

#Time difference of 2 days

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 06:00:00", tz = "GMT")

y-x
#Time difference of 1 hours
