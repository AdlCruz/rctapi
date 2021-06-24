#' Get Content of API Response
#'
#' Helper function for response_content parameter == TRUE. Returns decoded content of query respone. 
#' Limited to 20 fields.
#' @param search_expr A string following the querying guidelines at
#' https://clinicaltrials.gov/api/gui/ref/syntax and https://clinicaltrials.gov/api/gui/ref/expr
#' @param fields A character vector with field names. All field names available at
#' https://clinicaltrials.gov/api/info/study_fields_list?fmt=JSON, with "all_fields",
#' or with "get_vector_all_study_fields()"
#' @param max_studies A number indicating how many studies of all the ones that
#' match the search expression will be returned.
#' @keywords get raw json max 20 fields

get_response_content <- function (search_expr = search_expr, fields = fields, max_studies = max_studies){
    
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
    # limit of 20 fields
    fields_nodup <- fields_nodup[1:20]
    
    # url build for request part 1 - fields, search expression, and number of studies
    concat_fields <- paste(fields_nodup,collapse = "%2C")
    req <- glue::glue("study_fields?expr={search_expr}&max_rnk={max_studies}&fields={concat_fields}")
    url <- glue::glue("{b_url}{b_query}{req}&{fmt_json}")
    response <- request_ct(url)
    dec_content <- jsonlite::fromJSON(httr::content(response, "text"), simplifyVector = TRUE)
    
    return(dec_content)
}