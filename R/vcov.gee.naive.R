#' Covariance Matrix for Naive GEE
#' @usage \method{vcov}{gee.naive}(object, ...)
#' @param object a \code{gee.naive} object
#' @param ... ignored parameters
#' @return the naive variance-covariance matrix
#' @S3method vcov gee.naive
#' @author Skyler
vcov.gee.naive <- function(object, ...)
  object$naive.variance
