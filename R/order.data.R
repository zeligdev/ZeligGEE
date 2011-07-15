#' Order Clusters and data.frame's
order.data <- function (data, column) {
  col <- data[, column]
  list(data=data[order(col), ], id=sort(col))
}
