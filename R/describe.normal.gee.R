#' Describe the \code{normal.gee} model to Zelig
#' @usage \method{describe}{normal.gee}(...)
#' @S3method describe normal.gee
#' @param ... ignored parameters
#' @return a list of important information
#' @author Patrick Lam
describe.normal.gee <- function(...) {
  list(
       authors = "Patrick Lam",
       text = "General Estimating Equation for Normal Regression",
       year = 2011
       )
}
