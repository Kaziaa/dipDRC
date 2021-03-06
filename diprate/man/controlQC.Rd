% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dipQC.r
\name{controlQC}
\alias{controlQC}
\title{Quality control of control wells}
\usage{
controlQC(
  times,
  counts,
  ids,
  col.names = c("time", "cell.counts", "uid"),
  plotIt = TRUE,
  ctrl.type = "mean",
  cell.line.name = "",
  ret.type = "counts",
  ...
)
}
\arguments{
\item{times}{numeric of times when \emph{counts} were obtained}

\item{counts}{integer of cell (nuclei) counts}

\item{ids}{character of unique identifiers for each set of \emph{times} and \emph{counts}}

\item{col.names}{character of names sent as arguments to \code{filterCtrlData}; default is 
\code{c('time','cell.counts','uid')}}

\item{plotIt}{logical for whether to plot data; default is \code{TRUE}}

\item{ctrl.type}{character of function to perform on control data; acceptable values include
\emph{sum}, \emph{max}, and default is \code{mean}.}

\item{cell.line.name}{character of name of cell line from which control data were obtained;
default is an empty character}

\item{ret.type}{character of type of values to return; default is \emph{counts}, which returns
a \code{data.frame} of \emph{times}, \emph{counts}, and \emph{ids} for control data that passes QC; 
if value is \emph{all}, returns \code{list} of \emph{control.counts}, a \code{data.frame}
in same format as for \emph{counts}, \emph{control.type} a character of \emph{ctrl.type}
argument, \emph{passed.qc} list of arguments passed to \code{findCtrlDIP}, \emph{dip}
numeric of estimated proliferation rates, and \emph{model} \code{lm} model fit to data.}
}
\value{
data.frame with a single set of time points and the estimated cell counts (if \code{ret.type} != 'all')

list of integer \code{control.counts}, character \code{control.type}, logical \code{passed.qc},
 numeric \code{dip rate}, linear model \code{model} (if \code{ret.type} == 'all')
}
\description{
Function to identify \emph{ids} for which \emph{counts} are exponential over range of \emph{times}.
 Wrapper for \code{filterCtrlData} and \code{findCtrlDIP} functions and other filtering.
First, data are passed to \code{filterCtrlData} which finds linear model fits to data for each
 unique \emph{ids} with at least 5 data points and with minimum adjusted R-squared value 
 greater than 0.99 (default) or the value of the argument \emph{min.ar2}.
Data passing QC can also be plotted (default). Data are expected to be from a single cell line.
 Undefined arguments will be passed to plot function.
}
