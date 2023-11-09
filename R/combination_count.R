#'combination_count
#'
#'Gets the number of combination when selecting n elements from N
#'
#' @param N Input value representing the total number of elements.
#' @param n Input value representing the number of elements to be selected.
#'
#'@return the number of possible combinations when selecting n elements from N
#'
#'@examples
#'combination_count(5,2)
#'
#'@export
#'
combination_count <- function(N, n) {
  if (!identical(N, round(N)) ||
      !identical(n, round(n))) {
    # check if the input is whole number
    stop("input values must be whole numbers")
  }

  if (n < 0 ||
      N < 0 ||
      n > N) {
    # check if the input positive number, and selected elements is not greater than the total
    stop("invalid input")
  }

  if (n == 0 || n == N) {
    # if 0 element selected, return 1
    return(1)
  }

  # take the minimum of two values,optimizing the calculation of combination
  k <- min(n, N - n)

  # Calculate factorials using vectorized operations
  factorial_N <- prod((N - k + 1):N)
  factorial_k <- prod(1:k)

  # based on the formula for combinations
  return(factorial_N / factorial_k)
}
