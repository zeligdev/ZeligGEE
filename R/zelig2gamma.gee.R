#' Interface between the Zelig Model gamma.gee and 
#' the Pre-existing Model-fitting Method
#' @param formula a formula
#' @param ... additonal parameters
#' @param data a data.frame 
#' @return a list specifying '.function'
#' @export
zelig2gamma.gee <- function (formula, id, robust, ..., R, corstr = "independence", data) {

  print(match.call())

  if (corstr == "fixed" && is.null(R))
    stop("R must be defined")

  list(
       .function = "gee",
       .hook = "robust.hook",
       .post = "clean.up.gamma.gee",

       formula = formula,
       id = eval.parent(id),
       corstr = corstr,
       family  = Gamma,
       data = data,
       ...
       )
}
