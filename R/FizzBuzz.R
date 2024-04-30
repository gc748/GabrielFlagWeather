#' FizzBuzz
#'
#' The goal is to count as high as you can, but for any number evenly
#' divisible by 3, substitute "Fizz" and any number evenly divisible by 5,
#' substitute "Buzz", and if it is divisible by both, substitute "Fizz Buzz".
#'
#' @param n A positive integer
#' @return A character vector
#' @examples
#' FizzBuzz(50)
#' FizzBuzz(100)
#' @export
FizzBuzz <- function(n){
  if (is.infinite(n)){
    stop('n is infinite')
  }
  else if (n <= 0){
    stop('n is negative or 0')
  }
  else {
    output <- character(n)
    for (i in 1:n){
      if (i%%15==0){
        output[i] <- "Fizz Buzz"
      }
      else if (i%%5==0){
        output[i] <- "Buzz"
      }
      else if (i%%3==0){
        output[i] <- "Fizz"
      }
      else {
        output[i] <- i
      }
    }
  }
  return(output)
}
