#' Requests clinicaltrials.gov API and Returns Response
#'
#' This function requests the official clinicaltrials.gov API and returns an unparsed
#' response. Uses httr.
#' @param url An (almost, unclear how strict this is) ASCII formatted string used
#'to query the clinicaltrials.gov API
#' @keywords request url response
#' @export
#' @examples
#' request_ct(url)

request_ct <- function(url) {

  ## useful request/response error missing tryCatch
  final_url <- gsub(" ","+",url)
  response <- httr::GET(final_url)
  return(response)

}
