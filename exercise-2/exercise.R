# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector1, vector2) {
  return(paste0("The difference in lengths is ", abs(length(vector2) - length(vector1))))
}

# Pass two vectors of different length to your `CompareLength` function
foo <- c("Hi", "my")
bar <- c("name", "is", "Gavin.")
CompareLength(foo, bar)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector1, vector2) {
  difference <- length(vector2) - length(vector1)
  if (difference > 0) {
    return(paste0(deparse(substitute(vector2)), " is longer by ", difference, " elements"))
  } else {
    return(paste0(deparse(substitute(vector1)), " is longer by ", abs(difference), " elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(foo, bar)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer