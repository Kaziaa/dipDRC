% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataExtractFxns.r
\name{matchNum}
\alias{matchNum}
\title{Matching to integers to characters that may or may not have an initial '0' (e.g. '01' or '1')}
\usage{
matchNum(num, comp)
}
\arguments{
\item{num}{integer}

\item{comp}{character}
}
\description{
Matching to integers to characters that may or may not have an initial '0' (e.g. '01' or '1')
}
\examples{
matchNum(1,c('01','1','010','2','02'))
}
