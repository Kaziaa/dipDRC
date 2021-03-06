% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dipQC.r
\name{timeAtTH}
\alias{timeAtTH}
\title{Time at threshold}
\usage{
timeAtTH(times, counts, threshold = 1000)
}
\arguments{
\item{times}{numeric of times of measurements (usually relative to time of treatment)}

\item{counts}{integer of number of objects (nuclei) at each measurement time}

\item{threshold}{integer of threshold value of \emph{counts}; default = 1000}
}
\value{
numeric of first value of \emph{times} when \emph{counts} exceeds \emph{threshold}
}
\description{
Function to determine first time a threshold value is achieved
}
