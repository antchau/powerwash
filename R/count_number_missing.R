


#' Count number of missing values
#'
#' \code{count_num_missing} counts the number of NAs in a vector, list,
#' or data frame (column-wise)
#'
#' @param x Vector, list, or data frame
#'
#' @return a vector containing the number of missing values for each column
#' @export
#'
#' @examples
#' x <- data.frame(a = c(1, NA, 3), b = c(4, NA, NA), c = c(7, NA, 9))
#' count_num_missing(x)

count_number_missing <- function(x){
  sum(is.na(x))
}

# # column-wise (safer)
# vapply(x, FUN = count_num_missing, 1L)
# vapply(x, FUN = count_num_missing, 1L)
#
# # row-wise
# apply(x, MARGIN = 1, FUN = count_num_missing)
# apply(x, MARGIN = 2, FUN = count_num_missing)



