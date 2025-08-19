#' Divide x by y
#'
#' @param x A numeric value.
#' @param y A numeric value (cannot be zero).
#'
#' @return The result of x divided by y.
#' @examples
#' divide(10, 2)
#' @export
divide <- function(x, y) {
  if (any(y == 0)) stop("Division by zero detected")
  x / y
}
