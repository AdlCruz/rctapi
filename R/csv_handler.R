#' Requests clinicaltrials.gov API and Returns Parsed csv Response
#'
#' This function handles parsing of csv format API response. Returns a csv dataframe.
#' @param url A formatted string passed on to the API request
#' @keywords csv format response
#' @examples
#' csv_handler(url)
#'
csv_handler <- function(url) {

  # request
  response <- request_ct(url)
  # extract content
  con <- httr::content(response,"text")
  # parse response into records
  split_hdrs <- stringi::stri_split(con,regex = "\\n\\s*\\n")
  split_lines  <- stringi::stri_split_regex(split_hdrs[[1]],"\\n")
  records  <- readr::read_csv(split_lines[[2]])
  
  return(records)
}
