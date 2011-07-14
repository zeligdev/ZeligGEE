#' Classify Fitted Object as Naive or Robust
#'
#' This hook is ran after the call to the external mode. It sets the class of
#' the object (in addition to its other designations) as 'gee.naive' or 
#' 'gee.robust' depending on the value of the \code{robust} parameter.
#'
#' @param 1
#' @param 2
#' @param 3
#' @return 4
#' @author Skyler
#' @export
robust.hook <- function(obj, Zall, Call, robust, ...) {
  
  # Assume robust, if nothing is specified
  if (missing(robust) || is.null(robust))
    robust <- TRUE

  # Invalid robust parameters should stop program
  if (!is.logical(robust))
    stop("robust must be a logical (TRUE or FALSE)")

  if (robust)
    class(obj) <- c("gee.robust", class(obj))

  else
    class(obj) <- c("gee.naive", class(obj))

  #
  obj
}
