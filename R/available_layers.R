#' Get available multiomic layers
#'
#' Queries the API (via GET) for the list of available multiomic layers.
#'
#' @param base_url Character scalar. Base URL of the API.
#'   Defaults to \code{"http://172.15.1.21:8000"}.
#' @param timeout Numeric scalar. Request timeout in seconds. Default: 10.
#'
#' @return A character vector of layer names.
#' @examples
#' \dontrun{
#'   available_layers()                           # localhost default
#'   available_layers("http://api.myhost.com")    # custom host
#' }
#' @export
available_layers <- function(base_url = "http://172.15.1.21:8000", timeout = 10) {
  base_url <- sub("/+$", "", base_url)  # trim trailing slashes
  url <- paste0(base_url, "/available_layers")
  
  resp <- httr::GET(url,
                    httr::accept_json(),
                    httr::timeout(timeout))
  
  httr::stop_for_status(resp)
  
  parsed <- httr::content(resp, as = "parsed", type = "application/json", encoding = "UTF-8")
  
  if (is.list(parsed) && !is.null(parsed$layers)) {
    return(as.character(unlist(parsed$layers, use.names = FALSE)))
  }
  
  as.character(parsed)
}
