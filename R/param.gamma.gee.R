#' param method for the ``gamma.gee'' Zelig model
#' Return parameter estimates for the ``gamma'' GLM in Zelig.
#' @usage \method{param}{gamma.gee}(obj, num, ...)
#' @S3method param gamma.gee
#' @param obj a `zelig' object
#' @param num an integer specifying the number of simulations to sample
#' @param ... ignored parameters
#' @return a list to be cast as a `parameters' object
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
param.gamma.gee <- function(obj, num=1000, ...) {

  # Extract means to compute maximum likelihood
  mu <- coef(obj)

  # Extract covariance matrix to compute maximum likelihood
  Sigma <- vcov(obj)

  #
  list(
       coef = mvrnorm(num, mu, Sigma),
       fam = Gamma()
       )
}
