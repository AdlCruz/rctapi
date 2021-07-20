#' Splits Fields Character Vector
#'
#' This function splits a character vector of any length into a matrix with n rows
#' of x elements. This is to get around the 20 field limit imposed by the API. 
#' When necessary removes duplicates and fills columns with NA values.
#' Adapted from https://stackoverflow.com/a/48930537
#'
#' @param x A character vector
#' @param n The number of elements (strings) in each column
#' @keywords split vector unique
#' @examples
#' split_vector_unique(x= sample(c("April", "is", "the","cruellest","month","breeding",
#' "lilacs"), size = 40, replace = TRUE), n =5)
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
