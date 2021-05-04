#' Splits Fields Character Vector
#'
#' This function splits a character vector of any length into a matrix with n rows
#' of x elements. This is to get around the 20 field limit imposed by the API. Currently
#' duplicated strings are placed in new columns. FUnction could be simplified.
#' Created by user ngm Feb 2018 Stackoverflow
#'
#' @param x A character vector
#' @param n The number of strings in each column
#' @keywords split vector unique
#' @export
#' @examples
#' split_vector_unique(x= sample(c("April", "is", "the","cruellest","month","breeding",
#' "lilacs"), size = 60, replace = TRUE), n =20)
#'
split_vector_unique <- function(x, n) {
  # How many eventual columns?
  n_cols <- trunc(length(x)/n) + 1
  # That many eventual columns all filled with NA for now.
  vec_list <- lapply(1:(n_cols), function(x) rep(NA, n))

  # For each word...
  for(string in x) {
    for(i in 1:n_cols) {
      if(!(string %in% vec_list[[i]]) && sum(is.na(vec_list[[i]])) > 0) {
        # ...add it to a non-full column not containing that word.
        vec_list[[i]][min(which(is.na(vec_list[[i]])))] <- string
        break
      }
    }
  }
  # Make it a data frame
  data.frame(do.call(cbind, vec_list), stringsAsFactors = FALSE)

}
