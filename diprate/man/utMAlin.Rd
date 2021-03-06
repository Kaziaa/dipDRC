% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utMA.r
\name{utMAlin}
\alias{utMAlin}
\title{Unequal time-step moving average - linear}
\usage{
utMAlin(values, times, tau = 24)
}
\arguments{
\item{values}{numeric vector}

\item{times}{numeric or difftime vector of same length as \emph{values}}

\item{tau}{numeric of length 1 defining the window size}
}
\value{
numeric vector of same length as \emph{values}
}
\description{
Function to calculate time-averaged values over a moving window of specified size
Modified from code found in: "Algorithms for Unevenly Spaced Time Series: Moving 
 Averages and Other Rolling Operators" by Andreas Eckner. 
 Default tau assumes times are in hours and observations occur approximately 3/day
}
\details{
The algorithm weight the observations (e.g. cell counts) within a moving window of
 time, with weighting of the observations based on different algorithms. The
 weighting algorithm in the utMAlin function is based on the use of \emph{trapezoids}
 as the area of observations over time window that is added and subtracted from the
 time window as it progresses through the range of times.
}
