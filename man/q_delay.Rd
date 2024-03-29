% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/q_delay.R
\name{q_delay}
\alias{q_delay}
\title{Introduce Delay in Loop}
\usage{
q_delay(periods = c(1, 2))
}
\arguments{
\item{periods}{Numeric vector with two values corresponding to the lower and
upper bound of a uniform distribution from which the delay time is randomly sampled.}
}
\description{
This function introduces a user specified random delay into a loop.
Inspired by web scraping best practices.
}
\examples{
for (i in 1:10) {
  cat("Hello number", i, "\n")
  q_delay(periods = c(1, 2))
}
}
\keyword{delay}
