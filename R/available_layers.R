#' Available Layers
#'
#' Description
#' @return all the available datasets
#' @examples 
#' available_layers();
#' @export
available_layers <- function()
{
  base_url <- "http://172.15.1.21:8000"
  res <- GET(url = paste0(base_url, "/available_layers"), query = NULL)
  aa <- content(res, as ="text" , encoding = "UTF-8")
  return(fromJSON(aa))
}