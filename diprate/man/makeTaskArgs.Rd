% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pysegQC.r
\name{makeTaskArgs}
\alias{makeTaskArgs}
\title{Make task arguments for image processing with py-seg}
\usage{
makeTaskArgs(fi, root_dir, defargs = list(), ...)
}
\arguments{
\item{fi}{data.frame of file information}

\item{root_dir}{character or path to root directory containing image files}

\item{defargs}{list of default arguments to include}
}
\value{
data.frame of py-seg \@task arguments
}
\description{
Make task arguments for image processing with py-seg
}
