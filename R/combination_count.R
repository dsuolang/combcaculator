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
  if (!identical(N, round(N)) || !identical(n, round(n))) {
    stop("input values must be whole numbers")
  }

  if (n < 0 || N < 0 || n > N) {
    stop("invalid input")
  }

  if (n == 0 || n == N) {
    return(1)
  }

  k <- min(n, N - n)

  # Calculate factorials using vectorized operations
  factorial_N <- prod((N - k + 1):N)
  factorial_k <- prod(1:k)

  return(factorial_N / factorial_k)
}
