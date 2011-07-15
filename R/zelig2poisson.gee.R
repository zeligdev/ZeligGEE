#' Interface between the Zelig Model poisson.gee and 
#' the Pre-existing Model-fitting Method
#' @param formula a formula
#' @param ... additonal parameters
#' @param data a data.frame 
#' @return a list specifying '.function'
#' @export
zelig2poisson.gee <- function (formula, id, robust, ..., R, corstr = "independence", data) {

  if (corstr == "fixed" && is.null(R))
    stop("R must be defined")

  # if id is a valid column-name in data, then we just need to extract the
  # column and re-order the data.frame and cluster information
  if (is.character(id) && length(id) == 1 && id %in% colnames(data)) {
    id <- data[, id]
    data <- data[order(id), ]
    id <- sort(id)
  }

  list(
       .function = "gee",
       .hook = "robust.hook",

       formula = formula,
       id = id,
       corstr = corstr,
       family  = poisson(),
       data = data,
       ...
       )
}
