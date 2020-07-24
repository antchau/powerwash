#' Convert a factor type to a numeric type
#' levels() gets the factor levels as characters
#' as.numeric() converts the factor levels to numeric
#' subsetting the factor column by as.numeric(levels()) gives the numeric form of the factor column
#'
#'
#' @param x a column of factor type
#'
#' @return a column of numeric type
#'
#' @examples
#' scores <- factor(x = c("1", "2"))
#' factor_to_numeric(scores)
convert_factor_to_numeric <- function(x) {
  as.numeric(levels(x))[x]
}
