#' Covariance Matrix for Robust GEE
#' @param object a \code{gee.robust} object
#' @param ... ignored parameters
#' @return the robust variance-covariance matrix
#' @S3method vcov gee.robust
#' @author Skyler
vcov.gee.robust <- function(object, ...)
  object$robust.variance
