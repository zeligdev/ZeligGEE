#' Describe the \code{gamma.gee} model to Zelig
#' @usage \method{describe}{gamma.gee}(...)
#' @S3method describe gamma.gee
#' @param ... ignored parameters
#' @return a list of important information
#' @author Patrick Lam
describe.gamma.gee <- function(...) {
  list(
       authors = "Patrick Lam",
       text = "General Estimating Equation for Gamma Regression",
       year = 2011
       )
}
