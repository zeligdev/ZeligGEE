#' Compute Quantities of Interest for the Zelig Model gamma.gee
#' @param obj a zelig object
#' @param x a setx object
#' @param x1 an optional setx object
#' @param y ...
#' @param num an integer specifying the number of simulations to compute
#' @param param a parameters object
#' @return a list of key-value pairs specifying pairing titles of quantities of interest
#'         with their simulations
#' @export
qi.gamma.gee <- function(obj, x=NULL, x1=NULL, y=NULL, num=1000, param=NULL) {

  coef <- coef(param)
  inverse <- linkinv(param)

  eta1 <- coef %*% t(x)
  ev1 <- theta1 <- matrix(inverse(eta1), nrow=num)

  # default to NA
  ev2 <- fd <- NA

  if (!is.null(x1)) {
    eta2 <- coef %*% t(x1)
    ev2 <- theta1 <- matrix(inverse(eta2), nrow=num)

    fd <- ev2 - ev1
  }

  list(
       "Expected Values (for x): E(Y|X)"   = ev1,
       "Expected Values (for x1): E(Y|X1)" = ev2,
       "First Differences: E(Y|X1) - E(Y|X)" = fd
       )
}
