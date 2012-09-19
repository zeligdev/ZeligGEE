#' Describe the \code{poisson.gee} model to Zelig
#' @usage \method{describe}{poisson.gee}(...)
#' @S3method describe poisson.gee
#' @param ... ignored parameters
#' @return a list of important information
#' @author Patrick Lam
describe.poisson.gee <- function(...) {
  list(
       authors = "Patrick Lam",
       text = "General Estimating Equation for Poisson Regression",
       year = 2011
       )
}
