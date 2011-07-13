#' Interface between the Zelig Model logit.gee and 
#' the Pre-existing Model-fitting Method
#' @param formula a formula
#' @param ... additonal parameters
#' @param data a data.frame 
#' @return a list specifying '.function'
#' @export
zelig2logit.gee <- function (formula, ..., data) {
  list(
       .function = "",
       formula = formula,
       data = data
       )
}
