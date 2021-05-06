#' Get Up To 20 Study Fields
#'
#' This function takes a search expression and character vector of 20 or less
#' field names and returns one dataframe with the parsed API response. Uses glue
#' @param search_expr A string following the querying guidelines on clinicaltrials.gov
#' @param fields A list or character vector with up to 20 field names
#' @param max_studies A number indicating how many studies of all the ones that
#' match the search expression will be returned
#' @keywords A
#' @export
#' @examples
#' get_fields(expr = 'heart attack', fields = basic_info_fields())

get_fields <- function(search_expr, fields, max_studies = 500, format = "csv", just_fields = TRUE) {

  # need error for wrong fields, all fields are in study_fields_vector()
  # no errors in params expr, fields, max_studies then
  # raise an error "Format argument has to be either 'json' or 'csv'"

  concat_fields <- paste(fields,collapse = "%2C")
  req <- glue::glue("study_fields?expr={search_expr}&max_rnk={max_studies}&fields={concat_fields}")

  if (format =="csv") {
    url <- glue::glue("{b_url}{b_query}{req}&{fmt_csv}")
    records <- csv_handler(url)
    return(records)
  }

  else if (format=="json") {
    url <- glue::glue("{b_url}{b_query}{req}&{fmt_json}")
    if (just_fields == TRUE) {
      decoded_content <- json_handler(url)
      records <- decoded_content$StudyFields
      return(records)
    }

    else
      {return(json_handler(url))}
  }
}
