% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/random_R_functions.R
\name{csv_only}
\alias{csv_only}
\title{CSV Import Function}
\usage{
csv_only(df = FALSE)
}
\arguments{
\item{df}{Do you want individual dataframes? Defaults to FALSE}
}
\description{
This function allows you to import only csv files in the parent directory.
}
\examples{
csv_only() # All csv files are located in the 'csv' list object.
csv_only(df = TRUE) # All csv files are now individual objects.
csv_only()
}
\keyword{csv}
