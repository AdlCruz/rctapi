#' Requests clinicaltrials.gov API and Returns Parsed json Response
#'
#' This function handles parsing of json format API response.Returning a read csv.
#' Uses jsonlite.
#' @param url An (almost, unclear how strict this is) ASCII formatted string used
#'to query the clinicaltrials.gov API
#' @keywords json format response
#' @export
#' @examples
#' json_handler(url)
#'
json_handler <- function(url) {

  # decodes json content in response, returns decoded json with full response information
  ## this one needs no error because eventual error is with request, if request
  dec_content <- jsonlite::fromJSON(httr::content(request_ct(url), "text"), simplifyVector = TRUE)
  decoded_response <- dec_content[[1]]
  return(decoded_response)

}
