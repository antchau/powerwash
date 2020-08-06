

#' Create a vector of similar variable names
#'
#' @param base_exp String. Common phrase among variables
#' @param affix Vector. Unique phrase to attach to base_exp
#' @param prefix Boolean. Append attachment to the head of base_exp
#' @param suffix Boolean. Append attachment to the tail of base_exp
#'
#' @return
#' @export
#'
#' @examples
#' generate_similar_vars(base_exp = "m1_blood", affix = 1:10, suffix = TRUE)
#' generate_similar_vars(base_exp = "m1_blood", affix = c("weight", "height"), prefix = TRUE)
#' generate_similar_vars(base_exp = c("t0_month", "t1_month"), affix = 1:12, suffix = TRUE)


generate_similar_vars <- function(base_exp, affix, prefix = NULL, suffix = NULL){

  # default to suffix if both prefix and suffix are NULL
  if(is.null(prefix) && is.null(suffix)){
    suffix <- TRUE
  }

  # Handles case when base_exp is a vector. Repeat base_exp by length of affix
  if(length(base_exp) > 1){
    base_exp <- rep(base_exp, each = length(affix))
  }

  if(!is.null(prefix)){
    return(paste0(affix, base_exp))
  }

  if(!is.null(suffix)){
    return(paste0(base_exp, affix))
  }

}
