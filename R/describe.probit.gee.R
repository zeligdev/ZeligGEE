#' Describe the \code{probit.gee} model to Zelig
#' @usage \method{describe}{probit.gee}(...)
#' @S3method describe probit.gee
#' @param ... ignored parameters
#' @return a list of important information
#' @author Patrick Lam
describe.probit.gee <- function(...) {
  list(
       authors = "Patrick Lam",
       text = "General Estimating Equation for Poisson Regression",
       year = 2011
       )
}
