#' Describe the \code{logit.gee} model to Zelig
#' @usage \method{describe}{logit.gee}(...)
#' @S3method describe logit.gee
#' @param ... ignored parameters
#' @return a list of important information
#' @author Patrick Lam
describe.logit.gee <- function(...) {
  list(
       authors = "Patrick Lam",
       text = "General Estimating Equation for Logistic Regression",
       year = 2011
       )
}
