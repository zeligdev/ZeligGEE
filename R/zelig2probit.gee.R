#' Interface between the Zelig Model probit.gee and 
#' the Pre-existing Model-fitting Method
#' @param formula a formula
#' @param ... additonal parameters
#' @param data a data.frame 
#' @return a list specifying '.function'
#' @export
zelig2probit.gee <- function (formula, ..., data) {
  list(
       .function = "",
       formula = formula,
       data = data
       )
}
