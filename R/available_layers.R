
#' Get available multiomic layers
#'
#' @return Get the list of available multiomic layers
#' @examples
#' available_layers()
#' @export
available_layers <- function() {
  base_url <- "http://172.15.1.21:8000"
  res <- GET(url = paste0(base_url, "/get_vec"))
  fromJSON(res)
}

#' Available Datasets
#'
#' A function in R that retrieves a summary of SNP-gene-tissue associations from the Genotype-Tissue Expression GTEx dataset.
#' @param layer_vector  a vector of the layers
#' @return Summary Statistics of the SNP,Gene and Tissue
#' @examples 
#' layer_dataset <- c("annotation_layers","epigenomic","G_E","genomic","transcriptomic")
#' available_datasets(layer_dataset)
#' @export
available_datasets <- function() {
  base_url <- "http://172.15.1.21:8000"
  res <- GET(url = paste0(base_url, "/available_datasets_server"), query = list(layer_dataset = layer_dataset))
  fromJSON(res)
}