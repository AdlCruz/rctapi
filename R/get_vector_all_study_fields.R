#' Get All Study Fields Names
#'
#' This function returns a character vector with all 322 (May 2020) queriable field.
#' Uses glue.
#'  names
#' @keywords fields argument
#' @export
#' @examples
#' get_vector_all_study_fields()

get_vector_all_study_fields <- function() {

  # returns study fields character vector
  dec_content <- jsonlite::fromJSON(httr::content(request_ct(glue::glue("{b_url}{b_info}study_fields_list?{fmt_json}")), "text"), simplifyVector = TRUE)
  
  decoded_response <- dec_content[[1]]
  
  fields_character <- (decoded_response$Fields)

  return(fields_character)
}
