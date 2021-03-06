% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataExtractFxns.r
\name{makeIncTaskArgs}
\alias{makeIncTaskArgs}
\title{Make Celery/RabbitMQ task arguments for py-seg image processing of Incucyte image files}
\usage{
makeIncTaskArgs(datadirs, verbose = TRUE)
}
\arguments{
\item{fn}{\code{character} of file name}
}
\value{
\code{data.frame} of \emph{file_name}, \emph{expt_id} (experiment ID), 
 \emph{well}, \emph{image_pos} (image position in well), \emph{image_time}
 (time image was acquired).

This function currently does not take other arguments to generate task arguments

Only image types containing extensions of jpg, jpeg, tif, tiff or png are detected
}
\description{
Make Celery/RabbitMQ task arguments for py-seg image processing of Incucyte image files
}
