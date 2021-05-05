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
  fields_list <- json_handler(glue::glue("{b_url}{b_info}study_fields_list?{fmt_json}"))
  fields_character <- (fields_list$Fields)

  return(fields_character)
}
