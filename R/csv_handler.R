#' Requests clinicaltrials.gov API and Returns Parsed csv Response
#'
#' This function handles parsing of csv format API response.Returning a read csv.
#' Uses httr, readr and stringi.
#' @param url An (almost, unclear how strict this is) ASCII formatted string used
#' to query the clinicaltrials.gov API
#' @keywords csv format response
#' @export
#' @examples
#' csv_handler(url)
#'
csv_handler <- function(url) {

  # decodes csv content in response, returns dataframe with study fields
  response <- request_ct(url)
  con <- httr::content(response,"text")
  split_hdrs <- stringi::stri_split(con,regex = "\\n\\s*\\n")
  split_lines  <- stringi::stri_split_regex(split_hdrs[[1]],"\\n")
  # print(split_lines)
  # head(split_lines)
  records  <- readr::read_csv(split_lines[[2]])
  return(records)
}
