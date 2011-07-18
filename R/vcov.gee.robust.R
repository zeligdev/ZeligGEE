#' Covariance Matrix for Robust GEE
#' @usage \method{vcov}{gee.robust}(object, ...)
#' @param object a \code{gee.robust} object
#' @param ... ignored parameters
#' @return the robust variance-covariance matrix
#' @S3method vcov gee.robust
#' @author Skyler
vcov.gee.robust <- function(object, ...)
  object$robust.variance
