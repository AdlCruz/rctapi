#' Get Over 20 Study Fields
#'
#' This function takes a search expression and character vector with any number
#' of field names and returns one dataframe with the merged and parsed csv API response.
#' @param search_expr A string following the querying guidelines at
#' https://clinicaltrials.gov/api/gui/ref/syntax and https://clinicaltrials.gov/api/gui/ref/expr
#' @param fields A character vector with field names. All field names available at
#' https://clinicaltrials.gov/api/info/study_fields_list?fmt=JSON, with "all_fields",
#' or with "get_vector_all_study_fields()"
#' @param max_studies A number indicating how many studies of all the ones that
#' match the search expression will be returned.
#' @param format "csv" or "json" indicating the format of the returned file.
#' @param just_fields if format = "json"  the user can choose to save the unparsed query response.
#' @keywords get many fields
#' @export
#' @examples
#' get_study_fields(expr = 'heart attack',fields = core_info_fields)

get_study_fields <- function(search_expr,
                             fields,
                             max_studies = 500,
                             format = "csv", 
                             just_fields = TRUE) {
  # limit of 20 fields per query
  fields_matrix <- split_vector_unique(fields,20)

  for (i in names(fields_matrix)) {
    # subset into search list
    fields_character_vector <- (fields_matrix[[i]])
    fields_list <- as.list(na.omit(fields_character_vector))

    # if i is name of the first column of the matrix create first df, then continue
    if (i == colnames(fields_matrix[1])) {
      df_merge <- get_fields(search_expr, fields = fields_list, max_studies = max_studies, format = format, just_fields = just_fields)
    }
    else {
      next_df <- get_fields(search_expr, fields = fields_list, max_studies = max_studies, format = format, just_fields = just_fields)
      df_merge <- cbind(df_merge,next_df,stringsAsFactors = FALSE)

    }
    # precautionary query delay
    q_delay(periods = c(0.2, 0.4))

  }
  # no duplicated columns, removes Rank columns
  df_merge <- df_merge[, !duplicated(colnames(df_merge))]
  return(df_merge)
}

