#' Get Up To 20 Study Fields
#'
#' This function takes a search expression and character vector of 20 or less
#' field names and returns one dataframe with the parsed API response.
#' 
#' @param search_expr A string following the querying guidelines on clinicaltrials.gov
#' @param fields A list or character vector with up to 20 field names.
#' @param max_studies A number indicating how many studies of all the ones that
#' match the search expression will be returned.
#' @keywords get fields
#' @export
#' @examples
#' get_fields(expr = 'cardiomiopathy', fields = core_info_fields)

get_fields <- function(search_expr, fields, max_studies = 500) {

  # no duplicated fields
  fields_nodup <- fields[!duplicated(fields)]
  `%nin%` = Negate(`%in%`)
  
  # no error fields - nonexistent or misspelled 
  for (i in fields_nodup) { 
    if (i %nin% all_fields){
      print("At least one of the specified fields does not exist.\n This could be due to spelling or capitalization")
      break
      }
  }
  # url build for request part 1 - fields, search expression, and number of studies
  concat_fields <- paste(fields_nodup,collapse = "%2C")
  req <- glue::glue("study_fields?expr={search_expr}&max_rnk={max_studies}&fields={concat_fields}")
  
  # url build for request part 2 - base values and format
  url <- glue::glue("{b_url}{b_query}{req}&{fmt_csv}")
  records <- csv_handler(url)
  
  return(records)
  
}
