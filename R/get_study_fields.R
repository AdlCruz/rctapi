#' Get Over 20 Study Fields
#'
#' This function takes a search expression and character vector with any number
#' of field names and returns one dataframe with the merged and parsed csv API response.
#' @param search_expr A string following the querying guidelines on clinicaltrials.gov.
#' @param fields A character vector with any field names found on clinicaltrials.gov.
#' @param max_studies A number indicating how many studies of all the ones that 
#' match the search expression will be returned.
#' @keywords get many fields
#' @export
#' @examples
#' get_study_fields(expr = 'heart attack',fields = basic_info_and_results_fields())

get_study_fields <- function(search_expr, 
                             fields, # for all fields use study_fields_vector() 
                                     # or all_fields_vector
                             max_studies = 30) {
  fields_matrix <- split_vector_unique(fields,20)

  for (i in names(fields_matrix)) {
    # subset into search list
    fields_character_vector <- (fields_matrix[[i]])
    fields_list <- as.list(na.omit(fields_character_vector))

    # if i is name of the first column of the matrix create first df, then continue
    if (i == colnames(fields_matrix[1])) {
      df_merge <- get_fields(search_expr, fields = fields_list, max_studies = max_studies)
    }
    else {
      next_df <- get_fields(search_expr, fields = fields_list, max_studies = max_studies)
      df_merge <- cbind(df_merge,next_df,stringsAsFactors = FALSE)
      
    }
  }
  df_merge <- df_merge[, !duplicated(colnames(df_merge))]
  return(df_merge)
}

