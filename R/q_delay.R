#' Introduce Delay in Loop
#'
#' This function introduces a user specified random delay into a loop.
#' @param periods Numeric vector with two values corresponding to the lower and
#' upper bound of a uniform distribution from which the delay time is randomly sampled.
#' @keywords delay
#' @export
#' @examples
#' for (i in 1:10) {
#'   cat("Hello number", i, "\n")
#'   q_delay(periods = c(1, 1.5))
#' }

q_delay <- function(periods = c(1, 1.5)){
  tictoc <- runif(1,periods[1],periods[2])
  cat(paste0(Sys.time()), "- Waiting for ", round(tictoc,2), "seconds\n")
  Sys.sleep(tictoc)
}