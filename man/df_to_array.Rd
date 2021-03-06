% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/df_to_array.R
\name{df_to_array}
\alias{df_to_array}
\title{Convert a data.frame to array format.}
\usage{
df_to_array(df, indexes)
}
\arguments{
\item{df}{A data.frame with the indexes columns and a value column.}

\item{indexes}{A names list with the indexes for the array.}
}
\value{
An array with the indexes dimension.
}
\description{
Convert a data.frame to array format.
}
\examples{
library(emr)

set1 <- c("A", "B")
set2 <- c("C", "D")
set3 <- c("imp", "exp")
sets <- list(
 set1 = set1,
 set2 = set2,
 set3 = set3
)
x <- expand.grid(
  set1 = set1,
  set2 = set2,
  set3 = set3,
  stringsAsFactors = TRUE
)
x$value <- 1:8
df_to_array(x, sets[(c('set1', 'set2', 'set3'))])
}
