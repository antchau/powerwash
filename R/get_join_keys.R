

#' Extract common columns from a list of data frames
#'
#' @param dfs A list of data frame
#'
#' @return A character vector of shared column names
#' @export
#'
#' @examples
get_join_keys <- function(dfs){
  col_names <- lapply(dfs, names)

  keys <- Reduce(intersect, col_names)

  return(keys)
}
