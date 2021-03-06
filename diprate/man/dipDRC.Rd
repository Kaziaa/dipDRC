% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dipDRC.r
\name{dipDRC}
\alias{dipDRC}
\title{dipDRC: main function for finding DIP rates from structured data.frame}
\usage{
dipDRC(
  dtf,
  xName = "time",
  yName = "cell.count",
  var = c("cell.line", "drug1", "drug1.conc", "expt.id"),
  print.dip = FALSE,
  norm = FALSE,
  plotIt = TRUE,
  toFile = FALSE,
  fct = LL.4(),
  uidName = "uid",
  ...
)
}
\arguments{
\item{dtf}{data.frame of data to fit with \code{drm}}

\item{xName}{character of dependent variable name (x-axis); default is \emph{time}}

\item{yName}{character of independent variable name (y-axis); default is \emph{cell.count}}

\item{var}{character vector of column names used to identify different conditions;
default is \emph{c('cell.line','drug1','drug1.conc','expt.id')}}

\item{print.dip}{logical whether to print DIP rate value; default is \emph{FALSE}}

\item{norm}{logical whether to normalize DIP rate values to mean of control values; 
default is \emph{FALSE}}

\item{plotIt}{logical whether to produce plot of dose-response curve; default is
\emph{TRUE}}

\item{toFile}{logical whether to send graphic output to file; default is \emph{FALSE}}

\item{fct}{function to use in dose-response model; default is \code{drc::LL.4()}}

\item{uidname}{character defining column name to use as unique ID; default is \emph{uid}}
}
\value{
drm object of class \emph{drc} (drc model fit to data)
}
\description{
Function uses data.frame of cell counts over time and associates other variables with
 resultant DIP rate estimates.
}
