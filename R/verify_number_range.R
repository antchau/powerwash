

#' Verify that values are within a range
#'
#' \code{verify_number_rangge} checks that all values in a vector are within
#' the specified range
#'
#' @param x Numeric vector.
#' @param lower Number. The bottom threshold
#' @param upper Number. The upper threshold
#'
#' @return Boolean. Indicates if all values in vectors are within the range.
#'
#' @examples
#' verify_number_range(c(1, 12, 10000), lower = 1, upper = 100)
#' verify_number_range(c(-50, 12, 10000), lower = 1, upper = 100)
verify_number_range <- function(x, lower, upper){


  return(all(x >= lower) && all(x <= upper))
}



