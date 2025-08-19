
#' Get available multiomic layers
#'
#' @return Get the list of available multiomic layers
#' @examples
#' available_layers()
#' @export
available_layers <- function() {
  vec <- fromJSON("http://172.15.1.21:8000/get_vec")
  vec
}
