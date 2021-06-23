#' Requests clinicaltrials.gov API and Returns Response
#'
#' This function requests the official clinicaltrials.gov API and returns an unparsed
#' response.
#' @param url A formatted string used to query the clinicaltrials.gov API
#' @keywords request url response
#' @export
#' @examples
#' request_ct(url)

request_ct <- function(url) {
  # no spaces in url adress    
  final_url <- gsub(" ","+",url)
  response <- httr::GET(final_url)
  
  return(response)

}
