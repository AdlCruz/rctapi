#' Get All Study Fields Names
#'
#' This function returns a character vector with all 322 (May 2020) queriable field.
#' Uses glue.
#'  names
#' @keywords fields argument
#' @export
#' @examples
#' study_fields_vector()

study_fields_vector <- function() {

  # returns study fields character vector
  fields_list <- json_handler(glue::glue("{b_url}{b_info}study_fields_list?{fmt_json}"))
  fields_character <- (fields_list$Fields)

  return(fields_character)
}
